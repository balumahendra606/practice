target_region = "ap-south-1"
vpc_name = "ntier_vpc"
vpc_cidr = "10.0.0.0/16"
#subnet_azs = [ "ap-south-1a", "ap-south-1a", "ap-south-1b","ap-south-1b", "ap-south-1c", "ap-south-1c" ]
public_subnets_range = [ "10.0.101.0/24", "10.0.102.0/24" ]
private_subnets_range = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24","10.0.4.0/24" ]