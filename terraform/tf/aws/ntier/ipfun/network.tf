resource "aws_vpc" "ntier_vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      "Name" = "ntiervpc" 
    }
  
}
resource "aws_subnet" "mysubnets" {
    count = length(var.subnet_name_tags)
    vpc_id = aws_vpc.ntier_vpc.id
    cidr_block = cidrsubnet(var.vpc_cidr_block,8,count.index)
    availability_zone = var.subnets_azs[count.index]
    tags = {
        "Name"= var.subnet_name_tags[count.index]
    } 
    depends_on = [ aws_vpc.ntier_vpc ]
  
}