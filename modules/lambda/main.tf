data "archive_file" "lambda_data" {
  type        = "zip"
  source_dir  = "${path.module}/lambda_code"  # Adjust the path to your Lambda code directory
  output_path = "${path.module}/lambda_function_payload.zip"
}

resource "aws_lambda_function" "test_lambda" {
  function_name = var.func_name
  role          = var.role
  handler       = var.handler
  runtime       = var.runtime
  
  filename         = data.archive_file.lambda_data.output_path
  source_code_hash = data.archive_file.lambda_data.output_base64sha256
  environment {
    variables = var.environment_variables
  }

  
  tags = {
    Environment = "Dev"
  }
}

output "lambda_function_arn" {
  value = aws_lambda_function.test_lambda.arn
}
