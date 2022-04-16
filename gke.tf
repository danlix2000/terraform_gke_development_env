# GKE cluster
resource "google_container_cluster" "primary" {
  name     = "${var.kubernetes_cluster_name}"
  location = var.zone
  

  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name
}

#  Node Pool
resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.zone
  cluster    = google_container_cluster.primary.name
  node_count = var.gke_num_nodes

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    labels = {
      env = var.project_id
    }

    
    machine_type = "n1-standard-1"
    tags         = ["gke-node", "${var.tags}"]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

