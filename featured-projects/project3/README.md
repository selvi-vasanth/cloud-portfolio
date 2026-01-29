# Serverless Image Processing Pipeline  
**AWS S3 + Lambda + DynamoDB + CloudFront**

This repository contains the source code and infrastructure setup for a fully serverless Image Processing Pipeline built on AWS. The project demonstrates event-driven design, automated image transformation, metadata storage, and global content delivery using AWS managed services.

---

##  Overview

This project implements an end-to-end workflow where users upload images to an S3 bucket, triggering a Lambda function that processes the image and stores metadata. The processed images are then delivered globally through CloudFront.

### The pipeline showcases:
- Event-driven architecture
- AWS Lambda for backend processing
- S3 triggers
- DynamoDB for metadata storage
- IAM least-privilege design
- CloudFront CDN integration
- CloudWatch logging and monitoring

---

##  Architecture

- **S3 (raw-images)** — Stores original uploaded images  
- **Lambda (image-processor)** — Generates thumbnails, extracts metadata, writes to DynamoDB  
- **DynamoDB (ImageMetadata)** — Stores image details and CloudFront URLs  
- **S3 (processed-images)** — Stores processed thumbnails  
- **CloudFront Distribution** — Serves processed images globally  
- **IAM Roles** — Scoped permissions for Lambda execution  
- **CloudWatch Logs** — Tracks Lambda execution and errors  

Architecture diagram is available here: [Architecture diagram](./assets/Architecture-Diagram.png)

---

##  Implementation Summary

- Created two S3 buckets:
  - `raw-images-<unique>` for uploads
  - `processed-images-<unique>` for thumbnails
- Created a DynamoDB table ImageMetadata with partition key `imageId`
- Built a Lambda function (`image-processor`) using Python
- Implemented thumbnail generation (e.g., 200×200)
- Extracted metadata (size, format, timestamp)
- Wrote metadata to DynamoDB
- Uploaded processed images to the public bucket
- Added S3 → Lambda trigger on `ObjectCreated:*`
- Configured CloudFront with the `processed-images` bucket as origin
- Enabled Origin Access Control (OAC) for secure S3 access (optional)
- Stored CloudFront URLs in DynamoDB for easy retrieval

---

##  Project Workflow

1. User uploads an image to the `raw-images` bucket  
2. S3 event triggers the `image-processor` Lambda  
3. Lambda performs:
   - Image resizing
   - Metadata extraction
   - DynamoDB write
   - Upload to `processed-images` bucket
4. CloudFront serves the processed image globally  
5. DynamoDB stores both S3 and CloudFront URLs  

---

##  Scripts and Source Code Included

- Lambda function code (Python) [Source Code](./assets/handler.py)
- Pillow Layer Creation [Scripts](./assets/pillow-layer.build.md)

---

##  Validation and Testing

- Uploaded multiple images to the raw S3 bucket
- Verified Lambda execution via CloudWatch Logs
- Confirmed thumbnails generated correctly
- Checked DynamoDB entries for metadata and URLs
- Validated CloudFront delivery using public CDN URLs
- Ensured permissions follow least-privilege principles  

 All screenshots and test results are available here: [Screenshots](./assets/Screenshots.pdf)

---

##  Tech Stack

- **AWS S3** — Object storage for raw and processed images  
- **AWS Lambda** — Event-driven compute  
- **AWS DynamoDB** — NoSQL metadata storage  
- **AWS CloudFront** — Global CDN  
- **AWS IAM** — Secure access control  
- **AWS CloudWatch** — Logging and monitoring  
- **Languages**: Python (Pillow)
