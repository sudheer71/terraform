data "aws_ami" "rkalluru" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = [ "973714476881" ]

  
}