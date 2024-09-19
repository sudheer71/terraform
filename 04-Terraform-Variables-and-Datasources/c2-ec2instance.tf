resource "aws_instance" "mydemo_ec2" {
    ami = data.aws_ami.my-demo-amzlinux2.id
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
    key_name = "terraform
    "

    tags = {
        name = "EC2-demo"
    }  
}