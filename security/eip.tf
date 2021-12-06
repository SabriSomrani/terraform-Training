
resource "aws_eip" "myeip" {
  vpc = true
}

resource "aws_eip" "myeip-1" {
  vpc      = true
  provider = aws.tunis
}

