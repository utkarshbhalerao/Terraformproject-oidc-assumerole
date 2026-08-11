terraform {
  required_version = "~> 1.12"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Your resources below
resource "aws_instance" "demo" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"

  tags = {
    Name        = "github-oidc-demo"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

