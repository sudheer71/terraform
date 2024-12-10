resource "aws_security_group" "my_ec2_azd_sg" {
  name        = "Allow ssh Port"
  description = "Allow port 22 in login to instance"

  ingress {
    description = "Allow ssh port inbound"
  }
}