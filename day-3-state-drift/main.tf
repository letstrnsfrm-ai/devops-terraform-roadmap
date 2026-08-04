terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

resource "docker_container" "drift_demo" {
  image = docker_image.nginx.image_id
  name  = "qe_drift_demo_container"

  ports {
    internal = 80
    external = 8085
  }
}
