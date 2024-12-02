resource "aws_security_group" "vpc_ssh" {
    name = "Allow SSH Port"
     description = "Allow port SSH"
  ingress {
    description = "allow SSH port inbound rules"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow All Ip and ports outbound"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws" "name" {
  
}