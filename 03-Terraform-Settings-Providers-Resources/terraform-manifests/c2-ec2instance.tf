resource "aws_instance" "my-demo" {
    ami = "a0b4fmi-379183e5706b9"
    #availability_zone = "us-east-1"
    instance_type = "t3.micro"
    user_data = file("${path.module}/app1-install.sh")
    tags = {
        name    = "EC2-Demo"
    }
}