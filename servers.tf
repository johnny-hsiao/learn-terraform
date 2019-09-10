resource "google_compute_instance" "firstserver" {
  name         = "thefirstserver"
  machine_type = "n1-standard-1"
  zone         = "us-west1-a"

  # So the boot disk is basically what the operating system, the instance will run with, 
  # will launch from. So basically, a boot disk is the same thing that you would have on 
  # a standard PC or Mac or whatever. This is where the Linux distribution or Windows 
  # server is installed and preconfigured for launch into the instance.
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.dev-subnet.name}"

    # Assign nat_ip
    access_config {}
  }

  # Assign things for organizational and automation purposes
  # metadata {
  #   foo = "bar"
  # }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
