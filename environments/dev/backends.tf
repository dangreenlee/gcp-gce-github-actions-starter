terraform {
  backend "gcs" {
    bucket = "terraform-state-123456789"
    prefix = "terraform/state/dev"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.60"
    }
  }
}