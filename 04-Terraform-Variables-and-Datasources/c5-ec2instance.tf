resource "aws_instance" "my-ec2-demo" {
    ami = data.aws_ami.amazonlinux.id
    key_name = var.instance_keyname
    user_data = file(${path.path.module})
    instance_type = ""
    vpc_security_group_ids = ""

    tags = {
      Name = "My-Demo-Instance"
    }
  
}