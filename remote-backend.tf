terraform {
  required_version = "~> 0.12"

  # can't interpolate variables for remote backend configuration
  backend "gcs" {
    bucket      = "terratest2"
    credentials = "account.json"
  }
}