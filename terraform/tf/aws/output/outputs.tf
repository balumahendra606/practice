output "vpc_id" {
    value = aws_vpc.ntier_vpc.id
  
}
output "vpc_name" {
    value = aws_vpc.ntier_vpc.tags_all
  
}
output "subnets" {
    value = length(aws_subnet.mysubnets)
  
}



