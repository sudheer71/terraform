data "aws_ami" "amazonlinux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = [ "al2023-ami-*-x86_64" ]
  }
  
  filter {
    
  }
}