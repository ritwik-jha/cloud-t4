resource "aws_route_table" "igroute" {
    vpc_id = aws_vpc.t4vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id

    }

    tags = {
        Name = "route-table-1"
    }
}