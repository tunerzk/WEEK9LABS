resource "google_compute_target_http_proxy" "proxy" {
  name    = "club-proxy"
  url_map = google_compute_url_map.urlmap.id
}
