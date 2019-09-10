# 3 types of variables: string, map, list
variable "newvariable" {
  type = "string"
  default = "thisisvalue"
}

variable "maptype" {
  type = "map"
  default = {
    subnet1 = "subnet1"
    subnet2 = "subnet2"
    subnet3 = "subnet3"
  }
}

variable "listtype" {
  type = "list"
  default = ["item1", "item2"]
}

variable networkname {
  default = "thenewnet"
  type = "string"
  description = "Just the network name for GCP"
}

#####################

# Used for subnetworks
variable gcp_ip_cidr_range {
  default = "10.0.0.0/16"
  type = "string"
  description = "IP CIDR Range for Google VPC."
}

variable subnet_names {
  type = "map"
  default = {
    subnet1 = "subnetone"
    subnet2 = "subnettwo"
    subnet3 = "subnetthree"
  }
}

#####################
# Output variables; any of output will be displayed at the end of the terminal after 
# "terraform apply"
output "first_output" {
  value = "this is the value through execution."
}

output "gcp_cidr_subnet1" {
  value = "${google_compute_subnetwork.dev-subnet.ip_cidr_range}"
}

#####################
# Input variables; this will be prompted as user input on "terraform apply"
# Only works for string datatype; map and list can't be passed in
variable new_value {
  
}
