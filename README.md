# amorserv-infra
Infra provisioning with terraform 
![alt text](<WhatsApp Image 2024-06-24 at 20.39.37_7c6096a7.jpg>)

# AmorServ LLC Web Application Deployment

## Project Overview
This project involves deploying a highly available and scalable web application for AmorServ LLC on AWS. The application architecture includes a React/Next.js frontend hosted on AWS Amplify, a Node.js backend running on AWS Lambda, and a MySQL database on Amazon RDS. The project aims to design and implement the necessary AWS infrastructure and set up a CI/CD pipeline for automated deployment.

## Scenario
AmorServ LLC is planning to deploy a web application with the following components:
- **Frontend:** React/Next.js hosted on AWS Amplify.
- **Backend:** Node.js hosted on AWS Lambda.
- **Database:** MySQL hosted on Amazon RDS.

## Tasks

### 1. Infrastructure Design and Provisioning

**Objective:**
Design and implement a highly available and scalable AWS architecture using Infrastructure as Code (IaC).

**Architecture Components:**
- VPC with public and private subnets across multiple availability zones.
- AWS Lambda functions for the backend Node.js services.
- Amazon RDS for the MySQL database.
- Security Groups to control access to the database.
- IAM roles and policies to secure and manage access to AWS resources.
- AWS Amplify for deploying the React/Next.js frontend.

**Steps:**
1. Design the architecture diagram.
2. Implement the architecture using Terraform (preferred) or AWS CloudFormation.
3. Provide IaC scripts and architecture diagram.

### 2. CI/CD Pipeline Setup

**Objective:**
Set up a CI/CD pipeline using AWS CodePipeline, CodeBuild, and AWS Amplify for automated deployment.

**Pipeline Components:**
- Automatic triggers on code changes pushed to GitHub.
- Build and deploy the frontend using AWS Amplify.
- Build and deploy the backend Node.js functions to AWS Lambda.
- Ensure backend deployment updates Lambda functions without downtime.

**Steps:**
1. Configure GitHub repository triggers.
2. Set up AWS CodePipeline and CodeBuild for frontend and backend.
3. Provide build and deployment scripts.

### 3. Monitoring and Logging

**Objective:**
Implement monitoring and logging using AWS CloudWatch.

**Components:**
- AWS CloudWatch for monitoring AWS Lambda, application logs, and custom metrics.
- Alerts for critical metrics (e.g., invocation errors, latency, MySQL performance).

**Steps:**
1. Configure AWS CloudWatch for Lambda and application logs.
2. Set up custom metrics and alerts.
3. Provide CloudWatch configuration and alert setup.

### 4. Documentation

**Objective:**
Document the entire process clearly to ensure it can be followed by another engineer.

**Components:**
- Steps to provision the infrastructure.
- Steps to set up the CI/CD pipeline.
- Monitoring and logging setup.
- Assumptions or decisions made during implementation.

### 5. Deliverables

**Components:**
- Infrastructure as Code (IaC) scripts.
- CI/CD pipeline configuration scripts.
- Monitoring and logging configuration.
- Detailed documentation.

## Implementation Details

### Infrastructure Provisioning
The infrastructure is provisioned using Terraform, ensuring high availability by deploying across multiple availability zones. The Terraform scripts include:
- VPC with public and private subnets.
- AWS Lambda functions for backend services.
- Amazon RDS instance for MySQL.
- Security Groups for controlling access.
- IAM roles and policies for secure access.

### CI/CD Pipeline
The CI/CD pipeline is set up using AWS CodePipeline and CodeBuild for both frontend and backend deployments:
- **Frontend Deployment:**
  - Code changes pushed to GitHub trigger AWS CodePipeline.
  - AWS CodeBuild builds the frontend application.
  - The built application is stored in an S3 bucket and deployed to AWS Amplify via a Lambda function.
- **Backend Deployment:**
  - Code changes pushed to GitHub trigger AWS CodePipeline.
  - AWS CodeBuild builds the backend Node.js functions.
  - The functions are deployed to AWS Lambda, ensuring no downtime.

### Monitoring and Logging
Monitoring and logging are implemented using AWS CloudWatch, with configurations for:
- Monitoring AWS Lambda functions.
- Application logs.
- Custom metrics.
- Alerts for critical performance metrics.

### Assumptions Made
- Initial plan to deploy directly to AWS Amplify from CodeBuild was adjusted to use an S3 bucket and Lambda function due to timeframe constraints.

## Repositories

- **Terraform Repository:** [Terraform Repo](https://github.com/Awodi-Emmanuel/a-amorserv-backend)
- **Backend Repository:** [Backend Repo](https://github.com/Awodi-Emmanuel/test-amorserv-frontend)
- **Frontend Repository:** Links provided above.

## References

### AWS Services Documentation

1. **VPC (Virtual Private Cloud)**
   - [Amazon VPC Documentation](https://docs.aws.amazon.com/vpc/index.html)

2. **AWS Lambda**
   - [AWS Lambda Documentation](https://docs.aws.amazon.com/lambda/index.html)

3. **Amazon RDS (Relational Database Service)**
   - [Amazon RDS Documentation](https://docs.aws.amazon.com/rds/index.html)

4. **AWS Security Groups**
   - [Amazon EC2 Security Groups for Linux Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html)

5. **AWS IAM (Identity and Access Management)**
   - [AWS IAM Documentation](https://docs.aws.amazon.com/iam/index.html)

6. **AWS Amplify**
   - [AWS Amplify Documentation](https://docs.amplify.aws/)

7. **AWS CodePipeline**
   - [AWS CodePipeline Documentation](https://docs.aws.amazon.com/codepipeline/index.html)

8. **AWS CodeBuild**
   - [AWS CodeBuild Documentation](https://docs.aws.amazon.com/codebuild/index.html)

9. **AWS S3 (Simple Storage Service)**
   - [Amazon S3 Documentation](https://docs.aws.amazon.com/s3/index.html)

10. **AWS CloudWatch**
    - [Amazon CloudWatch Documentation](https://docs.aws.amazon.com/cloudwatch/index.html)

### Terraform AWS Provider Documentation

- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

### GitHub Integration with AWS

- [AWS CodePipeline with GitHub](https://docs.aws.amazon.com/codepipeline/latest/userguide/pipelines-webhooks-github.html)
- [AWS Amplify GitHub Integration](https://docs.amplify.aws/cli/hosting/github/)

### Additional Resources

- [AWS Marketplace Management](https://aws.amazon.com/marketplace/management/signin)
- [AWS Lambda Function Deployment from S3](https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-configuration.html#configuration-function-code)

## Conclusion
This project ensures a robust, scalable, and maintainable infrastructure with efficient deployment processes and comprehensive monitoring for high performance and reliability. For any questions or further assistance, please feel free to reach out.

Thank you for reviewing this project!
