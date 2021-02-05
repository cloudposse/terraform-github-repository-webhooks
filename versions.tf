terraform {
  required_version = ">= 0.12.26"

  required_providers {
    github = {
      source = "hashicorp/github"
      # breaking changes both immediately before and after 3.0.0, pin exactly
      version = "3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.2"
    }
  }
}
