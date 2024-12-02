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
  
}