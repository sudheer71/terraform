resource "aws_instance" "myP_05_l_M" {
    ami = var.aws_ami.rkalluru
    key_name = ""
    user_data = ""
    instance_type = ""
    vpc_security_group_ids = ""

    tags = {
      Name = "myP_05_l_M_Demo"
    }

    
  
}