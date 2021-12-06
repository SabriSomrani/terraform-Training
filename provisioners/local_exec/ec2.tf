
resource "aws_instance" "myinstance" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.myinstance.private_ip} >> private_ips.txt"
  }
}
