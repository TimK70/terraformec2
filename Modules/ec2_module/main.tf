#-----root_ec2/main.tf-----
resource "aws_instance" "EC2appserver" {
  ami                    = var.ami_id
  instance_type          = var.instance
  vpc_security_group_ids = var.web_sg
  key_name               = aws_key_pair.TFprojectkp.key_name
  user_data              = var.user_data


  tags = {
    Name = "EC2appserver"
  }
}


# resource "aws_key_pair" "TFprojectkp" {
#   key_name   = "TFprojectkp"
#   public_key = ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKrvTuntWNvbp7cDUv+0VeTYelAndyTRhYSr8ggmFBO7ml9W+KIf0cZJYUocK71FLsOuAQllBIOYbXsto0qmlhiveWPb9foYZb+dzO15CQGO1GN7FLUg1iZojJYyZyNCKE4CNZjp8miAcZMpFkSB1KqE0RPtuJJF8dS2TSW3/8mjZ91uDMKzUbemuJCRMgEcc2niMLhp0+0arEVTkMEHqUR8UW1x+2p5BvFqCoIZxqHQ9WQJ9JpoRwTB7/n4ZHS9GJmIWzCtUyA6R/ocjn03aLuEJdsnPKrrsFc5TjKzSeDfKqcYTw7puKuqea+rqlNWrbnPNnezOcSDa7+CzZi8/Z aws_terraform_ssh_key
# }

module "security" {
  source = "./Modules/security"
}
