# outputs.tf

output "account_id" {
  description = "AWS Account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS Region"
  value       = data.aws_region.current.name
}

output "availability_zones" {
  description = "Available AZs"
  value       = data.aws_availability_zones.available.names
}

output "ami_id" {
  description = "AMI ID used for instance"
  value       = data.aws_ami.amazon_linux.id
}

output "ami_name" {
  description = "AMI name"
  value       = data.aws_ami.amazon_linux.name
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "subnet_ids" {
  description = "Subnet IDs"
  value       = aws_subnet.public[*].id
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.web.public_ip
}

output "website_url" {
  description = "Website URL"
  value       = "http://${aws_instance.web.public_ip}"
}
