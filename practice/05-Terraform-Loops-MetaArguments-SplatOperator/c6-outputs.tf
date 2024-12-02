# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/


output "public_ip" {
  description = "instance public ip"
  value       = aws_instance.myP_05_l_M.public_ip

}
output "public_dns" {
  description = "instance public dns"
  value       = aws_instance.myP_05_l_M.public_dns

}

# 1. For Loop with List

output "public_ip_list" {
  description = "For Loop with List"
  value       = [for instance in aws_instance.myP_05_l_M : instance.public_ip]
}

# Output - For Loop with Map
output "public_ip_map" {
  description = "for loop with map"
  value       = { for instance in aws_instance.myP_05_l_M : instance.id => instance.public_ip }
}

# Output - For Loop with Map Advanced
output "public_ip_map_advanced" {
  description = "for loop with map advanced"
  value       = { for c, instance in aws_instance.myP_05_l_M : c => instance.public_ip }
}

# Output Legacy Splat Operator (Legacy) - Returns the List

output "legacy_splat_instance_publicdns" {
  description = "public DNS using the legacy splat opperators"
  value       = aws_instance.myP_05_l_M.*.public_dns
}

# Output Latest Generalized Splat Operator - Returns the List

output "latest_splat_instance_publicdns" {
  description = "Public DNS using the latest Splate Opperators"
  value       = aws_instance.myP_05_l_M[*].public_dns
}