terraform {
  required_version = ">= 0.13.0"

  required_providers {
    github = {
      source  = "hashicorp/github"
      version = ">= 3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.2"
    }
  }
}
