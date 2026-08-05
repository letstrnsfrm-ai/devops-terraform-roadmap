output "frontend_container_id" {
  description = "Container ID of the frontend web app"
  value       = module.frontend_app.container_id
}

output "frontend_container_name" {
  description = "Container name of the frontend web app"
  value       = module.frontend_app.container_name
}

output "admin_container_id" {
  description = "Container ID of the admin portal"
  value       = module.admin_app.container_id
}

output "admin_container_name" {
  description = "Container name of the admin portal"
  value       = module.admin_app.container_name
}
