# Terraform 
- [notion](https://www.notion.so/Terraform-on-AWS-59ec2e87b4734dd384aa0a16b9bc970a?pvs=4
) 
- [install Terraform in mac](https://www.terraformpilot.com/articles/upgrading-terraform-to-a-specific-version/)
- [Master Document](https://docs.google.com/document/d/1gxrXjFOEs04j6hU5kVAcqU4UTRpJhQIHoBRnalo5ptM/edit?pli=1&tab=t.0)




# Additional Important Note about OUTPUTS when for_each used

- The [*] and .* operators are intended for use with lists only. 
2. Because this resource uses for_each rather than count, 
its value in other expressions is a toset or a map, not a list.
3. With that said, we can use Function "toset" and loop with "for" 
to get the output for a list
4. For maps, we can directly use for loop to get the output and if we 
want to handle type conversion we can use "tomap" function too 

