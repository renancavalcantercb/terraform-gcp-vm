
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

### 2. Set Up Terraform Variables

 1. Copy the terraform.tfvars.example file to terraform.tfvars:
	```sh
	cp terraform.tfvars.example terraform.tfvars
	```
 2. Open the `terraform.tfvars` file and replace the placeholders with your actual values:
	```
	project_id = "project-id-12345"
	vm_name    = "my-vm-name"
	region     = "us-east1-b"
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
terraform apply -var-file="terraform.tfvars" -auto-approve
```

### 6. Destroy Resources (if needed)

If you want to delete the created resources:

```sh
terraform destroy -var-file="terraform.tfvars" -auto-approve
```

## Notes

- The instance will be created in the default network and will have a public IP.
- Ensure that your firewall settings allow access if needed.
- Costs may apply if you exceed GCP Free Tier limits.
