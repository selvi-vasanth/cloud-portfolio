# Highly Available Architecture Using Azure CLI

---

## Overview
This project demonstrates how to deploy a highly available web application architecture on Microsoft Azure using **Azure CLI automation**. The solution uses an Azure Public Load Balancer to distribute traffic across multiple Linux virtual machines, ensuring that only healthy instances serve user requests. This improves uptime, fault tolerance, and operational consistency while supporting reusable, script‑driven deployments.

---

## Architecture
The environment includes:

- **Virtual Network (VNet)** with a dedicated subnet  
- **Two Linux Virtual Machines** hosting the application  
- **Azure Public Load Balancer** with:  
  - Frontend IP configuration  
  - Backend pool  
  - Health probe  
  - Load balancing rule  
- **Traffic routing** only to healthy VM instances  
- **Azure CLI scripts** for full automation  

---

## Implementation Summary
- Created a VNet and subnet using Azure CLI  
- Deployed two Linux VMs in the same subnet  
- Provisioned a Public IP for the Load Balancer  
- Created the Load Balancer, backend pool, and frontend configuration  
- Added a health probe to monitor VM availability  
- Configured a load balancing rule to distribute traffic  
- Attached both VMs to the backend pool  
- Validated high availability by simulating VM failures  

---

## Scripts Included
This project includes Azure CLI scripts for:

- VNet and subnet creation  
- VM provisioning  
- Public IP creation  
- Load Balancer setup (frontend, backend pool, health probe, LB rule)  
- Backend pool association  
- Validation commands  

The deployment script is available here: [deploy-loadbalancer.sh](./assets/deploy-loadbalancer.sh)

---

## Validation Testing
- Verified that both VMs served the application through the Load Balancer  
- Stopped one VM to simulate failure and confirmed traffic redirected to the healthy instance  
- Ensured the health probe correctly detected unhealthy VMs  
- Observed consistent uptime during failover testing  

All screenshots are available here: [Screenshots.pdf](./assets/Screenshots.pdf)

---

## Tech Stack
- **Azure Services:** Virtual Network, Subnet, Virtual Machines, Public Load Balancer, Public IP, Network Security Group (NSG), NICs, Backend Pool, Health Probe  
- **Tools:** Azure CLI, Bash  
- **Compute:** Linux VMs  
- **Networking:** Subnets, Public IP, Load Balancing

**Portfolio page:**  
https://selvi-vasanth.github.io/cloud-portfolio/featured-projects/project2/
