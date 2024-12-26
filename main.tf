terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

 resource "aws_instance" "myec2" {
  
  ami = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"

  

   tags = {
    Name = "My EC2 Instance"
  }
}
