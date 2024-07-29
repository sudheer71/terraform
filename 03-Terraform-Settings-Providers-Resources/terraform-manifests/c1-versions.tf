## Terraform Block 
terraform {
  required_version = "~> 1.9.3"     
  # If "~> 1.9.3" allows 1.9.3 ,1.9.4, 1.9.5 Deny 1.10.0, 1.10.1,
  # If "~> 1.9"   allows 1.10.xx 1.11.xx
  # NOTE : "The right most it is allowed in this ~>"
  required_providers {
    aws = {
      
    }
  }

                                    
}