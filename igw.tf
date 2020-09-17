resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.t4vpc.id

    tags = {
        Name = "my-igw"
    }
}