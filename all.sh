set -x

./scripts/create-eks-cluster.sh
./scripts/deploy-aws-lb-controller.sh
./scripts/deploy-nlb-example.sh
./scripts/deploy-alb-example.sh
# ./scripts/cleanup.sh
