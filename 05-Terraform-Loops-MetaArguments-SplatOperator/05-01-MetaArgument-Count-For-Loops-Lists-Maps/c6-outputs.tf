# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/
/*
This out values will not work for this configurations because this configuration is havin meta aurgment `count`

output "public_ip" {
  description = "public ip"
  value = aws_instance.my_05_l_m.public_ip
}

output "public_dns" {
  description = "public dns"
  value = aws_instance.my_05_l_m.public_dns
}
*/

# 1. For Loop with List
output "public_ip_list" {
  value       = [for instance in aws_instance.my_05_l_m : instance.public_ip]
  description = "For loop with list"

}
# 2. Output - For Loop with Map
output "public_ip_map" {
  value = { for instance in aws_aws_instance.my_05_l_m : instance.id => instance.public_ip }

}
# 3. Output - For Loop with Map Advanced
output "public_ip_map_advanced" {
  value = { for c, instance in aws_aws_instance.my_05_l_m : c => instance.public_ip }

}

# 4. Output Legacy Splat Operator (Legacy) - Returns the List

output "legacy_splat_instance_publicdns" {
  value       = aws_instance.my_05_l_m.*.public_dns
  description = "public DNS using the legacy splat opperators"
}

# 5. Output Latest Generalized Splat Operator - Returns the List
output "latest_splat_instance_publicdns" {
  value       = aws_instance.my_05_l_m[*].public_dns
  description = "Public DNS using the latest Splate Opperators"
}

