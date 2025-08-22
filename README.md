# Dockerized E-Commerce Web Application

## Overview
This project is a **Dockerized e-commerce web application** deployed on **AWS** using **CloudFormation**. It is designed for high availability and scalability, leveraging Docker containers on EC2 instances managed by an **Auto Scaling Group** behind an **Application Load Balancer (ALB)**. The application leverages a bash script that pulls the image from dockerhub and runs the applciation, allowing it to be available via mapping port 80 on the container to port 80 on the instance. OIDC has been configured and will be undergoing further testing. Status checks, linting, and other tools will be implemented in the future to further imporve code.

## Features
- Web application containerized with **Docker**, exposing port 80.
- **AWS CloudFormation** automates the creation of:
  - VPC with multiple public subnets across Availability Zones.
  - Security Groups allowing HTTP and SSH access.
  - Auto Scaling Group with Launch Template.
  - Application Load Balancer with target groups and health checks.
- Application runs in a secure, repeatable environment.
- Supports automatic deployment and scaling.

## Architecture
- **Docker**: Packages the web application and its dependencies for consistent runtime environments.
- **CloudFormation**: Declaratively provisions infrastructure including networking, compute, and load balancing resources.
- **EC2 Launch Template**: Configures instances with Docker, pulls the container image, and runs the application automatically.
- **ALB**: Distributes incoming HTTP traffic across multiple EC2 instances for reliability.


