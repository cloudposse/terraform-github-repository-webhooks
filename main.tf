provider "github" {
  token        = var.github_token
  organization = var.github_organization
}

resource "github_repository_webhook" "default" {
  count = var.enabled && length(var.github_repositories) > 0 ? length(var.github_repositories) : 0

  repository = var.github_repositories[count.index]
  active     = var.active

  configuration {
    url          = var.webhook_url
    content_type = var.webhook_content_type
    secret       = var.webhook_secret
    insecure_ssl = var.webhook_insecure_ssl
  }

  events = var.events

  lifecycle {
    # This is required for idempotency
    ignore_changes = [join("", configuration.*.secret)]
  }
}
