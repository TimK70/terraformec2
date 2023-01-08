#-------ec2 Variables.tf-------

variable "ami_id" {
  type    = string
  default = "ami-0ceecbb0f30a902a6"
}

variable "instance" {
  type    = string
  default = "t2.micro"
}

variable "web_sg" {
  description = "Webserver to allow HTTP and SSH access"
}


variable "user_data" {
  description = "Bash script to install webserver."
}

variable "name_tag" {
  type    = string
  default = "EC2appserver"
}

