terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "ap-south-1"
  access_key = {Access_key}
  secret_key = {secret_key}
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "sairaj-demo7-bucket-20250515"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0af9569868786b23a"  # Amazon Linux 2 (update for your region)
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
    id = 2
  }
}
