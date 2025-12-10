# Supporting Project: WordPress Instance Setup and Monitoring

## Overview
This project demonstrates the setup and monitoring of a **WordPress instance on AWS** to establish a reliable and secure online presence.  
It highlights automation with **CloudFormation**, cost optimization with **scheduled Auto Scaling**, and resiliency through **Route 53 health checks**.  
Key skills showcased: **infrastructure automation, monitoring, scaling policies, and environment isolation**.

---

## Project Scenario
An organization publishes blogs and provides documentation services for other businesses and technologies.  
To support these goals, the IT team was tasked with:  
- Setting up a **live WordPress instance** to publish blogs.  
- Deploying a **development/test instance** isolated from production.  
- Ensuring the dev/test instance is only available during business hours (9 AM–6 PM).  
- Monitoring the live instance for availability and resiliency.  

---

## Problem Understanding & Requirements
### Current Scenario
- No existing WordPress deployment.  
- No separation between production and test environments.  
- No monitoring or scheduled scaling.  

### Proposed Requirements
- Reliable live WordPress instance for publishing blogs.  
- Separate dev/test environment to avoid impacting production.  
- Scheduled uptime for dev/test (business hours only).  
- Monitoring of WordPress availability using Route 53.  

### Key Questions
- Should the dev/test environment be cost‑optimized with scheduled scaling?  
- How to ensure monitoring covers both production and test instances?  
- What automation tools best fit repeatable deployments (CloudFormation vs manual setup)?  

---

## Existing Architecture
*(Insert diagram here if available, e.g., `./assets/wp_architecture.png`)*  
Current setup includes a live WordPress instance deployed via CloudFormation, with a custom AMI used for dev/test scaling.

---

## Solution Architecture
**Automated Deployment and Scheduled Scaling**
- Live WordPress instance launched using AWS CloudFormation.  
- Custom AMI created from the live instance for dev/test use.  
- Auto Scaling Group configured with scheduled actions:  
  - Launch dev/test WordPress server at 9 AM.  
  - Terminate dev/test server at 6 PM.  
- Route 53 health checks monitor the live WordPress instance for availability.  

---

## Component Mapping
### AWS Components
- **CloudFormation** → Automates WordPress deployment.  
- **Amazon EC2** → Hosts WordPress instances.  
- **Custom AMI** → Provides consistent dev/test environment.  
- **Auto Scaling Group** → Manages scheduled scaling of dev/test servers.  
- **Route 53 Health Checks** → Monitors uptime and resiliency.  

---

## Steps to Achieve Deployment
1. Launch a live WordPress instance using CloudFormation.  
2. Create a custom AMI from the live instance.  
3. Configure an Auto Scaling Group with scheduled actions:  
   - Launch dev/test server at 9 AM.  
   - Terminate dev/test server at 6 PM.  
4. Set up Route 53 health checks to monitor the WordPress instance.  

---

## Screenshots
![WordPress Live Instance](./assets/wp_screenshot1.png)  
![Route 53 Health Check](./assets/wp_screenshot2.png)  

For the full set of screenshots, [see the PDF here](./screenshots/WordPress_SupportingProject.pdf).

---

## Lessons Learned
- CloudFormation simplifies repeatable infrastructure deployment.  
- Scheduled Auto Scaling reduces costs by limiting dev/test environment uptime.  
- Route 53 health checks provide proactive monitoring for high availability.  
- Using a custom AMI ensures consistency between live and test environments.  

---

## Tech Stack
- **AWS Services:** CloudFormation, EC2, Auto Scaling, Route 53  
- **Tools:** Docker, Jenkins, Git/GitHub  
- **Languages/Frameworks:** Spring Boot (prerequisite context)  

---
<!--
## Future Improvements
- Add CloudWatch dashboards for real‑time monitoring.  
- Integrate CI/CD pipelines with Jenkins for automated WordPress updates.  
- Explore containerized WordPress deployment using Docker + ECS/EKS.  
- Implement IAM policies for tighter security and access control.  

---
-->

## Conclusion
This project delivers a reliable and cost‑optimized WordPress deployment strategy using AWS.  
- Ensures availability of a live blogging platform.  
- Provides a controlled dev/test environment with scheduled uptime.  
- Demonstrates hands‑on skills in automation, monitoring, and scaling policies.  
