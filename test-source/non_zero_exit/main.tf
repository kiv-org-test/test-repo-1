terraform {
  required_version = ">= 1.3.0"
}

variable "message" {
  type    = string
  default = "Forcing apply failure via exit code"
}

resource "null_resource" "fail_on_apply" {
  provisioner "local-exec" {
    command = "echo ${var.message}; exit 1"
  }
}

output "message" {
  value = var.message
}
