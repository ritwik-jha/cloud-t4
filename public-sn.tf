resource "aws_subnet" "snpub" {
    vpc_id = aws_vpc.t4vpc.id
    cidr_block = "10.20.2.0/24"
    availability_zone = "ap-south-1b"

    map_public_ip_on_launch = true

    tags = {
        Name = "public-subnet"
    }
}