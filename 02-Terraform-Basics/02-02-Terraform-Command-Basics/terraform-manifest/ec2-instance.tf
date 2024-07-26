# Terraform settings Block
terraform {
  required_providers {
    aws = {
        source  = "hashicorp/aws"
    }
  }
  
}
 
# Provider Block 
provider "aws" {
    profile = "default"
    reagion = "us-east-1"
} 

# Resource Block
resource "aws_instance" "demo" {
    ami             =   "ami-0427090fd1714168b"
    instance_type   =   "t2.micro"
}