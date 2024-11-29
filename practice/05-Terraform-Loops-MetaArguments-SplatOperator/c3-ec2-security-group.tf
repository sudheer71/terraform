## Security group to allow SSH Traffice
resource "aws_security_group" "vpc_ssh" {
  name        = "Allow ssh Port"
  description = "Allow port 22 in login to instance"

  ingress {
    description = "Allow SSH port in inboud rules"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all ip and ports outbond"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}

## Security group to allow web Traffice
resource "aws_security_group" "vpc_web" {
  name        = "Allow Web traffice"
  description = "Allow Inbound Web traffice"
}