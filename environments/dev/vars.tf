variable "gcp" {
  type = object({
    project = string
    region  = string
  })

  default = {
    project = "dev-381421"
    region  = "us-west1"
  }
}

variable "GCP_CREDENTIALS" {
  type      = string
  sensitive = true
}
