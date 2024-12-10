output "public_ip_list" {
    value = [for instance in aws_aws_instance.my_ec2_azd : instance.public]
  
}