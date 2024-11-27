## Security group to allow SSH Traffice
resource "aws_security_group" "practice02_vpc_ssh" {
  name        = "my_practice_02_ssh"
  description = "Dev_vpc_ssh"

  ingress = {
    description = "Allow Port SSH inbound rules"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress = {
    description = "Allow all ip and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  tags = {
    name = "vpc-ssh"
  }

}
## Security group to allow web Traffice

resource "aws_security_group" "practice02_vpc_web" {
  name        = "vpc_web"
  description = ""

}