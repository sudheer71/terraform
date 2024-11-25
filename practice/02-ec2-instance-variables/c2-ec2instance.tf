resource "aws_instance" "practice02" {
    ami = ""
    instance_type = var.instance_type
    key_name = var.key_name
    user_data = file("${path.module}/app1-install.sh")

    tags = {
        name = "practic-demo"
        env = "demo02"
    }

  
}