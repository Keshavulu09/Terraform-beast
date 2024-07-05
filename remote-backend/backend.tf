terraform {
  backend "s3" {
    bucket         = "keshav-s3-backed"
    key            = "keshav/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
