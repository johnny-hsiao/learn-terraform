provider "google" {
  credentials = "${file("./account.json")}"
  project = "terratest2"
  region = "us-west1-a"
}


