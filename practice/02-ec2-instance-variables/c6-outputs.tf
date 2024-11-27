# Terraform Output values 

# EC2 Instance Public IP

output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.practice02.pub
}