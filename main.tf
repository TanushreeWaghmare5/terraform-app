terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.16.0"
    }
  }
}

provider "docker" {
  # Uses the default Docker host (UNIX socket on Linux)
}

# Build the Docker image from the local "app" directory
resource "docker_image" "app" {
  name = "custom-app:latest"

  build {
    context = "${path.module}/app"
  }
}

# Run the container using the built image
resource "docker_container" "app" {
  image = docker_image.app.name
  name  = "terraform-app"

  ports {
    internal = 3000
    external = var.app_port
  }
}

