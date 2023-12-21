variable "region" {
    type = string
    default = "ap-south-1"
  
}
variable "vpc_cidr_block" {
    type = string
    default = "198.168.0.0/16"
  
}
variable "subnets_cidrs" {
    type = list(string)
  
}
variable "subnet_name_tags" {
    type = list(string)
  
}
variable "subnets_azs" {
    type = list(string)
  
}