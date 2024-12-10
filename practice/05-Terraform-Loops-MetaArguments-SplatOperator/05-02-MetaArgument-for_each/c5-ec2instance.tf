## meta_aurgment_for_each_az_d
resource "aws_instance" "my_ec2_azd" {
  ami = data.aws_ami.my_ec2_azd_ami.id
  key_name = var.key_name
  instance_type = var.instance_type_
  vpc_security_group_ids = ""
  availability_zone = ""
}