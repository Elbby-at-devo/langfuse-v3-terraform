terraform {
  backend "s3" {
    region  = "us-east-1" // FIXME: This is the region where the S3 bucket is created
    key     = "terraform.tfstate"
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.78.0"
    }
  }
}

provider "aws" {
  region = var.region
}