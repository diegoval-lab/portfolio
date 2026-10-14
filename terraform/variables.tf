variable "app_name" {
  type        = string
  description = "Nombre de la aplicación"
  default     = "node-app"
}

variable "namespace" {
  type        = string
  description = "Namespace de Kubernetes donde se desplegará"
  default     = "mi-portfolio-app"
}

variable "docker_image" {
  type        = string
  description = "Imagen de Docker a utilizar"
  default     = "mi-app-node:latest"
}

variable "app_port" {
  type        = number
  description = "Puerto en el que escucha la aplicación"
  default     = 3000
}