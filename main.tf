provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_bigquery_dataset" "example" {
  dataset_id = var.dataset_id
  location   = var.region

  delete_contents_on_destroy = true
}
