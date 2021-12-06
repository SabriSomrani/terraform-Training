
resource "aws_instance" "myinstance" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"
}
