#vpc1
region = "ap-south-2"
vpc1_cidr = "198.168.0.0/16"
primary_azs = [ "ap-south-2a","ap-south-2a","ap-south-2b","ap-south-2b"]
primary_subnets_tags = [ "web","app","db1","db2" ]

# vpc2
vpc2_cidr = "10.10.0.0/16"
secondary_azs = [ "ap-south-2a","ap-south-2a","ap-south-2b","ap-south-2b"]
secondary_subnet_tags = [ "web","app","db1","db2" ]



