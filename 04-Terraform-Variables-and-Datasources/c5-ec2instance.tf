resource "aws_instance" "my-ec2-demo" {
    ami = data.aws_ami.amazonlinux.id
    key_name = var.instance_keyname
    user_data = file("${path.module}/app1-install.sh")
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.vpc_ssh ]

    tags = {
      Name = "My-Demo-Instance"
    }
  
}