# Logistics Web App Deployment (Azure + AWS)

This repository contains the source code and scripts used to deploy a simple Logistics Web Application across both Azure Virtual Machines and AWS EC2 Instances. The project demonstrates multi-cloud deployment fundamentals, VM provisioning, web server configuration, and validation across environments.

## Overview
This project deploys Apache Web Servers on:
- Two Azure Virtual Machines (Ubuntu 24.04)
- Two AWS EC2 Instances (Amazon Linux)

Each instance serves a unique welcome page to confirm successful deployment and cross-cloud accessibility.

## Architecture
- Azure: 2 Linux VMs running Apache
- AWS: 2 Amazon Linux EC2 instances running Apache
- Each instance hosts a simple HTML page
- Manual provisioning on Azure
- User-data automation on AWS

## Implementation Summary
- Created Azure VMs and installed Apache manually using shell commands
- Created AWS EC2 instances and installed Apache using user-data scripts
- Configured unique HTML pages for each instance
- Validated access using public IPs
- Documented the entire workflow in the portfolio

## Scripts Included
- Azure VM 1 Apache installation script  
- Azure VM 2 Apache installation script  
- AWS EC2 Instance 1 user-data script  
- AWS EC2 Instance 2 user-data script  

All scripts are available here: [Source Code](./assets/sourcecode.md)

## Validation & Testing
- Verified Apache installation on all four instances  
- Confirmed unique welcome pages load correctly  
- Tested cross-cloud access from browser  
- Ensured services persist after reboot  

All screenshots are available here: [Screenshots](./assets/Screenshots.pdf)

## Tech Stack
- **Azure**: Virtual Machines (Ubuntu 24.04)  
- **AWS**: EC2 (Amazon Linux)  
- **Web Server**: Apache HTTPD  
- **Tools**: Bash, User Data  

## Full Case Study
For the complete write-up, screenshots, and architecture diagram, visit the portfolio page:  
 https://selvi-vasanth.github.io/cloud-portfolio/featured-projects/project1/
