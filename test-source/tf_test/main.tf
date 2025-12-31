terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }

  required_version = ">= 1.5.0"
}

provider "local" {}

# Example input variables
variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = null
}

variable "project_name" {
  description = "Project name"
  type        = string
}

# Example resource that uses inputs
resource "local_file" "example" {
  filename = "${path.module}/output.txt"
  content  = "Project: ${var.project_name}, Environment: ${var.environment}"
}

# Example outputs
output "file_path" {
  description = "Path of the created file"
  value       = local_file.example.filename
}

output "file_content" {
  description = "Content written to the file"
  value       = local_file.example.content
}
