## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.0 |
| github | >= 2.2, < 2.9 |
| local | ~> 1.2 |

## Providers

| Name | Version |
|------|---------|
| github | >= 2.2, < 2.9 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| active | Indicate of the webhook should receive events | `bool` | `true` | no |
| enabled | Whether or not to enable this module | `bool` | `true` | no |
| events | A list of events which should trigger the webhook. | `list(string)` | <pre>[<br>  "issue_comment",<br>  "pull_request",<br>  "pull_request_review",<br>  "pull_request_review_comment"<br>]</pre> | no |
| github\_anonymous | Github Anonymous API (if `true`, token must not be set as GITHUB\_TOKEN or `github_token`) | `bool` | `false` | no |
| github\_base\_url | GitHub target API endpoint | `string` | `"https://api.github.com/"` | no |
| github\_organization | GitHub organization to use when creating webhooks | `string` | n/a | yes |
| github\_repositories | List of repository names which should be associated with the webhook | `list(string)` | `[]` | no |
| github\_token | GitHub token used for API access. If not provided, can be sourced from the `GITHUB_TOKEN` environment variable | `string` | `""` | no |
| webhook\_content\_type | Webhook Content Type (e.g. `json`) | `string` | `"json"` | no |
| webhook\_insecure\_ssl | Webhook Insecure SSL (e.g. trust self-signed certificates) | `bool` | `false` | no |
| webhook\_secret | Webhook secret | `string` | `""` | no |
| webhook\_url | Webhook URL | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| webhook\_url | Webhook URL |

