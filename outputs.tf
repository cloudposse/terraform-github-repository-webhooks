output "webhook_url" {
  description = "Webhook URL"
  value       = join("", github_repository_webhook.default.*.url)
}
