# Instance template used by the MIG. This defines the VM shape, boot disk, network,
# and startup behavior for all instances in the group.
resource "google_compute_instance_template" "web_template" {
  name         = "seir-mig-web-template"
  machine_type = "e2-micro" # Small, cost-effective type for lab (FinOps-friendly).

  # Simple boot disk using a common Debian image family.
  disk {
    boot         = true
    auto_delete  = true
    source_image = "projects/debian-cloud/global/images/family/debian-12"
  }

  network_interface {
    # Attach instances to the custom VPC and subnet.
    network    = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.id

    # No external IP here to keep costs and exposure down (FinOps).
    # If you needed SSH/HTTP from the internet directly, you would add access_config {}.
  }

  # Tag used by the firewall rule to allow HTTP traffic.
  tags = ["mig-web"]
}