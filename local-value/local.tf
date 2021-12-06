
locals {
  common_tags = {
    Name = "backend"
  }
}

resource "aws_instance" "dev-app" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db-app" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.large"
  tags          = local.common_tags
}

