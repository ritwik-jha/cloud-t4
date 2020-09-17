resource "aws_eip" "eip" {
    vpc = true
}

resource "aws_nat_gateway" "natgw" {
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.snpub.id

    tags = {
        Name = "natgw"
    }
}

