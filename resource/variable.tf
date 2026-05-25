variable "ec2_type" {
	description = "EC2 instance type"
	type        = string
}

variable "ec2_ami" {
    description = "EC2 AMI ID"
    type        = string
}

variable "ec2_key_name" {
    description = "EC2 Key Pair Name"
    type        = string
}

variable "ec2_name" {
    description = "EC2 Instance Name"
    type        = string
}

variable "key_path" {
    description = "Path to the SSH private key"
    type        = string
}

