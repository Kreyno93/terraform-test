provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "vockey"

  user_data = file("userdata.sh")

  tags = {
    Name = "Simple-EC2-SH"
  }
}

resource "aws_instance" "example2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = "vockey"

  user_data = templatefile("userdata.tpl", {
    variable_1 = var.variable_1,
    variable_2 = var.variable_2
  })

  tags = {
    Name = "Simple-EC2-TPL"
  }
}
