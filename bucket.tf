provider "google"{
  credentials = "/Users/zokmi4/terraform-key.json"
  project = "tms-study-441511"  
  region  = "us-central1"       
  zone    = "us-central1-a"     
}

resource "google_storage_bucket" "example_bucket" {
  name          = "zokmi4-terraform-bucket"
  location      = "US"
}

terraform {
  backend "gcs" {
    bucket = "zokmi4-terraform-bucket" 
    prefix = "terraform/state"
  }
}
