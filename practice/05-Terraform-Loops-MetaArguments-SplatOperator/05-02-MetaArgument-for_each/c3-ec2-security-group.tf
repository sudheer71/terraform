resource "aws_security_group" "my_ec2_azd_sg" {
  name        = "Allow ssh Port"
  description = "Allow port 22 in login to instance"

  ingress {
    description = "Allow ssh port inbound ruels"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}