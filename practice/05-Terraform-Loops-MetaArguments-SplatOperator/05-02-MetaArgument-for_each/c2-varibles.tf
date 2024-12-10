variable "reagion" {
  description = "reagion"
  type = string
  default = "us-east-1"
}

variable "key_name" {
  description = "instance key name"
  type = string
  default = "terraform"
}

variable "instance_type" {  
  description = "instance type"
  type = string
  default = "t2.micro"
}

variable "instance_type_list" {
  description = "ec2 instance"
  type = list(string)
  default = [ "t2.micro","t3.small", ]
}