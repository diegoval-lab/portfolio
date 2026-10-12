terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23"
    }
  }
}

# Configuración del proveedor para conectarse al cluster de Minikube local
provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = "minikube"
}