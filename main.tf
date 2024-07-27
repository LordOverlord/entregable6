provider "aws" {
  region = var.region
}

resource "aws_instance" "entregable6" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

output "instance_id" {
  value = aws_instance.entregable6.id
}

output "instance_public_ip" {
  value = aws_instance.entregable6.public_ip
}
