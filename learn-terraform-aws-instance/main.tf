terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.small"

  tags = {
    Name = "AppServer-Instance"
  }
}

resource "aws_instance" "DB_server" {
  ami           = "ami-0d74e3b27c5632a28"
  instance_type = "t2.micro"

  tags = {
    Name = "DBServer-Instance"
  }
}

output "aws_instance-app_server" {
  value       = aws_instance.app_server.availability_zone
  description = "Show availability zone of the aws app server"
}

output "aws_instance-DB_Server" {
  value       = aws_instance.DB_server.public_ip
  description = "Show the public IP address of the aws DB server"



}