## Security group to allow SSH Traffice
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
    description = "Allow all ip and ports outbound"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Allow-ssh"
  }
}
## Security group to allow web Traffice
resource "aws_security_group" "vpc_web" {
  name = "Allow web port"
  description = "Dev-web-vpc"
  ingress 

  
}