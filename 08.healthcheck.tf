resource "google_compute_region_health_check" "health_mig" {
  name = "club-health"

  http_health_check {
    port         = 80
    request_path = "/"
  }
}
