resource "aws_instance" "mydemo_ec2" {
    ami = "a0b4fmi-379183e5706b9"
    instance_type = "t2.micro"
    user_data = file("${}")


  
}