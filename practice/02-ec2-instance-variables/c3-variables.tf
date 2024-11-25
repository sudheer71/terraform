variable "aws_region" {
  description = "In which region we need to launch the instance"
  type = string
  default = "us-east-1"
}
variable "instance_type" {
    description = "instance type"
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    description  = "Key name to WS EC2 Key Pair that need to be associated with EC2 Instance"
    type = string
    default = "terraform"
}