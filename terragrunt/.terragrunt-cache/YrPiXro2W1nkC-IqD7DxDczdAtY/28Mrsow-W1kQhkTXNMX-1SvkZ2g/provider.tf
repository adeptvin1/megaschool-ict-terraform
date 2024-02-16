terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.16.0"
    }
  }
}

provider "google" {
  project = "study-project-414406"
  region  = "us-central1"
}