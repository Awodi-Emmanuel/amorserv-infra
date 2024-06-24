provider "aws" {
  region = var.region
}

module "vpc" {
  source         = "../../modules/vpc"
  region         = var.region
  cidr_block     = var.cidr_block
  private_subnet = var.private_subnet
  public_subnet  = var.public_subnet
  azs            = var.azs
}

# module "lambda" {
#   source    = "../../modules/lambda"
#   func_name = var.func_name
#   handler   = var.handler
#   runtime   = var.runtime
#   # role      = module.iam.lambda_role_arn
#   environment_variables = {
#     DB_HOST = module.rds.db_endpoint
#     DB_USER = var.db_user
#     DB_PASS = var.db_pass
#   }
# }

module "rds" {
  source                 = "../../modules/rds"
  db_identifier          = var.db_identifier
  db_instance_class      = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_user
  db_pass                = var.db_pass
  vpc_security_group_ids = [module.security_groups.rds_sg_id]
  subnet_ids             = module.vpc.private_subnets
}

module "security_groups" {
  source = "../../modules/security_groups"
  vpc_id = module.vpc.my_vpc
  # region         = var.region
  # cidr_block     = var.cidr_block
  # private_subnet = var.private_subnet
  # public_subnet  = var.public_subnet
  # azs            = var.azs 
}

# module "iam" {
#   source = "../../modules/iam"
# }

module "amplify" {
  source   = "../../modules/amplify"
  app_name = "my-frontend-app"
  # repository = var.repository
  branch_name = var.branch_name
}
