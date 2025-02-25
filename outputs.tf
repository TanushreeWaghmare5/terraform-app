output "app_container_id" {
  description = "The ID of the running custom application container"
  value       = docker_container.app.id
}

output "app_public_port" {
  description = "The external port on the host where the app is available"
  value       = docker_container.app.ports[0].external
}

