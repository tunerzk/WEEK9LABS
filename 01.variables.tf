variable "project_id" {
  description = "GCP project ID where resources will be created."
  type        = string
}

variable "region" {
  description = "Default region for resources."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Default zone for zonal resources."
  type        = string
  default     = "us-central1-b"
}
