# Managed Instance Group (MIG) that uses the instance template above.
# This provides basic horizontal scaling (fixed size here) and self-healing.
resource "google_compute_instance_group_manager" "web_mig" {
  name               = "seir-web-mig"
  base_instance_name = "seir-web"
  zone               = var.zone

  version {
    instance_template = google_compute_instance_template.web_template.id
  }

  # Fixed size MIG for this lab; can be extended later with autoscaling if needed.
  target_size = 2

  # Named port is useful if you later attach this MIG to a backend service / load balancer.
  named_port {
    name = "http"
    port = 80
  }
}
