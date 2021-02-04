provider "aws" {
  region = var.region
}

module "webhooks" {
  source              = "../../"
  active              = false
  github_token        = var.github_token
  github_organization = var.github_organization
  github_repositories = var.github_repositories
  webhook_url         = var.webhook_url
  events              = var.events

  context = module.this.context
}
