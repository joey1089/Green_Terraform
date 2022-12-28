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

# ec2 instance with web server
resource "aws_instance" "web" {
  ami           = ""
  instance_type = "t3.micro"

  tags = {
    Name = "web-server"
  }
}
