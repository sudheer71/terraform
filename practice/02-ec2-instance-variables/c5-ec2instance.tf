resource "aws_instance" "practice02" {
  ami                    = data.aws_ami.myami_data.id
  key_name               = var.key_name
  user_data              = file("${path.module}/app1-install.sh")
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.practice02_vpc_ssh.id, aws_security_group.practice02_vpc_web.id]

  tags = {
    Name = "EC2-practic-demo"
    env  = "demo02"
  }


}