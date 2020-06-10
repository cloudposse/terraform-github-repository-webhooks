## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| active | Indicate of the webhook should receive events | bool | `true` | no |
| enabled | Whether or not to enable this module | bool | `true` | no |
| events | A list of events which should trigger the webhook. | list(string) | `<list>` | no |
| github_anonymous | Github Anonymous API (if `true`, token must not be set as GITHUB_TOKEN or `github_token`) | bool | `false` | no |
| github_base_url | GitHub target API endpoint | string | `https://api.github.com/` | no |
| github_organization | GitHub organization to use when creating webhooks | string | - | yes |
| github_repositories | List of repository names which should be associated with the webhook | list(string) | `<list>` | no |
| github_token | GitHub token used for API access. If not provided, can be sourced from the `GITHUB_TOKEN` environment variable | string | `` | no |
| webhook_content_type | Webhook Content Type (e.g. `json`) | string | `json` | no |
| webhook_insecure_ssl | Webhook Insecure SSL (e.g. trust self-signed certificates) | bool | `false` | no |
| webhook_secret | Webhook secret | string | `` | no |
| webhook_url | Webhook URL | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| webhook_url | Webhook URL |

