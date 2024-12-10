output "legacy_splat_instance_publicdns" {
  value = aws_instance.my_ec2_azd.*.public_dns
}

output "name" {
  
}