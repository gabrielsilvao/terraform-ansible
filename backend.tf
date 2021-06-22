terraform {
  required_version = "~> 0.14"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "<name-of-already-created-bucket>"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "<name-of-already-created-table>"
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}