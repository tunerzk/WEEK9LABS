⭐ Part 1 — ClickOps (Manual GCP Console Steps)
These are the steps performed manually in the Google Cloud Console.

1️⃣ Create VPC Network
Navigate to VPC Network → VPC Networks

Create a custom VPC

Add a subnet (e.g., us-central1)

2️⃣ Create Firewall Rules
Allow SSH (tcp/22)

Allow HTTP (tcp/80)

Allow Health Checks (130.211.0.0/22, 35.191.0.0/16)

3️⃣ Create Instance Template

