output "legacy_splat_instance_publicdns" {
  value = aws_instance.my_ec2_azd.*.public_dns
}

output "latest_splat_instance_publicdns" {
  value = aws_instance.my_ec2_azd[*].public_dns
}

output "public_ip_list" {
  value = [ for instance in aws_instance.my_ec2_azd : instance.public_ip]

}
output "public_ip_map" {
value = { for instance in aws_instance.my_ec2_azd : instance.id => instance.public_ip} 
}

output "public_ip_map_advanced" {
  value = {for }
}