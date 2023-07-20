terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.8.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA2CLAYI6FNPMCYGYF"
  secret_key = "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"
}

# Setup webserver ec2 instance

resource "aws_instance" "webserver" {
  ami           = "ami-0d13e3e640877b0b9"
  instance_type = "t2.micro"

  tags = {
    Name = "webserver_git"
  }
}
