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


resource "aws_security_group" "vps_web" {
    name = "Allow port for web traffice"
    description = "allow port web"

    ingress {
        description = "Allow port http inbound"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "Allow port Https Inbound"
        from_port = 443
        to_port = 443
        protocol = "-1"
        
    }
}