terraform {
  backend "s3" {
    bucket = "divya-s3-demo-xyz"
    key    = "divya/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}
