variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "vm_name" {
  description = "GCP VM Name"
  type        =  string
}

variable "region" {
  description = "GCP Region"
  default     = "us-east1-b"
}

