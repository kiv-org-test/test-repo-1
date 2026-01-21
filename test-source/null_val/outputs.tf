output "resource_ids" {
  value = null_resource.example[*].id
}

output "input_names" {
  value = var.names
}

output "input_tags" {
  value = var.tags
}
