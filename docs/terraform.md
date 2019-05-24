## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| active | Indicate of the webhook should receive events | string | `true` | no |
| enabled | Whether or not to enable this module | string | `true` | no |
| events | A list of events which should trigger the webhook. | list | `<list>` | no |
| github_organization | GitHub organization. The account corresponding to the token will need `owner` privileges for this organization. If not provided, can also be sourced from the `GITHUB_ORGANIZATION` environment variable | string | - | yes |
| github_repositories | List of repository names which should be associated with the webhook | list | `<list>` | no |
| github_token | GitHub token used for API access. If not provided, can be sourced from the `GITHUB_TOKEN` environment variable | string | `` | no |
| webhook_content_type | Webhook Content Type (E.g. json) | string | `json` | no |
| webhook_insecure_ssl | Webhook Insecure SSL (E.g. trust self-signed certificates) | string | `false` | no |
| webhook_secret | Webhook secret | string | `` | no |
| webhook_url | Webhook URL | string | - | yes |

