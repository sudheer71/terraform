data "aws_ami" "amazonlinux" {
  most_recent = true
  owners      = ["amazon"]
  name_regex       = "^myami-[0-9]{3}"
  filter {
    name   = "name"
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