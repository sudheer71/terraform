data "aws_ami" "myamazon_ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = [ "973714476881" ]
  
  filter {
    name = "name"
  }
}