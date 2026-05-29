resource "google_compute_global_forwarding_rule" "frontend" {
  name                  = "club-frontend"
  target                = google_compute_target_http_proxy.proxy.id
  port_range            = "80"
  load_balancing_scheme = "EXTERNAL_MANAGED"
  ip_protocol           = "TCP"
}
