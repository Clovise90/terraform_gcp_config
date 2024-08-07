provider "google" {
  project = "cannahcloudsolutions"
  region  = "us-central1"
}

resource "google_storage_bucket" "example_bucket" {
  name     = "clovise-bucket24"
  location = "US"
}
