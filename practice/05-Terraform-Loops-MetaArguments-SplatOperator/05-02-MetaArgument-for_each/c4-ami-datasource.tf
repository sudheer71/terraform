data "aws_ami" "my_ec2_azd_ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners      = ["973714476881"] #DevOps AMi
    #owners     = ["amazon"]

  filter {
    name = "name"
    #values = ["al2023-ami-*-x86_64"]
    values = ["Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}