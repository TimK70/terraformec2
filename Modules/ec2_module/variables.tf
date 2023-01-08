#-------ec2 Variables.tf-------

variable "ami_id" {
  type    = string
  default = "ami-0ceecbb0f30a902a6"
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "name_tag" {
  type    = string
  default = "EC2appserver"

}

#   sg =  module.security.HTTP_allow
#     tag_name =      "EC2appserver"
#  user_data =  file(".user_data.tpl")