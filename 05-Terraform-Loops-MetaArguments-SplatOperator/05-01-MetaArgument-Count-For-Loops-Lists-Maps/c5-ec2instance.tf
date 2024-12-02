resource "aws_instance" "my_05_l_m" {
ami = ""
key_name = var.key_name
user_data = file("${app1.install}")
instance_type = ""
vpc_security_group_ids = ""
  
}