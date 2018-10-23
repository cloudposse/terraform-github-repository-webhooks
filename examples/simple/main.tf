variable "github_token" {
  description = "GitHub token used for API access"
}

module "webhooks" {
  source              = "../../"
  active              = false
  github_token        = "${var.github_token}"
  github_organization = "cloudposse"
  github_repositories = ["terraform-github-repository-webhooks"]
  webhook_url         = "https://docs.cloudposse.com"
}
