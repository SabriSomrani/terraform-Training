
locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "ap-south-1"
}

variable "tags" {
  type    = list(any)
  default = ["firstec2", "secondec2"]
}

variable "ami" {
  type = map(any)
  default = {
    "us-east-1"  = "ami-123456789"
    "us-westt-2" = "ami-987654321"
    "ap-south-1" = "ami-852369741"
  }
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login_key"
  public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "myec2" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.loginkey.key_name
  count         = 2
  tags = {
    Name = element(var.tags, count.index)
  }
}


output "timestamp" {
  value = local.time
}
