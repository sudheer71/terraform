output "public_ip" {
  description = "instance public ip"
  value       = aws_instance.myP_05_l_M.public_ip

}
output "public_dns" {
  description = "instance public dns"
  value       = aws_instance.myP_05_l_M.public_dns

}

