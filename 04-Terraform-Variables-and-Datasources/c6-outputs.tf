output "instance_publicip" {
  value = aws_instance.my-ec2-demo.public_ip
}