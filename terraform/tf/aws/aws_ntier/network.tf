module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = [format("%sa",var.target_region),format("%sb",var.target_region)]
  private_subnets = var.private_subnets_range
  public_subnets  = var.public_subnets_range

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}