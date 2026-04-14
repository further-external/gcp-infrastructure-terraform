provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_bigquery_dataset" "example" {
  dataset_id = var.dataset_id
  location   = var.region

  delete_contents_on_destroy = true
}

resource "google_storage_bucket" "example" {
  name          = "${var.project_id}-bucket" # must be globally unique
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}
