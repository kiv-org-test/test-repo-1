terraform {
  required_version = ">= 1.3.0"
}

resource "null_resource" "example" {
  count = length(var.names) == 0 ? 1 : length(var.names)

  triggers = {
    names = join(",", var.names)
    tags  = join(",", var.tags)
  }
}
