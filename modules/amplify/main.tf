resource "aws_amplify_app" "app" {
  name              = var.app_name
  # repository        = var.repository
  # branch =    "main"

  custom_rule {
    source    = "</^[^.]+$|\\.(?!(css|gif|ico|jpg|js|png|txt|xml|woff|woff2|ttf|map)$)([^.]+$)/>"
    target    = "/index.html"
    status    = "200"
  }

   environment_variables = {
    ENV = "test"
  }
}
resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.app.id
  branch_name = var.branch_name

  framework = "React"
  stage     = "DEVELOPMENT"

  # environment_variables = {
  #   REACT_APP_API_SERVER = "https://api.example.com"
  # }
}

output "app_id" {
  value = aws_amplify_app.app.id
}
