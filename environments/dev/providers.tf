provider "google" {
  region      = var.gcp.region
  project     = var.gcp.project
  credentials = var.GCP_CREDENTIALS
}
