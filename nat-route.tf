resource "aws_route_table" "natroute" {
    vpc_id = aws_vpc.t4vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.natgw.id
    }

    tags = {
        Name = "nat-route-table"
    }
}

resource "aws_route_table_association" "nat-association" {
    subnet_id = aws_subnet.snpr.id
    route_table_id = aws_route_table.natroute.id
}