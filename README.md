# Terraform 
- [notion](https://www.notion.so/Terraform-on-AWS-59ec2e87b4734dd384aa0a16b9bc970a?pvs=4
) 
- [install Terraform in mac](https://www.terraformpilot.com/articles/upgrading-terraform-to-a-specific-version/)
- [Master Document](https://docs.google.com/document/d/1gxrXjFOEs04j6hU5kVAcqU4UTRpJhQIHoBRnalo5ptM/edit?pli=1&tab=t.0)



# # Additional Important Note about OUTPUTS when for_each used
- The [*] and .* operatoes intended for use with lists only.
- because this resources uses for_each rather than count,ts value in other expressions is a toset or map not list 


