variable "region" {
  description = "The AWS region to deploy to"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t3a.micro"
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  default     = "ami-0cd716088909bba7e" # Replace with your desired AMI ID
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  default     = "entregable6"
}

variable "key_name" {
  description = "The name of the EC2 key pair"
  default     = "ubuntupg01"
}

variable "vpc_id" {
  description = "The ID of the VPC to deploy into"
  default     = "vpc-0899b361"
}