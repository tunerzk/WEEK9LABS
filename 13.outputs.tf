# Informative outputs so another engineer can quickly see what was created
# and how to reference it from other modules or tools.

output "vpc_name" {
  description = "Name of the custom VPC used by the MIG."
  value       = google_compute_network.vpc.name
}

output "subnet_self_link" {
  description = "Self link of the subnet where MIG instances are deployed."
  value       = google_compute_subnetwork.subnet.self_link
}

output "mig_name" {
  description = "Name of the Managed Instance Group."
  value       = google_compute_instance_group_manager.web_mig.name
}

output "mig_instance_group" {
  description = "Instance group URL used by the MIG (useful for backends/LBs)."
  value       = google_compute_instance_group_manager.web_mig.instance_group
}

output "firewall_rule_name" {
  description = "Name of the firewall rule that allows HTTP to MIG instances."
  value       = google_compute_firewall.allow_http.name
}
