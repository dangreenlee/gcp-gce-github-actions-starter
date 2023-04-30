provider "google" {
  region      = var.gcp.region
  project     = var.gcp.project
  credentials = jsondecode(var.GCP_CREDENTIALS)
}
