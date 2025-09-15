module "vpc" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/daws-81s/terraform-aws-vpc.git?ref=main"
    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    public_subnets_cidr = var.public_subnet_cidrs
    private_subnets_cidr = var.private_subnet_cidrs
    database_subnets_cidr = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
}