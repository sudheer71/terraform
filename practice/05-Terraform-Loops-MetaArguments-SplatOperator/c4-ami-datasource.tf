data "aws_ami" "rkalluru" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = [ "973714476881" ]
    #owners     = ["amazon"]

    ilter {
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