# learn-terraform

Commands

terraform init
terraform plan
terraform apply

terraform destroy
terraform validate
terraform fmt    (format)

terraform state
	Subcommands:
    list    List resources in the state
    mv      Move an item in the state
    pull    Pull current state and output to stdout
    push    Update remote state from a local state file
    rm      Remove instances from the state
    show    Show a resource in the state

terraform graph  (requires GraphViz from brew)
terraform graph | dot -Tsvg > graph.svg


terraform workspace
terraform workspace new newworkspace
	(It gives a space to kind of scope different state management throughout the life cycle of a project)
terraform workspace list

terraform output

terraform import
terraform force-unlock
terraform refresh

terraform taint <resource>  (will taint the resource)
terraform untaint <resource>


terraform output first_output

Others

export TF_LOG=TRACE
make it empty if you don't want any log; TRACE is the most verbose
DEBUG, INFO, WARN, ERROR are other values to set
