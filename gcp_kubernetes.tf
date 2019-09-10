resource "google_container_cluster" "kubey" {
  name               = "kubeycluster"
  location           = "us-west1-a"
  initial_node_count = "1"

  node_locations = [
    "us-west1-b"
  ]

  master_auth {
    password = "password-is-at-least-16-chars"
    username = "username"
  }

  node_config {
    # Necessary to get k8 cluster built
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]

    # TODO: find new syntax
    # labels {
    #   this-is-for = "dev-cluster"
    # }

    tags = ["dev", "work"]
  }
}
