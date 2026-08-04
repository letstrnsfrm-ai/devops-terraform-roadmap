terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Pull Nginx Docker Image
resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

# Provision Nginx Container with Port Forwarding (8080:80)
resource "docker_container" "nginx_web" {
  image = docker_image.nginx.image_id
  name  = "qe_terraform_nginx_day1"

  ports {
    internal = 80
    external = 8080
  }
}
