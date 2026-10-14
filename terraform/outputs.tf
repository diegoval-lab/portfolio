output "namespace_created" {
  description = "Namespace donde se ha desplegado la app"
  value       = kubernetes_namespace.app_ns.metadata[0].name
}

output "service_name" {
  description = "Nombre del servicio interno de Kubernetes"
  value       = kubernetes_service.app_service.metadata[0].name
}