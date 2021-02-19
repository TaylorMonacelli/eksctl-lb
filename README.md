# eksctl-lb
Demo of the AWS Load Balancer Controller deployed in a Kubernetes cluster created with eksctl

> Note: This is not production-ready setup. It only demonstrates how to deploy the AWS Load Balancer controller and create NLB via Service and ALB via Ingress.

## Required tools
1. `eksctl` version `0.38.0` - [Install instructions](https://eksctl.io/introduction/#installation)
2. `kubectl` version `v1.18.0` - [Install instructions](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
3. `helm` version `v3.2.0` - [Install instructions](https://helm.sh/docs/intro/install/)


## How to deploy
1. Create the EKS cluster. After the cluster is created, the eksctl cli will add the cluster config in the default kubeconfig location and change the current kube context to the newly created one.
    ```bash
    ./scripts/create-eks-cluster.sh
    ```
2. Deploy the AWS Load Balancer Controller
    ```bash
    ./scripts/deploy-aws-lb-controller.sh
    ```
3. Deploy the NLB example. The script will print the NLB url in the terminal. Note that it can take a few minutes until the load balancer is ready.
    ```bash
    ./scripts/deploy-nlb-example.sh
    ```
4. Deploy the ALB example. The script will print the ALB url in the terminal. Note that it can take a few minutes until the load balancer is ready.
    ```bash
    ./scripts/deploy-alb-example.sh
    ```

## Cleanup
1. Delete all examples and the entire Kubernetes cluster
    ```bash
    ./scripts/cleanup.sh
    ```
