terraform {
  required_version = ">= 1.5.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "app" {
  name         = "alpine:latest"
  keep_locally = false
}

resource "docker_container" "app" {
  name    = "qe_cicd_web_app"
  image   = docker_image.app.image_id
  user    = "1001"
  command = ["sh", "-c", "while true; do echo -e 'HTTP/1.1 200 OK\\r\\nContent-Type: text/plain\\r\\n\\r\\nQE CI/CD App' | nc -l -p 8080; done"]

  ports {
    internal = 8080
    external = 8091
  }
}
