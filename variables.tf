variable "project_id" {
  default = "bold-artifact-344309"
  description = "GCP project id for GKE"
}

variable "region" {
  default = "us-central1"
  description = "region for GKE"
}

variable "zone" {
    default = "us-central1-c"
    description = "Zone for GKE"
  
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes for pool"
}

variable "tags" {
  default = "gke-dev-env"
  description = "gke node tags"
}

variable "kubernetes_cluster_name" {
  default = "gke-dev-cluster"
}