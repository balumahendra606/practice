resource "aws_vpc" "ntier" {
    cidr_block = var.cidr_block_vpc
    tags =  {
        "Name"= "ntiervpc"
    }
  
}
resource "aws_subnet" "mysubnets" {
    count = 3
    vpc_id = aws_vpc.ntier.id
    cidr_block = var.subnet_cidrs[count.index]
    tags = {
      "Name" = var.subnet_name_tags[count.index] 
    }
  
}
  
