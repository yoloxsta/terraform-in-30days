# Dir A bucket (already exists in state)
resource "aws_s3_bucket" "example_a" {
  bucket = "shared-bucket-a-c55de110"
}

# Dir B bucket (new resource)
resource "aws_s3_bucket" "example_b" {
  bucket = "shared-bucket-b-${substr(md5(timestamp()),0,8)}"
  acl    = "private"
}

output "bucket_a_name" {
  value = aws_s3_bucket.example_a.bucket
}

output "bucket_b_name" {
  value = aws_s3_bucket.example_b.bucket
}
