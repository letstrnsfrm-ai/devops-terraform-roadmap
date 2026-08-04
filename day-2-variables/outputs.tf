output "container_id" {
  value       = docker_container.app_container.id
  description = "Unique ID of the provisioned Docker container"
}

output "web_url" {
  value       = "http://localhost:${var.external_port}"
  description = "HTTP URL endpoint to access the running web service"
}
