variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "env_name" {
  description = "Environment name (e.g. dev, test)"
  type        = string
}
