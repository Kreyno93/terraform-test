variable "aws_region" {
  description = "The AWS region to deploy resources in."
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
}

variable "instance_type" {
  description = "The instance type for the EC2 instance."
  default     = "t2.micro"
}

variable "variable_1" {
  description = "A test variable to pass to the instance."
}

variable "variable_2" {
  description = "Another test variable to pass to the instance."
}
