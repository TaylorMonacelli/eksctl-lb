#!/bin/bash

set -euo pipefail

kubectl apply -n default -f ./k8s-manifests/alb

sleep 5

alb_dns=$(kubectl get ingress -n default ingress-2048 -o=jsonpath='{.status.loadBalancer.ingress[0].hostname}')

echo "ALB url: ${alb_dns}"
echo "Note: The ALB creation can take a few minutes"
