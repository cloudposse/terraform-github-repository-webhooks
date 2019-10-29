variable "region" {
  type        = string
  description = "AWS region"
}

variable "github_token" {
  type        = string
  default     = ""
  description = "GitHub token used for API access. If not provided, can be sourced from the `GITHUB_TOKEN` environment variable"
}

variable "github_organization" {
  type        = string
  description = "GitHub organization to use when creating webhooks"
}

variable "github_repositories" {
  type        = list(string)
  description = "List of repository names which should be associated with the webhook"
  default     = []
}

variable "webhook_url" {
  type        = string
  description = "Webhook URL"
}

variable "events" {
  # Full list of events available here: https://developer.github.com/v3/activity/events/types/
  type        = list(string)
  description = "A list of events which should trigger the webhook."
}
