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

 resource "aws_instance" "My_ec2" {
    instance_type = "t2.micro"
    ami = "ami-01816d07b1128cd2d"
    
  }

resource "aws_instance" "second_ec2" {
    instance_type = "t2.micro"
    ami = "ami-01816d07b1128cd2d"
    
  }
