# resource "aws_iam_role" "lambda_role" {
#   name = "b-amorserv-codebuild-role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Action    = "sts:AssumeRole"
#       Effect    = "Allow",
#       Sid    = "",
#       Principal = {
#         aws = "b-amorserv-codebuild.amazonaws.com"
#       }
#     }]
#   })

#     inline_policy {
#     name = "codebuild_policy"
#     policy = jsonencode({
#       Version = "2012-10-17",
#       Statement = [
#         {
#           Effect   = "Allow",
#           Action   = [
#             "logs:*",
#             "s3:*",
#             "ssm:GetParametersByPath",
#             "lambda:UpdateFunctionCode"
#           ],
#           Resource = "*",
#         },
#       ],
#     })
#   }

# }

# resource "aws_iam_policy_attachment" "lambda_policy_attachment" {
#   name       = "lambda_policy_attachment"
#   roles      = [aws_iam_role.lambda_role.name]
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
# }

# output "lambda_role_arn" {
#   value = aws_iam_role.lambda_role.arn
# }
