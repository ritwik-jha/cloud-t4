resource "aws_instance" "mysql-ins" {

	ami = "ami-0732b62d310b80e97"
	instance_type = "t2.micro"

    subnet_id = aws_subnet.snpr.id

	
	
    security_groups = [aws_security_group.sg2.id] 
	key_name = "mykey4"

    tags = {
		Name = "mysql-instance"
		}

}