
resource "aws_iam_user" "myusers" {
  name  = var.user_name[count.index]
  count = 3
}

output "arns" {
  value = aws_iam_user.myusers[*].name
}
