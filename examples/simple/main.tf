variable "github_token" {
  default     = ""
  description = "GitHub token used for API access. If not provided, can be sourced from the `GITHUB_TOKEN` environment variable"
}

module "webhooks" {
  source              = "../../"
  active              = false
  github_token        = "${var.github_token}"
  github_organization = "cloudposse"
  github_repositories = ["terraform-github-repository-webhooks"]
  webhook_url         = "https://docs.cloudposse.com"
}
