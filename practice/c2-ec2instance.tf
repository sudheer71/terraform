resource "aws_instance" "mydemo1" {
    ami = "ami-0b4f379183e5706b9"
    #availability_zone = "us-east-1"
    instance_type = "t2.micro"
    #user_data = file("${path.module}/app1-install.sh")
    user_data = file()

    tags = {
      name = "mydemo1"
      env  = "practice"
    }
  
}