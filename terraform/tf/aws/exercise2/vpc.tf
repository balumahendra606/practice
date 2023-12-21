resource "aws_vpc" "first_vpc" {
    cidr_block = var.vpc1_cidr
    tags = {
      "Name" = "primary_vpc" 
    }
  
}
resource "aws_subnet" "primary_subnets" {
    count = length(var.primary_subnets_tags)
    vpc_id = aws_vpc.first_vpc.id
    cidr_block = cidrsubnet(var.vpc1_cidr,8,count.index)
    availability_zone = var.primary_azs[count.index]
    tags = {
        "Name"= var.primary_subnets_tags[count.index]
    }
    depends_on = [ 
        aws_vpc.first_vpc
     ]
  
}
resource "aws_vpc" "second_vpc" {
    cidr_block = var.vpc2_cidr
    tags = {
      "Name" = "secondary_vpc"
    }
    depends_on = [ 
        aws_vpc.first_vpc
     ]
  
}
resource "aws_subnet" "secondary_subnets_subnets" {
    count = length(var.secondary_subnet_tags)
    vpc_id = aws_vpc.second_vpc.id
    cidr_block = cidrsubnet(var.vpc2_cidr,8,count.index)
    availability_zone = var.secondary_azs[count.index]
    tags = {
        "Name"= var.primary_subnets_tags[count.index]
    }
    depends_on = [ 
        aws_vpc.second_vpc
     ]
  
}
