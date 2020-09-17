resource "aws_vpc" "t4vpc" {
    cidr_block = "10.20.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "myvpc"
    }
}