terraform {
  backend "gcs" {
    bucket = "terraform-state-filyanin"
    prefix = "terraform/state"
  }
}
