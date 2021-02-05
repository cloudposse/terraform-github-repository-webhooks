terraform {
  required_version = ">= 0.13.0"

  required_providers {
    github = {
      source = "integrations/github"
      # breaking changes both immediately before and after 3.0.0, pin exactly until ready to hand upgrade to 4.2 or later
      version = "3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.2"
    }
  }
}
