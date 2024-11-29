output "instance_publicip" {
  value       = aws_instance.my-ec2-demo.public_ip
  description = "public_ip"
}

output "instance_publicdns" {
  value       = aws_instance.my-ec2-demo.public_dns
  description = "public_dne"
}