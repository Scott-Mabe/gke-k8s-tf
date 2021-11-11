#! /bin/bash

# this will create a terraform.tfvars file to be used with cloud shell
cat > terraform.tfvars <<EOF
region          = "us-central1"
zone            = "us-central1-a"
location        = "us-central1-a"
project_id      = "$GOOGLE_CLOUD_PROJECT"
name            = "simple-example"
network_name    = "terra-k8s"
subnet_cidr1    = "10.10.0.0/24"
subnet_cidr2    = "10.11.0.0/24"
EOF

terraform init
