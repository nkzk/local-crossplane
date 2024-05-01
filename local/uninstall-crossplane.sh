#!/bin/bash
if [[ $(kubectl config current-context) -eq "kind-kind" ]]
then
    helm uninstall crossplane -n crossplane-system
else
    echo "Not in KIND context! Exiting"
fi