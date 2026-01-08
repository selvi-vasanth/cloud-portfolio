# CI/CD Pipeline Automation (AWS)

## Overview
This project implements a fully automated CI/CD pipeline for deploying a Spring Boot application to Amazon ECS using AWS CodePipeline, CodeBuild, and Elastic Container Registry (ECR). The pipeline builds, containerizes, and deploys the application without manual intervention, ensuring fast, reliable, and repeatable delivery of application updates.

## Architecture
- GitHub repository as the source for application code  
- AWS CodePipeline orchestrating the CI/CD workflow  
- AWS CodeBuild compiling the Spring Boot application and building Docker images  
- Amazon ECR storing versioned container images  
- Amazon ECS (EC2 launch type) running the containerized application  
- Application Load Balancer exposing the service publicly  
- Automated deployment triggered on every GitHub commit  

## Implementation Summary
- Created an ECR repository to store Docker images  
- Set up a GitHub repository and pushed the Spring Boot application code  
- Configured CodeBuild with a build specification to:  
  - Build the JAR using Maven  
  - Build and tag Docker images  
  - Push images to ECR  
  - Generate imagedefinitions.json for ECS deployment  
- Created an ECS cluster, task definition, and service using EC2 launch type  
- Built a CodePipeline with three stages:  
  1. **Source:** GitHub  
  2. **Build:** CodeBuild  
  3. **Deploy:** ECS  
- Validated that every GitHub commit triggered a full build and deployment cycle  

## Scripts Included
The project includes sourcecode/scripts for the below
- Build Specification (buildspec.yml)
- Application Source Code
- ECS Image Definitions File

All the above files are available in [SourceCode](./assets/CICDProject)

## Validation Testing
- Verified successful Docker image pushes to ECR  
- Confirmed CodeBuild logs for Maven build, Docker build, and image push  
- Ensured ECS task definition updated automatically with new image tags  
- Tested application endpoints via the Application Load Balancer  
- Validated multiple deployments triggered by GitHub commits  

All screenshots are available here: [Screenshots.pdf](./assets/Screenshots.pdf)

## Tech Stack
- AWS CodePipeline  
- AWS CodeBuild  
- Amazon ECR  
- Amazon ECS (EC2 launch type)  
- Application Load Balancer  
- Docker  
- GitHub

**Portfolio page:**  
https://selvi-vasanth.github.io/cloud-portfolio/featured-projects/project4/
