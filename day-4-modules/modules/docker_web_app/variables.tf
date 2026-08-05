variable "app_name" {
  description = "Name of the Docker container"
  type        = string
}

variable "image_name" {
  description = "Docker image to pull and run"
  type        = string
  default     = "nginx:alpine"
}

variable "internal_port" {
  description = "Container-internal port the application listens on"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Host port to bind to the container's internal port"
  type        = number
}
