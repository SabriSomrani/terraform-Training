resource "aws_eip" "lb" {
  instance = aws_instance.myinstance.id
  vpc      = true
}
