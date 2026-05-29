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
Use e2-medium or similar

Add startup script to install Apache or NGINX

Attach to the custom VPC

4️⃣ Create Managed Instance Group (MIG)
Use the instance template

Set autoscaling (optional)

Deploy in the same region as the subnet

5️⃣ Create Health Check
HTTP health check on port 80

6️⃣ Create Backend Service
Attach the MIG
Attach the health check

7️⃣ Create URL Map
Default route → backend service

8️⃣ Create Target HTTP Proxy
Attach the URL map

9️⃣ Create Global Forwarding Rule
Port 80

Assign global IP

Attach HTTP proxy
