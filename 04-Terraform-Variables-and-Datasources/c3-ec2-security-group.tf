resource "aws_security_group" "vpc_ssh" {
  name = "Allow ssh port"
  description = "Dev_vpc_ssh"
  ingress {
    description = "allow port ssh inbond rules"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    description = 
  }
}