resource "aws_instance" "my-ec2-demo" {
    ami = d
    key_name = ""
    user_data = ""
    instance_type = ""
    vpc_security_group_ids = ""

    tags = {
      Name = "My-Demo-Instance"
    }
  
}