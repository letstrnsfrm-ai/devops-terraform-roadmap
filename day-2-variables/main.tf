terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "app_image" {
  name         = "nginx:${var.image_tag}"
  keep_locally = false
}

resource "docker_container" "app_container" {
  image = docker_image.app_image.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = var.external_port
  }
}
