output "legacy_splat_instance_publicdns" {
  value = aws_instance.my_ec2_azd.*.public_dns
}

output "latest_splat_instance_publicdns" {
  value = aws_instance.my_ec2_azd[*].public_dns
}

output "public_ip_list" {
  value = aws_instance.my_ec2_azd
}