# Terraform GCP Free Tier VM

This repository contains Terraform configuration to create a Virtual Machine (VM) on Google Cloud Platform (GCP) Free Tier. The VM runs Ubuntu Minimal 22.04 LTS and is preconfigured with Docker and Docker Compose.

## Features

- **VM Instance**: Creates an `e2-micro` instance eligible for GCP Free Tier.
- **Startup Script**: Installs Docker and Docker Compose automatically.
- **Firewall Rules**: Allows HTTP and HTTPS traffic.

## Prerequisites

Before using this Terraform configuration, ensure you have:

- An active [GCP account](https://cloud.google.com/).
- [Terraform installed](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
- A GCP project with billing enabled.

## Files Overview

- **`main.tf`**: Defines the Terraform provider, VM instance, and startup script.
- **`startup.sh`**: A shell script that installs Docker and Docker Compose.
- **`variables.tf`**: Defines configurable variables for the project ID and region.

## Usage

### 1. Configure GCP Authentication

Authenticate your Terraform environment with GCP:

```sh
 gcloud auth application-default login
```

### 2. Set Up Environment Variables

Replace `<YOUR_PROJECT_ID>` with your actual GCP Project ID:

```sh
export TF_VAR_project_id=<YOUR_PROJECT_ID>
export TF_VAR_region=us-east1-b  # Or another preferred region
```

### 3. Initialize Terraform

```sh
terraform init
```

### 4. Plan Terraform Execution

```sh
terraform plan
```

### 5. Apply Terraform Configuration

```sh
terraform apply -auto-approve
```

### 6. Destroy Resources (if needed)

If you want to delete the created resources:

```sh
terraform destroy -auto-approve
```

## Notes

- The instance will be created in the default network and will have a public IP.
- Ensure that your firewall settings allow access if needed.
- Costs may apply if you exceed GCP Free Tier limits.
