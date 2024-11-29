resource "aws_security_group" "vpc_ssh" {
  name = "Allow ssh Port"
  description = "Allow port 22 in login to instance"

  ingress {
    description = "Allow SSH port in inboud rules"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    description = ""
  }
}