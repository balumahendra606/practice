resource "aws_vpc" "my_vpc" {
    cidr_block = "198.168.0.0/16"
    tags = {
      "Name" = "hydvpc"
    }
  
}
resource "aws_subnet" "first_subnet" {
  vpc_id     = aws_vpc.my_vpc.id #implicit dependency
  cidr_block = "198.168.0.0/24"

  tags = {
    Name = "firstsubnet"
  }
}
resource "aws_subnet" "second_subnet" {
  vpc_id     = aws_vpc.my_vpc.id 
  cidr_block = "198.168.1.0/24"

  tags = {
    Name = "secondsubnet"
  }
  depends_on = [ aws_subnet.first_subnet ] # explicit dependency
}
resource "aws_subnet" "third_subnet" {
  vpc_id     = aws_vpc.my_vpc.id #implicit dependency
  cidr_block = "198.168.2.0/24"

  tags = {
    Name = "thirdsubnet"
  }
  depends_on = [ aws_subnet.second_subnet ] # explicit dependency
}