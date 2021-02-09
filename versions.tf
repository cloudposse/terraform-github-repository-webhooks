terraform {
  required_version = ">= 0.13.0"

  required_providers {
    github = {
      source = "hashicorp/github"
      # breaking changes both immediately before and after 3.0.0, pin exactly
      # until ready to upgrade to integrations/github 4.2 or later
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.2"
    }
  }
}
