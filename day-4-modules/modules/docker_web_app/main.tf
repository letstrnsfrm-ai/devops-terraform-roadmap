terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

resource "docker_image" "app" {
  name         = var.image_name
  keep_locally = false
}

resource "docker_container" "app" {
  name  = var.app_name
  image = docker_image.app.image_id

  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
