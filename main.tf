provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "vockey"

  user_data = <<-EOF
    #!/bin/bash
    echo "Instance launched successfully!" > /tmp/message.txt
    echo "Variable 1: ${var.variable_1}" >> /tmp/message.txt
    echo "Variable 2: ${var.variable_2}" >> /tmp/message.txt
  EOF

  tags = {
    Name = "Simple-EC2"
  }
}
