# variable "region" {
#   description = "AWS region"
#   type        = string
#   default     = "us-east-1"
# }

# variable "vpc_cidr" {
#   description = "CIDR block for the VPC"
#   type        = string
#   default     = "10.0.0.0/16"
# }

# variable "public_subnets" {
#   description = "Public subnets"
#   type        = list(string)
#   default     = ["10.0.1.0/24", "10.0.2.0/24"]
# }

# variable "private_subnets" {
#   description = "Private subnets"
#   type        = list(string)
#   default     = ["10.0.3.0/24", "10.0.4.0/24"]
# }

variable "db_identifier" {
  description = "My rds instance identifier"
  type        = string
  default     = "rds-db"

}

variable "db_instance_class" {
  description = "My rds instance class"
  type        = string
  default     = "db.t3.micro"

}

variable "db_name" {
  description = "Name of the RDS database"
  type        = string
  default     = "mydb"
}

variable "db_user" {
  description = "Username for the RDS database"
  type        = string
  default     = "admin"
}

variable "db_pass" {
  description = "Password for the RDS database"
  type        = string
}

# variable "repository" {
#   description = "GitHub repository URL"
#   type        = string
#   default     = "https://github.com/Awodi-Emmanuel/test-amorserv-frontend.git"
# }

variable "branch_name" {
  description = "deploy from main branch"
  type        = string
  default     = "main"
}


variable "func_name" {
  description = "Lambda function"
  type        = string
  default     = "amorserv_lambda"
}

variable "handler" {
  description = "Lambda handler"
  type        = string
  default     = "index.test"
}

variable "runtime" {
  description = "Lambda runtime"
  type        = string
  default     = "nodejs18.x"
}

# iam role for lambda 
# variable "policy_name" {
#   description = "Lambda policy name"
#   type        = string
# }

# variable "policy_arn" {
#   description = "Lambda policy arn"
#   type        = string
# }

# VPC
variable "region" {
  default = "us-east-1"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "private_subnet" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  description = "Private subnets"
}

variable "public_subnet" {
  type        = list(string)
  default     = ["10.0.5.0/24", "10.0.6.0/24", "10.0.7.0/24"]
  description = "Public subnets"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}