resource "aws_instance" "practice02" {
    ami = ""
    instance_type = var.instance_type
    key_name = va
    user_data = ""

    tags = {
        name = "practic-demo"
        env = "demo02"
    }

  
}