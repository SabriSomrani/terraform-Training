locals {
  resource_tags = {
    Name = "Dynamic"
  }
}


resource "aws_security_group" "mysg" {
  name = "sample-sg"
  tags = local.resource_tags

  dynamic "ingress" {
    for_each = var.ingress_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["${aws_eip.lb.private_ip}/32"]
    }

  }
}

