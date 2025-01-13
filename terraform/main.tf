terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
  profile = var.profile
}

resource "aws_instance" "dcf_ec2" {
  ami = "ami-0584590e5f0e97daa" # Debian 12
  instance_type = "t2.micro"
}