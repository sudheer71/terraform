output "public_ip_list" {
    value = aws_instance.my_ec2_azd.public_ip
  
}