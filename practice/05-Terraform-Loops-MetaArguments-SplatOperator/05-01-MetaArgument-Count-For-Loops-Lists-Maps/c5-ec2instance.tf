resource "aws_instance" "myP_05_l_M" {
  ami       = data.aws_ami.rkalluru.id
  key_name  = var.key_name
  user_data = file("${path.module}/app1-install.sh")
  #instance_type          = var.instance_type
  #instance_type = var.instance_type_list[1] # For List
  instance_type          = var.instance_type_map["dev"] # For Map
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
  count                  = 2
  tags = {
    Name = "Count-demo-${count.index}"
  }



}