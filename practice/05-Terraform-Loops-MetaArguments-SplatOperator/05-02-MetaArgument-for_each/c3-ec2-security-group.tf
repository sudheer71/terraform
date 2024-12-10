## Security group to allow SSH Traffice
resource "aws_security_group" "my_ec2_azd_sg_ssh" {
  name        = "Allow ssh Port"
  description = "Allow port 22 in login to instance"

  ingress {
    description = "Allow ssh port inbound ruels"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    description = "Allow all ip and ports outbond"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

## Security group to allow web Traffice

resource "aws_security_group" "my_ec2_azd_sg_web" {
  name = "Allow web traffice"
  description = "Allow inbound web traffice"

  ingress {
    description = "Allow HTTP traffice"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  ingress {
    description = "Allow HTTPS traffice"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    description = "Allow all traffice to outbound traffice"
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
}