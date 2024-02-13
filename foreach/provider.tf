terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "njkdr-remote-state"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "njkdr-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}