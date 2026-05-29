resource "google_compute_backend_service" "backend" {
  name                  = "clubbackend01"
  protocol              = "HTTP"
  port_name             = "http"
  timeout_sec           = 30
  health_checks         = [google_compute_region_health_check.health_mig.id]
  load_balancing_scheme = "EXTERNAL_MANAGED"

  backend {
    group = google_compute_instance_group_manager.web_mig.instance_group
  }
}
