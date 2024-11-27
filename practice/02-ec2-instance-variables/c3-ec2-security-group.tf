resource "aws_security_group" "practice02_vpc_ssh" {
    name = "my_practice_02_ssh"
    description = "Dev_vpc_ssh"

    ingress = {
        description = "Allow Port SSH"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress = {
        description
    }
  
}