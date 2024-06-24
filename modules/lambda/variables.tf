variable "func_name" {
  description = "Lambda function name"
  type        = string
  # default     = "my_lambda_function" 
}

variable "role" {
  description = "IAM role ARN for Lambda"
  type        = string
}

variable "handler" {
  description = "Lambda function handler"
  type        = string
}

variable "runtime" {
  description = "Lambda runtime environment"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for the Lambda function"
  type        = map(string)
}
