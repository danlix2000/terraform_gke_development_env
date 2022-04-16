terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.17.0"
    }
  }
 
  required_version = "~> 1.0"

}

provider "google" {
    project = var.project_id
    region  = var.region
    zone = var.zone
    credentials = file("../credentials/secret.json")
  
  
}