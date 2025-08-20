variable "bucket_name" {
  type = string
  default = "bbx-sample-test-bkt"
}

output "bucket_id" {
  value = aws_s3_bucket.s3_test_bucket.id
}
