
resource "aws_instance" "dev" {
	ami		= "ami-04ad2567c9e3d7893"	
	instance_type	= "t2.micro"
	count		= var.istest == true ? 1 : 0 
}

resource "aws_instance" "prod" {
        ami             = "ami-04ad2567c9e3d7893"
        instance_type   = "t2.large"
        count           = var.istest == false ? 1 : 0
}
 
