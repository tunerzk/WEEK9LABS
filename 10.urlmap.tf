resource "google_compute_url_map" "urlmap" {
  name            = "club-urlmap"
  default_service = google_compute_backend_service.backend.id
}
