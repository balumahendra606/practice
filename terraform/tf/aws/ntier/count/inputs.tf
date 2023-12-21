variable "region" {
    type = string
    description = "default region"
    default = "ap-south-2"
  
}
variable "cidr_block_vpc" {
    type = string
    default = "10.10.0.0/16"
  
}
variable "subnet_cidrs" {
    type = list(string)
  
}
variable "subnet_name_tags" {
    type = list(string)
  
}