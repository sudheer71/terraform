resource "aws_instance" "practice02" {
  ami           = data.aws_ami.myami_data.id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("${path.module}/app1-install.sh")

  tags = {
    name = "practic-demo"
    env  = "demo02"
  }


}