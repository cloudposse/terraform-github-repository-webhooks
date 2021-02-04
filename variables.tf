variable "github_token" {
  type        = string
  default     = ""
  description = "GitHub token used for API access. If not provided, can be sourced from the `GITHUB_TOKEN` environment variable"
}

variable "github_organization" {
  type        = string
  description = "GitHub organization to use when creating webhooks"
}

variable "github_base_url" {
  type        = string
  description = "GitHub target API endpoint"
  default     = "https://api.github.com/"
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

variable "webhook_content_type" {
  type        = string
  description = "Webhook Content Type (e.g. `json`)"
  default     = "json"
}

variable "webhook_secret" {
  type        = string
  description = "Webhook secret"
  default     = ""
}

variable "webhook_insecure_ssl" {
  type        = bool
  description = "Webhook Insecure SSL (e.g. trust self-signed certificates)"
  default     = false
}

variable "active" {
  type        = bool
  description = "Indicate of the webhook should receive events"
  default     = true
}

variable "events" {
  # Full list of events available here: https://developer.github.com/v3/activity/events/types/
  type        = list(string)
  description = "A list of events which should trigger the webhook."
  default     = ["issue_comment", "pull_request", "pull_request_review", "pull_request_review_comment"]
}
