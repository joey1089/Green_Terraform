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

resource "aws_instance" "web_server" {
  ami           = "ami-0d74e3b27c5632a28"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer-Instance"
  }
}