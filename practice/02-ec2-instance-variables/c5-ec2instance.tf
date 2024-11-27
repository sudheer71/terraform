resource "aws_instance" "practice02" {
  ami           = data.aws_ami.myami_data.id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("${path.module}/app1-install.sh")
  vpc_security_group_ids = [ aws_security_group.practice02_vpc_ssh.id ,aws_security_group.practice02_vpc_web.]

  tags = {
    name = "practic-demo"
    env  = "demo02"
  }


}