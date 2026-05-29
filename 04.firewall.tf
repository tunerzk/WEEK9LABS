resource "google_compute_firewall" "allow_health_checks" {
  name    = "allow-health-mig"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["35.191.0.0/16"]
  target_tags   = ["mig-web"]
}
