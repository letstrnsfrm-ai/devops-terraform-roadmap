output "service_endpoints" {
  description = "Map of microservice names to local endpoint URLs"
  value = {
    for k, v in docker_container.microservices : k => "http://localhost:${v.ports[0].external}"
  }
}

output "dynamic_service_endpoint" {
  description = "Endpoint of the dynamically networked container"
  value       = "http://localhost:${docker_container.dynamic_service.ports[0].external}"
}

output "custom_network_name" {
  description = "Name of the custom Docker bridge network"
  value       = docker_network.custom_bridge.name
}
