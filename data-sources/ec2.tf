
resource "aws_instance" "myinstance" {
  ami           = data.aws_ami.ami_by_region.id
  instance_type = "t2.micro"
}
