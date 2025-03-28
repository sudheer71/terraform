data "aws_ami" "myami_data" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
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






# al2023-ami-2023.6.20241121.0-kernel-6.1-x86_64
# al2023-ami-*-x86_64


# data "aws_ami" "example" {
#   executable_users = ["self"]
#   most_recent      = true
#   name_regex       = "^myami-[0-9]{3}"
#   owners           = ["self"]

#   filter {
#     name   = "name"
#     values = ["myami-*"]
#   }

# }