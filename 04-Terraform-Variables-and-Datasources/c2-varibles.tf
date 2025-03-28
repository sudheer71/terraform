variable "instance_keyname" {
  description = "instance key_name"
  type        = string
  default     = "terraform"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "In which region we need to launch the instance"
  type        = string
  default     = "us-east-1"

}



