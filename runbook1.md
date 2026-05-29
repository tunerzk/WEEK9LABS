⭐ Part 1 — ClickOps (Manual GCP Console Steps)
These are the steps performed manually in the Google Cloud Console.

Prereqs:
A working Instance Template
A Managed Instance Group (MIG) created from that template
MIG must be zonal or regional (regional recommended)
MIG instances must serve traffic on a known port (e.g., 80 or 8080)


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

Review & Create
Review:

Global external LB

URL map

Backend service → MIG

Health check

Frontend IP

Click Create

Provisioning takes ~2–4 minutes.


7. Post‑Deployment Validation
Check LB health:  
Network Services → Load Balancing → Your LB → Backend → Health

Healthy = green checks on all MIG instances.

Test externally:


Code
curl http://<global-ip>
Expect 200 OK from MIG instances.

---

Answer the following:
Load Balancers:
How does load balancing contribute to Fault tolerance? What about high availability? 


Do global load balancers decrease latency for end users? Why or why not? 


What are LB health checks for? Do we always need them? Is a LB different from a reverse proxy? 


What are LB routing rules and URL maps for? Give an example or two of them in use. 


Explain what an anycast IP address is used for in the context of a global load balancer. 


Cloud Armor:

What does cloud armor offer?


Why is it used in the first place?


What layer in the OSI model does it operate at? Why is this important and how is this firewall different from VPC firewall rules? 


What are rate based rules for? 


What is reCAPTCHA and how does it relate to this service? 


Cloud CDN: 
What are POPs used for? 


What kind of files are served with Cloud CDN? 


What services can be used with cloud CDN for the source of content (the origin)? 


Does Cloud CDN help protect against any types of malicious actors or cyberattacks? Explain. 


Should an enterprise always use cloud CDN? Why or why not? 


What is TTL and how does it control content “freshness”? 

