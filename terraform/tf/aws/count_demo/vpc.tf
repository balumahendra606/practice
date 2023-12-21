resource "aws_vpc" "my_vpc" {
    count = 2
    cidr_block = "198.168.0.0/16" 
}