terraform {
  required_version = ">= 1.3.0"
}

variable "message" {
  description = "Message to print before failing"
  type        = string
  default     = "Apply phase failure test"
}

variable "exit_code" {
  description = "Exit code to force failure"
  type        = number
  default     = 1
}

resource "null_resource" "fail_on_apply" {
  provisioner "local-exec" {
    command = <<EOT
echo "${var.message}"
exit ${var.exit_code}
EOT
  }
}

output "message" {
  value = var.message
}

output "exit_code" {
  value = var.exit_code
}
