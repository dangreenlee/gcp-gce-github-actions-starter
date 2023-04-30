resource "google_compute_instance" "example" {
  name         = "example-instance"
  project      = var.gcp.project
  zone         = "${var.gcp.region}-a"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral external IP
    }
  }

}

resource "google_compute_firewall" "example_firewall" {
  name    = "example-firewall"
  project = var.gcp.project
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}
