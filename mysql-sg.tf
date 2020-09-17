resource "aws_security_group" "sg2" {
    
    name = "sg2"
    vpc_id = aws_vpc.t4vpc.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [aws_vpc.t4vpc.cidr_block]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "mysql-sg"
    

  }


}