output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.entregable6.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.entregable6.public_ip
}

output "instance_name" {
  description = "The name of the EC2 instance"
  value       = aws_instance.entregable6.tags["Name"]
}
