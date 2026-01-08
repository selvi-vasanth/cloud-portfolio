# Secure Networking & RBAC (Azure)

## Overview
This project demonstrates secure connectivity between workloads hosted in separate Azure Virtual Networks (VNets) using VNet peering. It also includes the creation of a custom Role‑Based Access Control (RBAC) role to enforce least‑privilege access for an onboarded Azure AD user, ensuring proper governance and operational security.

## Architecture
- Two VNets deployed in different Azure regions  
- One virtual machine in each VNet  
- Bidirectional VNet peering configured for secure communication  
- Azure AD user onboarded with restricted access  
- Custom RBAC role created with scoped permissions  
- Connectivity validated using PowerShell‑based tests  
- RBAC enforcement validated through restricted access testing  

## Implementation Summary
- Created two VNets with associated subnets and deployed VMs  
- Configured VNet peering to enable secure cross‑network communication  
- Created a custom RBAC role with permissions to read VM, network, and storage resources, and start/restart VMs  
- Assigned the custom role to a user in Azure AD  
- Validated VM‑to‑VM connectivity across VNets  
- Verified that the user could only perform actions defined in the custom role  

## Scripts Included
Links to scripts used in this project:  [Script](./assets/Source%20Code.pdf)

## Validation Testing
- Verified secure cross‑VNet connectivity  
- Confirmed least‑privilege access for the Azure AD user  
- Validated restricted access to VM, network, and storage operations  
- Ensured unauthorized actions were blocked  

## Tech Stack
- Azure Virtual Network (VNet)  
- Azure Virtual Machines (VMs)  
- Azure VNet Peering  
- Azure Active Directory (Azure AD)  
- Azure RBAC (Custom Role)  
- PowerShell

## Full Case Study
For the complete write-up, screenshots, and architecture diagram, visit the portfolio page:  
https://selvi-vasanth.github.io/cloud-portfolio/featured-projects/project3/
