resource "aws_security_group" "vpc_ssh" {
  name = "Allow ssh Port"
  description = "Allow instance to port 22"
}