variable "region" {
    type = string
    default = "ap-south-1"
  
}
variable "vpc1_cidr" {
    type = string
    default = "10.10.0.0/16"
  
}

variable "primary_subnets_tags" {
    type = list(string)
  
}
variable "primary_azs" {
    type = list(string)
  
}
variable "vpc2_cidr" {
    type = string
    default = "198.168.0.0/16"
  
}

variable "secondary_subnet_tags" {
    type = list(string)
}
variable "secondary_azs" {
    type = list(string)
  
}


