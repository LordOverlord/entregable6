provider "aws" {
  region = var.region
}

resource "aws_security_group" "entregable6" {
  name        = "entregable6"
  description = "Security group for entregable6 instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "entregable6" {
  ami           = "ami-0c55b159cbfafe1f0" # Example AMI ID for Amazon Linux 2
  instance_type = var.instance_type
  key_name      = var.key_name # Replace with your key name
  security_groups = [aws_security_group.entregable6.name]
  tags = {
    Name = "entregable6"
  }
  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y apache2
              systemctl start apache2
              systemctl enable apache2
              mkdir -p /var/www/html/entregable6
              EOF
}

output "instance_id" {
  value = aws_instance.entregable6.id
}

output "instance_public_ip" {
  value = aws_instance.entregable6.public_ip
}
