resource "google_compute_network" "our_development_network" {
  name                    = "devnetwork"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "dev-subnet" {
  # ip_cidr_range = "10.0.1.0/24"
  ip_cidr_range = "${var.gcp_ip_cidr_range}"
  # name          = "devsubnet"
  name    = "${var.subnet_names["subnet1"]}"
  network = "${google_compute_network.our_development_network.self_link}"
  region  = "${var.region}"
}
