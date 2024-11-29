variable "key_name" {
    description = "AWS instance Key Name"
    default = "terraform"
    type = string
  }




variable "instance_type" {
  description = "instance type"
  type = string
  default = "t2.micro"
}


variable "region" {
  description = "In which reasion to launch instance"
  default = us
}