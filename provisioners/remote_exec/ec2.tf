
resource "aws_instance" "myinstance" {
  ami           = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"
  key_name      = "terraform-key"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("./terraform-key.pem")
    }
  }
}
