resource "aws_instance" "my_05_l_m" {
ami = ""
key_name = var.key_name
user_data = file("${path.module}/app1.install.sh")
instance_type = var.instance_type[0]
vpc_security_group_ids = [  ]
  
}