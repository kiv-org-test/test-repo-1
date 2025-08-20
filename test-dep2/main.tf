terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.54.1"
    }
  }
}

resource "aws_s3_bucket" "s3_test_bucket" {
  bucket = var.bucket_name
}
