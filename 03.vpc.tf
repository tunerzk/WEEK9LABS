# Custom VPC for this environment. We disable auto subnet creation so we control IP ranges.
resource "google_compute_network" "vpc" {
  name                    = "seir-custom-vpc"
  auto_create_subnetworks = false
}

# Single custom subnet in the chosen region.
resource "google_compute_subnetwork" "subnet" {
  name          = "seir-custom-subnet"
  ip_cidr_range = "10.10.0.0/24" # Small CIDR for lab; enough for a MIG but not wasteful.
  region        = var.region
  network       = google_compute_network.vpc.id
}
