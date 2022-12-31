#!/bin/bash

set -xeuo pipefail

echo "Removing the nlb example..."
kubectl delete -n default -f ./k8s-manifests/nlb

echo "Removing the alb example..."
kubectl delete -n default -f ./k8s-manifests/alb

sleep 60

echo "Removing the AWS Load Balancer Controller..."

helm delete -n kube-system aws-load-balancer-controller

echo "Removing the eksctl cluster..."
eksctl delete cluster -f config.yaml

echo "Cleanup complete"
