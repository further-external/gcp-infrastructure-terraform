variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "EU"
}

variable "dataset_id" {
  description = "BigQuery dataset ID"
  type        = string
}
