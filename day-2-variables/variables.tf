variable "container_name" {
  type        = string
  default     = "qe_devops_web_app"
  description = "Name of the local Docker container"
}

variable "external_port" {
  type        = number
  default     = 8081
  description = "Host port bound to the web container"

  validation {
    condition     = var.external_port >= 1024 && var.external_port <= 65535
    error_message = "The external_port must be a non-privileged port between 1024 and 65535."
  }
}

variable "image_tag" {
  type        = string
  default     = "alpine"
  description = "Nginx image tag to deploy"
}
