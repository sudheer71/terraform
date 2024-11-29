## Terraform block 

terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
  
}