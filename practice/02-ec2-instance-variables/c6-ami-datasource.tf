data "aws_ami" "myami_data" {
    most_recent = true
    owners = [ "amazon" ]

    filter {
      name = "name"
      values = 
    }
}









# data "aws_ami" "example" {
#   executable_users = ["self"]
#   most_recent      = true
#   name_regex       = "^myami-[0-9]{3}"
#   owners           = ["self"]

#   filter {
#     name   = "name"
#     values = ["myami-*"]
#   }

# }