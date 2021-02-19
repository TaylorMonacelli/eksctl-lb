#!/bin/bash

set -euo pipefail

kubectl apply -n default -f ./k8s-manifests/nlb

sleep 5

nlb_dns=$(kubectl get svc -n default nginx-example-service -o=jsonpath='{.status.loadBalancer.ingress[0].hostname}')

echo "NLB url: ${nlb_dns}"
echo "Note: The NLB creation can take a few minutes"
