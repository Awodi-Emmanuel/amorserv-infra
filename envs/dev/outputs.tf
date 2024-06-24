# output "vpc_id" {
#   value = module.vpc.my_vpcid
# }

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

# output "lambda_function_arn" {
#   value = module.lambda.lambda_function_arn
# }

output "amplify_app_id" {
  value = module.amplify.app_id
}
