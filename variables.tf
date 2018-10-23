variable "enabled" {
  description = "Whether or not to enable this module"
  default     = "true"
}

variable "name" {
  # This is what GitHub calls it. It's must be one of these predefined types. 
  #   https://api.github.com/hooks
  description = "The type of webhook"

  default = "web"
}

variable "github_token" {
  description = "GitHub token used for API access"
}

variable "github_organization" {
  description = "GitHub organization to use when creating webhook"
}

variable "github_repositories" {
  description = "List of repository names which should be associated with the webhook"
  type        = "list"
  default     = []
}

variable "webhook_url" {
  description = "Webhook URL"
}

variable "webhook_content_type" {
  description = "Webhook Content Type (E.g. application/json)"
  default     = "application/json"
}

variable "webhook_secret" {
  description = "Webhook secret"
  default     = ""
}

variable "webhook_insecure_ssl" {
  description = "Webhook Insecure SSL (E.g. trust self-signed certificates)"
  default     = "false"
}

variable "active" {
  description = "Indicate of the webhook should receive events."
  default     = true
}

variable "events" {
  # Full list of events available here: https://developer.github.com/v3/activity/events/types/
  description = "A list of events which should trigger the webhook."
  type        = "list"
  default     = ["issue_comment", "pull_request", "pull_request_review", "pull_request_review_comment"]
}
