terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Module Instance 1: Frontend Web App
module "frontend_app" {
  source        = "./modules/docker_web_app"
  app_name      = "qe_frontend_service"
  external_port = 8086
}

# Module Instance 2: Admin Portal Service
module "admin_app" {
  source        = "./modules/docker_web_app"
  app_name      = "qe_admin_portal_service"
  external_port = 8087
}
