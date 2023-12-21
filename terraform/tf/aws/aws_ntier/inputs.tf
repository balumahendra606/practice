variable "target_region" {
    type = string
    default = "ap-south-2"
  
}
variable "vpc_name" {
    type = string
  
}
variable "vpc_cidr" {
    type = string
    default = "198.168.0.0/16"
  
}
#variable "subnet_azs" {
  #  type = list(string)
  
#}
variable "public_subnets_range" {
    type = list(string)
  
}
variable "private_subnets_range" {
    type = list(string)
  
}