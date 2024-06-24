variable "app_name" {
  description = "Amplify app name"
  type        = string
  default   = "test-amorserv-frontend2"
}

# variable "repository" {
#   description = "My Repository URL"
#   type        = string
#   # default     = "https://github.com/Awodi-Emmanuel/test-amorserv-frontend.git"
# }

variable "branch_name" {
  description = "main branch"
  type        = string
  default = "main"
}
