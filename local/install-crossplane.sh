

#!/bin/bash
if [[ $(kubectl config current-context) -eq "kind-kind" ]]
then
    helm repo add crossplane-stable https://charts.crossplane.io/stable
    helm repo update
    helm install crossplane --namespace crossplane-system --create-namespace crossplane-stable/crossplane  --create-namespace  
else
    echo "Not in KIND context! Exiting"
fi