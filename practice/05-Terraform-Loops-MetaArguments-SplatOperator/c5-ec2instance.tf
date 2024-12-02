resource "aws_instance" "myP_05_l_M" {
  ami                    = var.aws_ami.rkalluru.id
  key_name               = var.key_name
  user_data              = file("${path.module}/app1-install.sh")
  #instance_type          = var.instance_type
  instance_type = var.

  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]

  tags = {
    Name = "myP_05_l_M_Demo"
  }



}