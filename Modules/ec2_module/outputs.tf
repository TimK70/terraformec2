#-----ec2module/outputs.tf-----
output "public_ip" {
  value = aws_instance.EC2appserver[*].public_ip
}





