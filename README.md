# Production-Grade-DevOps-Environment

1. Architecture Overview

Flow

Developer pushes code to GitHub

Jenkins pipeline triggers

Stages:

Build

Unit tests

SonarQube scan

Trivy image scan

Docker image push to ECR

Deploy to EKS

EKS monitored by Prometheus & Grafana

Tech Stack

CI/CD: Jenkins

IaC: Terraform

K8s: AWS EKS

Monitoring: Prometheus + Grafana

Code Quality: SonarQube

Security: Trivy
