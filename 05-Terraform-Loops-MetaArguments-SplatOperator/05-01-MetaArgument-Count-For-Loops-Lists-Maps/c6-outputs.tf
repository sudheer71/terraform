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
value = [for instance in aws_instance.my_05_l_m: instance.public_ip]
description = "For loop with list"
  
}

output "public_ip_map" {
value = 
  
}