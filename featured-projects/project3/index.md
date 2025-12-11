# Case Study: Azure VNet Peering & Custom RBAC Role

## Overview
This project demonstrates secure connectivity between workloads hosted in separate Azure Virtual Networks (VNets) using VNet peering. It also implements a custom Role‑Based Access Control (RBAC) role to enforce least‑privilege access for an onboarded user, ensuring governance and operational security.

## Project Scenario
Rand Enterprises Corporation is evaluating Azure as a deployment platform. To validate Azure’s networking and security capabilities, the company requested a proof‑of‑concept that connects workloads across VNets and applies custom access controls for an employee.

## Problem Understanding & Requirements
- Establish connectivity between two VNets in different regions.  
- Deploy test virtual machines in each VNet.  
- Configure VNet peering to enable cross‑network communication.  
- Onboard a user into Azure Active Directory.  
- Create a custom RBAC role with permissions to:  
  - Read VM, Network, and Storage resources.  
  - Start and restart VMs.  
- Validate that the user can only access resources defined in the custom role.

## Current Scenario
Rand Enterprises had no existing Azure networking setup. Default user permissions were broad, and workloads were isolated without cross‑network connectivity. This limited collaboration and highlighted the need for more structured governance.

## Proposed Requirements
- Build two VNets with associated subnets and VMs.  
- Enable secure VNet peering between them.  
- Implement a custom RBAC role aligned with least‑privilege principles.  
- Assign the role to a test user in Azure AD.  
- Validate connectivity and access permissions.

## Key Questions
- How can workloads in separate VNets communicate securely?  
- How do we enforce least‑privilege access for operators?  
- What permissions are essential for VM operations without over‑exposure?  

## Existing Architecture
- No VNets or peering configured.  
- No custom RBAC roles defined.  
- Default Azure AD user permissions were overly broad.

## Solution Architecture
- Two VNets deployed in different regions.  
- Each VNet hosts a VM for connectivity testing.  
- VNet peering configured to allow bidirectional traffic.  
- Custom RBAC role created with scoped permissions.  
- User onboarded into Azure AD and assigned the custom role.  
- Connectivity validated via ping/SSH between VMs.  
- Access validated by testing role‑based operations.

## Architecture Diagram
*(Insert diagram showing two VNets, peering connection, VMs, Azure AD, and RBAC role assignment.)*

## Component Mapping
- **Networking**: VNet1, VNet2, Subnets, VNet Peering.  
- **Compute**: VM1, VM2.  
- **Identity**: Azure Active Directory, Custom RBAC Role.  
- **Governance**: Role assignment, least‑privilege enforcement.

## Steps to Achieve
1. Create VNet1 and deploy VM1.  
2. Create VNet2 and deploy VM2.  
3. Configure VNet peering between VNet1 and VNet2.  
4. Test VM connectivity across VNets.  
5. Create a custom RBAC role JSON with required permissions.  
6. Onboard a user into Azure AD.  
7. Assign the custom role to the user.  
8. Validate user access to VM, Network, and Storage resources.  
9. Confirm least‑privilege enforcement.

## Screenshots
- VNet creation and peering setup.  
- VM deployment and connectivity test.  
- Custom RBAC role JSON definition.  
- Role assignment in Azure AD.  
- User access validation.

## Lessons Learned
- VNet peering provides seamless, low‑latency connectivity across VNets.  
- Custom RBAC roles are essential for enforcing least‑privilege access.  
- Testing connectivity and permissions ensures both networking and governance requirements are met.  
- Documentation and screenshots strengthen recruiter impact.

## Tech Stack
- **Azure Virtual Network (VNet)**  
- **Azure Virtual Machines (VMs)**  
- **Azure VNet Peering**  
- **Azure Active Directory (Azure AD)**  
- **Azure RBAC (Custom Role)**  

## Conclusion
This project successfully demonstrated Azure’s ability to connect workloads across VNets using peering and enforce governance through custom RBAC roles. Rand Enterprises validated Azure as a secure and flexible platform for enterprise workloads, with strong networking and identity management capabilities.
