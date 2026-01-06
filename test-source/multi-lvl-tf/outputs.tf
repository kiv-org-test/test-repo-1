output "vpc_id" {
  description = "VPC ID created by the network module"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "Public subnet ID from the network module"
  value       = module.network.public_subnet_id
}
