terraform {
  required_version = ">= 1.3.0"
}

resource "null_resource" "ok" {}

output "late_failure" {
  value = nonsuch_function("boom")
}
