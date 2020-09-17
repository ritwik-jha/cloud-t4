resource "aws_instance" "wp-ins" {
	
	ami = "ami-0732b62d310b80e97"
	instance_type = "t2.micro"

    subnet_id = aws_subnet.snpub.id

	
	
    security_groups = [aws_security_group.sg1.id] 
	key_name = "mykey4"

    tags = {
		Name = "wordpress-instance"
		}

}