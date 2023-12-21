resource "aws_vpc" "ntier_vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      "Name" = "ntiervpc" 
    }
  
}
resource "aws_subnet" "mysubnets" {
    count = length(var.subnets_cidrs)
    vpc_id = aws_vpc.ntier_vpc.id
    cidr_block = var.subnets_cidrs[count.index]
    availability_zone = var.subnets_azs[count.index]
    tags = {
        "Name"= var.subnet_name_tags[count.index]
    } 
    depends_on = [ aws_vpc.ntier_vpc ]
  
}