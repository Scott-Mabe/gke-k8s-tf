#!/usr/bin/env bash

set -x 
set -e
clusterID="$(terraform output cluster_name)"
# Set your compute zone to match what your terraform is creating
gcloud config set compute/zone us-central1-a

# Authenticate to your newly created cluster 
gcloud container clusters get-credentials terra-k8s

# Moving tf init to here 
terraform init


# Apply the copied .tf file
terraform apply -auto-approve
