variable "instance_type" {
  description = "instance type"
  type = string
  default = "t2.micro"
}
variable "key_name" {
  description = "key name"
  type = string
  default = "terraform"
}

variable "reasion" {
  description = "In whcich reasion resources to launch"
  default = "us-east-1"
  type = string

}
# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "instance type map"
  type = list(string)
  default = [ "t3.micro","t3" ]
}

# AWS EC2 Instance Type - map

variable "instance_type_map" {
    description = "instance type"
    type = map(string)
    default = {
      "dev" = "t3.micro"
      "qa" = "t3small"
      "prod" = "t3.large"
    }
}
