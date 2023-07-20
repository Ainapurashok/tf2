terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.8.0"
    }
  }
}
provider "aws" {
    region     = "ap-southeast-2"
  access_key = "AKIA3FEXSVUGAMECKLNS"
  secret_key = "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"
}

# Setup webserver ec2 instance

resource "aws_instance" "webserver" {
  ami           = "ami-0ed828ae690ef8b35"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver_git1"
  }
}
