output "container_id" {
  description = "The ID of the running Docker container"
  value       = docker_container.app.id
}

output "container_name" {
  description = "The name of the running Docker container"
  value       = docker_container.app.name
}
