resource "aws_vpc" "my_vpc" {
    cidr_block = "198.168.0.0/16"
    tags = {
      Name = "hydvpc2" 
    }
  
}
resource "aws_subnet" "first_subnet" {
    vpc_id = aws_vpc.my_vpc.id # implicit dependency
    cidr_block = "198.168.0.0/24"
    tags = {
      Name = "subnet1"
    }
    depends_on = [ aws_vpc.my_vpc ]

  
}
resource "aws_subnet" "second_subnet" {
    vpc_id = aws_vpc.my_vpc.id # implicit dependency
    cidr_block = "198.168.1.0/24"
    tags = {
      Name = "subnet2"
    }
    depends_on = [ aws_subnet.first_subnet ]

  
}
resource "aws_subnet" "third_subnet" {
    vpc_id = aws_vpc.my_vpc.id # implicit dependency
    cidr_block = "198.168.2.0/24"
    tags = {
      Name = "subnet3"
    }
    depends_on = [ aws_subnet.second_subnet ]

  
}
resource "aws_subnet" "fourth_subnet" {
    vpc_id = aws_vpc.my_vpc.id # implicit dependency
    cidr_block = "198.168.3.0/24"
    tags = {
      Name = "subnet4"
    }
    depends_on = [ aws_subnet.third_subnet ]

  
}
resource "aws_subnet" "fifth_subnet" {
    vpc_id = aws_vpc.my_vpc.id # implicit dependency
    cidr_block = "198.168.4.0/24"
    tags = {
      Name = "subnet5"
    }
    depends_on = [ aws_subnet.fourth_subnet ]

  
}
resource "aws_subnet" "six_subnet" {
    vpc_id = aws_vpc.my_vpc.id # implicit dependency
    cidr_block = "198.168.5.0/24"
    tags = {
      Name = "subnet6"
    }
    depends_on = [ aws_subnet.fifth_subnet ]
  
}
