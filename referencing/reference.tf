
resource "aws_eip" "lb" {
  vpc = true
}


resource "aws_instance" "myec2" {
	ami		= "ami-04ad2567c9e3d7893"	
	instance_type	= "t2.micro"
} 

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  }  

  tags = {
    Name = "allow_tls"
  }
}
