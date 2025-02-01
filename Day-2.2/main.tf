provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "divya" {
  instance_type = "t2.micro"
  ami = "ami-04b4f1a9cf54c11d0"
  subnet_id = "subnet-0e20f6f0099481c3c"
}