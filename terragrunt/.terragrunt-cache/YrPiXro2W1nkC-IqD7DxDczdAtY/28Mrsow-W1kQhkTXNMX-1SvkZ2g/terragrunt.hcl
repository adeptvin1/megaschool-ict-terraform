terraform {
  source = "../terraform"
}

# Indicate what region to deploy the resources into
generate "provider" {
  path = "provider.tf"
  if_exists = "skip"
  contents = <<EOF
provider "google" {
  project = "study-project-414406"
  region  = "us-central1"
}
EOF
}

remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "skip"
  }
  config = {
    bucket = "terraform-state-filyanin"
    prefix  = "terraform/state"


  }
}