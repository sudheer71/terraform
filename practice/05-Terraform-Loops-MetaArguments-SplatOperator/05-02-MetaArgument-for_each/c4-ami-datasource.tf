data "aws_ami" "my_ec2_azd_ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners      = ["973714476881"] #DevOps AMi
  #owners     = ["amazon"]
}