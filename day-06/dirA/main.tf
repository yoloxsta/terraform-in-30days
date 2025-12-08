resource "aws_s3_bucket" "example_a" {
  bucket = "shared-bucket-a-${substr(md5(timestamp()),0,8)}"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.example_a.bucket
}
