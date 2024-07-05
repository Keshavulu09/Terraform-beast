provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "keshava" {
  instance_type = "t2.micro"
  ami = "ami-06c68f701d8090592" 
  subnet_id = "subnet-0aa7593ce35849dbf"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "keshav-s3-backend" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
