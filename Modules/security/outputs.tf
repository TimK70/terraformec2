#----security/outputs.tf-----
output "web_sg" {
  value       = aws_security_group.HTTP_allow.id
  description = "The public ip of the EC2appserver"
}



