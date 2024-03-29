provider "aws" {
  region = var.region
}

provider "github" {
  owner = var.owner
}

module "webhooks" {
  source              = "../../"
  active              = false
  github_repositories = var.github_repositories
  webhook_url         = var.webhook_url
  events              = var.events

  context = module.this.context
}
