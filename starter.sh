#!/usr/bin/env bash

terraform fmt

# TODO: add a check for "terraform validate" and if there are any errors, then stop script

terraform plan -var-file="starter.tfvars"

# pass in yes to auto apply any changes
echo "yes" | terraform apply -var-file="starter.tfvars"

# Run ./starter.sh