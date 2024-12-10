## aws Avilability zone datasource 
data "aws_availability_zones" "my_azs" {
    filter {
      name   = "opt-in-status"
    values = ["opt-in-not-required"]
    }
  
}

## meta_aurgment_for_each_az_d
resource "aws_instance" "my_ec2_azd" {
  ami = data.aws_ami.my_ec2_azd_ami.id
  key_name = var.key_name
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.my_ec2_azd_sg_ssh.id,aws_security_group.my_ec2_azd_sg_web.id ]
  for_each = toset(data.aws_availability_zones.my_azs.names)
  availability_zone = each.key
  tags = {
    Name = "for_each-demo-${}"
  }
}