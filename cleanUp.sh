#! /bin/bash

# Remove Kubernetes config after project has been destroyed 
rm -rf ~/.kube/ 

# Remove the coppy of k8s.tf 
rm k8s.tf 
