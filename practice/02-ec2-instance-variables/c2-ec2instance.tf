resource "aws_instance" "practice02" {
    ami = ""
    instance_type = var.instance_type
    key_name = var.key_name
    user_data = file("${pa}")

    tags = {
        name = "practic-demo"
        env = "demo02"
    }

  
}