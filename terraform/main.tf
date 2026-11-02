resource "kubernetes_namespace" "app_ns" {
  metadata {
    name = var.namespace
    labels = {
      environment = var.environment
    }
  }
}

resource "kubernetes_deployment" "app_deployment" {
  metadata {
    name      = "${var.app_name}-deployment"
    namespace = kubernetes_namespace.app_ns.metadata[0].name
    labels = {
      environment = var.environment
    }
  }

  spec {
    replicas = var.replica_count

    selector {
      match_labels = {
        app = var.app_name
        environment = var.environment
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
          environment = var.environment
        }
      }

      spec {
        container {
          image             = var.docker_image
          image_pull_policy = "IfNotPresent" # Fundamental para Minikube local
          name              = var.app_name

          port {
            container_port = var.app_port
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app_service" {
  metadata {
    name      = "${var.app_name}-${var.environment}-service"
    namespace = kubernetes_namespace.app_ns.metadata[0].name
    labels = {
      environment = var.environment
    }
  }

  spec {
    selector = {
      app = var.app_name
      environment = var.environment
    }

    port {
      port        = 80
      target_port = var.app_port
    }

    type = "ClusterIP"
  }
}