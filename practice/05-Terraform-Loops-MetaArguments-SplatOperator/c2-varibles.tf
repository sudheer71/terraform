variable "key_name" {
  description = "AWS instance Key Name"
  default     = "terraform"
  type        = string
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "In which reasion to launch instance"
  default     = "us-east-1"
  type        = string
}

# AWS EC2 Instance Type - List
variable "instance_type" {
  description = "EC2 instance"
  type = list(string)
  default = [ "t3.micro", "t3.small", "t3.large" ]
}

# AWS EC2 Instance Type - Map
variable "instance_type" {
  description = "EC2 instance Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
    "prod"= "t3.large"
  }
}