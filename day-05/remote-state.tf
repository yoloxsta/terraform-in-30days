data "terraform_remote_state" "demo" {
  backend = "s3"

  config = {
    bucket = "terraform-state-b98a326b"
    key    = "demo/terraform.tfstate"
    region = "us-east-2"
  }
}
