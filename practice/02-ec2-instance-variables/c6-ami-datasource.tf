data "aws_ami" "my_demo_amazon_ami" {
  most_recent = true
  owners = [ "amazon" ]

  filter {
    name = 
  }
}