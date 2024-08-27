
## Terraform block 

terraform {
  required_version = "~> 1.9.3"
  required_providers {
    myaws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "myaws" {
  
}
