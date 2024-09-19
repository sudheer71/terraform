data "aws_ami" "my-demo-" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "^myami-[0-9]{3}"
  owners           = ["self"]

  filter {
    name   = "name"
    values = ["myami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}