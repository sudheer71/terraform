resource "aws_security_group" "vpc_ssh" {
  name = "Allow ssh port"
  description = "Dev_vpc_ssh"
  ingress {
    description = "allow port ssh "
  }
}