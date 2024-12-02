resource "aws_instance" "my_05_l_m" {
  ami       = data.aws_ami.myamazon_ami.id
  key_name  = var.key_name
  user_data = file("${path.module}/app1.install.sh")
  #instance_type          = var.instance_type[0] # For List 
  #instance_type          = var.instance_type_list[0]
  instance_type = var.instance_type_map[qa]


  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vps_web.id]
  count                  = 2
  tags = {
    Name = "count-${coumt.index}"
  }
}