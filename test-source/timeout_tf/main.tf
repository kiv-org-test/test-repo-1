terraform {
  required_version = ">= 1.3.0"
}

resource "null_resource" "timeout_failure" {
  provisioner "local-exec" {
    command = "sleep 300"
  }

  timeouts {
    create = "1s"
  }
}

output "reason" {
  value = "resource creation timeout"
}
