#!/bin/bash

set -euo pipefail

helm repo add eks https://aws.github.io/eks-charts

cluster_name=$(cat config.yaml | grep '^  name: ' | sed 's/  name: //')

helm upgrade -i aws-load-balancer-controller eks/aws-load-balancer-controller \
  --set clusterName=$cluster_name \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  -n kube-system \
  --wait
