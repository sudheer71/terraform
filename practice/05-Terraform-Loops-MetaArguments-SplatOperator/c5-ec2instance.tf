resource "aws_instance" "myP_05_l_M" {
    ami = var.aws_ami.rkalluru.id
    key_name = var.key_name
    user_data = file()
    instance_type = ""
    vpc_security_group_ids = ""

    tags = {
      Name = "myP_05_l_M_Demo"
    }

    
  
}