# backend.tf

terraform {
  backend "s3" {
    bucket         = "terraform-state-b98a326b"  # Replace with your bucket name
    key            = "demo/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
