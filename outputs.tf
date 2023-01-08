#----root/outputs.tf----
output "EC2_public_ip" {
  value       = aws_instance.ec2module.public_ip
  description = "Public IP address of the Instance"
}  