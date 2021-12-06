
resource "aws_instance" "myinstance" {
  ami                    = "ami-04ad2567c9e3d7893"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-08691d69defcf90f2", "sg-0888fce67fbdd244f"]
  key_name               = "terraform-key"
  subnet_id              = "subnet-0105cc34990c5e3de"

  tags =  {
    Name = "manual"
  }
}
