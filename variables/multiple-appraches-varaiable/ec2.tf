
resource "aws_instance" "myec2" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = var.instancetype
}
