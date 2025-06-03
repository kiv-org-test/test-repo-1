resource "aws_launch_template" "launch_template" {
  # This is how a change looks like - 1
  block_device_mappings {
    device_name = var.device_name

    ebs {
      volume_size = var.volume_size
      volume_type = var.volume_type
    }

  }

  image_id      = var.image_id
  instance_type = var.instance_type
  name          = var.name
}


terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.54.1"
    }
  }

}
