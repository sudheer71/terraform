resource "aws_security_group" "practice02_vpc_ssh" {
    name = "my_practice_02_ssh"
    description = "Dev_vpc_ssh"
    ingress = {
        description = ""
    }
  
}