resource "aws_security_group" "vpc_ssh" {
  name = "Allow ssh Port"
  description = "Allow port 22 in login to instance"

  ingress {
    
  }
}