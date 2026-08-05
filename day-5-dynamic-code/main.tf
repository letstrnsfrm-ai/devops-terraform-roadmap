terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# ── Map of microservices configuration ──────────────────────────────────────
locals {
  services = {
    web = {
      image = "nginx:alpine"
      port  = 8088
    }
    cache = {
      image = "redis:alpine"
      port  = 6379
    }
  }
}

# ── Image resources using for_each ───────────────────────────────────────────
resource "docker_image" "service_images" {
  for_each     = local.services
  name         = each.value.image
  keep_locally = false
}

# ── Container resources using for_each ───────────────────────────────────────
resource "docker_container" "microservices" {
  for_each = local.services
  name     = "qe_${each.key}_service"
  image    = docker_image.service_images[each.key].image_id

  ports {
    internal = each.key == "cache" ? 6379 : 80
    external = each.value.port
  }
}

# ── Custom Docker bridge network ─────────────────────────────────────────────
resource "docker_network" "custom_bridge" {
  name = "qe_custom_bridge_network"
}

# ── Standalone container with dynamic nested network block ───────────────────
resource "docker_container" "dynamic_service" {
  name  = "qe_dynamic_networked_app"
  image = docker_image.service_images["web"].image_id

  dynamic "networks_advanced" {
    for_each = [docker_network.custom_bridge.name]
    content {
      name = networks_advanced.value
    }
  }

  ports {
    internal = 80
    external = 8089
  }
}
