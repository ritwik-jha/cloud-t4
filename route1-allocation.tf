resource "aws_route_table_association" "pub-sn" {
    subnet_id = aws_subnet.snpub.id
    route_table_id = aws_route_table.igroute.id
}