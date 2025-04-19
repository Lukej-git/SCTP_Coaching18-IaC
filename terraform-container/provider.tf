terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.4" # <- Replace with the version you want to use
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
