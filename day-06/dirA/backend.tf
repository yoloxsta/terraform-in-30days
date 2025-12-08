terraform {
  backend "s3" {
    bucket         = "shared-tf-state-bucket-12345678"
    key            = "shared/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
