# aws provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
# ec2 instances of web server
resource "aws_instance" "web_server" {
  ami           = "ami-0b5eea76982371e91"
  count         = 3
  instance_type = "t2.micro"

  tags = {
    Name = "web-server"
  }
}


