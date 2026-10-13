## Estado del Proyecto

1. **Aplicación Base**: Se implementó una aplicación web ligera en Node.js (Express) con un endpoint de estado y una ruta raíz informativa.
2. **Contenedorización**: Se diseñó un `Dockerfile` optimizado y seguro mediante la estrategia de construcción multietapa (*multistage build*).
3. **Entorno Local**: Configuración inicial de herramientas locales con VS Code, Terraform y un clúster de Kubernetes en ejecución mediante Minikube.
4. **CI/CD Automatizado**: Integración con GitHub Actions para validar la compilación de la imagen de contenedor y realizar análisis estáticos de seguridad de vulnerabilidades mediante Trivy en cada cambio.
