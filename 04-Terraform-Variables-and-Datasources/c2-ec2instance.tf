resource "aws_instance" "mydemo_ec2" {
    ami = ""
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")

    tags = {
        name = "EC2-demo"
    }  
}