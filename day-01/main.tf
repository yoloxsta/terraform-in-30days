resource "aws_s3_bucket" "my_bucket" {
  bucket = "yoloxsta-terraform-test-2025"
  acl    = "private"

  tags = {
    Name        = "Terraform Bucket"
    Environment = "Dev"
    Owner       = "Soe Tintaung"
    Project     = "Terraform-30Days"
  }
}
