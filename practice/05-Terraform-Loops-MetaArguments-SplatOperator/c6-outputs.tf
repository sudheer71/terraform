 Terraform Output Values
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

output "public_ip" {
  description = "For Loop with List"
  value = [for instance in ]
}

