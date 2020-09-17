resource "aws_subnet" "snpr" {
    vpc_id = aws_vpc.t4vpc.id
    cidr_block = "10.20.1.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "private-subnet"
    }

}