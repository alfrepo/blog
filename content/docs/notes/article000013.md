---
title: AWS Kubernetes on EKS - Part1 - deploy cluster
time: 2023-11-21 20:00:00
description: >
  Part1 deploy the AWS EKS Kubernetes cluster 
  with terraform
authors:
    - Alexander Friesen

tags:
  - kubernetes
---


## Intro

How to configure Kubernetes on AWS to run some experiments,
deploy a service in Spring-Boot


When configuring the EKS with terraform I was following 
https://auth0.com/blog/terraform-eks-java-microservices/

### Resulting GitHub project

My implementation is located here:
https://github.com/alfrepo/kubernetes-eks-spring-boot-prototype/tree/main


### Enabling IAM principal access to your cluster

"Current user or role does not have access to Kubernetes objects on this EKS Cluster"


When the EKS cluster is just provisioned, <br>
following https://auth0.com/blog/terraform-eks-java-microservices/ <br>
authorized by a ``federated role`` <br>
then your federated role will NOT have access to EKS on AWS Console<br> resulting in an error ``Your current IAM principal doesnt have access to Kubernetes objects on this cluster``. <br>

As I am loging in into the console via IAM 

![Vision](article0003/../article00013/aws-console-eks-no-permissions.png)

You can follow the howto, to fix that

https://aws.amazon.com/de/blogs/containers/a-quick-path-to-amazon-eks-single-sign-on-using-aws-sso/


At the end this command empwers your role to use EKS on AWS console.
``` shell
eksctl create iamidentitymapping \
    --cluster $clustername \
    --arn "arn:aws:iam::$accountId:role/$rolename" \
    --username admin \
    --group system:masters
```

Where the role is retrieved via

```shell
# ssorole
# get only the role
aws sts get-caller-identity --query Arn --output text --profile default | cut -d/ -f2

AWSReservedSSO_AdministratorAccess-unrestricted_58c9bbf239970a34

```


## Terraform ##

You can execute this script via terraform e.g. like this




Save the Shell script: `enableRoleForEksIdempotent.sh` <br>
Here the environment variables ``rolename,accountId,clustername``  must be set from outside.

``` shell
#rolename="AWSReservedSSO_AdministratorAccess-unrestricted_58c9bbf239970a34"
#accountId="112233445566"
#clustername="alf-dev-eks-auth0-eks"

# non existant role gives:
#  Error: no iamidentitymapping with arn "arn:aws:iam::112233445566:role/AWSReservedSSO_AdministratorAccess-unrestricted_58c9bbf239970a34" found
eksctl_search_role=$(eksctl get iamidentitymapping  --cluster $clustername 2>&1)
echo $eksctl_search_role

# make the command idempotent, otherwise the role will be added every time again
if [[ $eksctl_search_role == *"$rolename"* ]]; then
    echo "Found the role. Dont recreate"
else
    echo "Not found the role. Add the role now."
    eksctl create iamidentitymapping \
        --cluster $clustername \
        --arn "arn:aws:iam::$accountId:role/$rolename" \
        --username admin \
        --group system:masters
fi

```


Use Terraform code with ``local-exec``
```shell

# Define a null_resource to trigger the script after the EKS cluster is created
resource "null_resource" "enable_federated_role_for_eksconsole_script" {
  # This resource depends on the creation of the EKS cluster
  depends_on = [module.eks.cluster_id]

  # triggered when the module.eks.cluster_id is modified
  triggers = {
    eks_cluster_id = module.eks.cluster_id
  }

  # Use the local-exec provisioner to execute your shell script
  provisioner "local-exec" {
    command = "bash enableRoleForEksIdempotent.sh"
    
    # You can also use environment variables or pass data to the script
    environment = {
      rolename = local.aws_federation_iam_rolename
      accountId = local.aws_account_id
      clustername = module.eks.cluster_name
    }
  }
}

```

And then it works

![Vision](article0003/../article00013/aws-console-eks-visible.png)


And when checking the ``aws-auth config-map``, where <br>
the ``AWS IAM roles`` <br>
are mapped to ``EKS credentials``.

In this case the
federated AWS-IAM-role `arn:aws:iam::112233445566:role/initial-eks-node-group-20231120121054428200000006` is mapped to act as /to get permissions of <br>
EKS-user `admin` <br>
EKS-group `system:masters`.


To see the AWS Config Map do:

    kubectl edit configmap/aws-auth -n kube-system``

This is how it looks like

```yaml
    
    # Please edit the object below. Lines beginning with a '#' will be ignored,
    # and an empty file will abort the edit. If an error occurs while saving this file will be
    # reopened with the relevant failures.
    #
    apiVersion: v1
    data:
      mapRoles: |
        - groups:
          - system:bootstrappers
          - system:nodes
          rolearn: arn:aws:iam::112233445566:role/initial-eks-node-group-20231120121054428200000006
          username: system:node:{{EC2PrivateDNSName}}
        - groups:
          - system:masters
          rolearn: arn:aws:iam::112233445566:role/AWSReservedSSO_AdministratorAccess-unrestricted_58c9bbf239970a34
          username: admin
      mapUsers: |
        []
    kind: ConfigMap
    metadata:
      creationTimestamp: "2023-11-20T12:22:08Z"
      name: aws-auth
      namespace: kube-system
      resourceVersion: "30169"
      uid: e4e9eccd-0ea4-41de-83eb-8531f6601cd5

```

To get all clusterroles of EKS (including "admin") do

```js
kubectl get clusterroles


NAME                                                                   CREATED AT
admin                                                                  2023-11-19T11:19:04Z
aws-load-balancer-controller-role                                      2023-11-19T11:33:18Z
aws-node                                                               2023-11-19T11:19:15Z
cluster-admin                                                          2023-11-19T11:19:04Z
ebs-csi-node-role                                                      2023-11-19T11:35:25Z
ebs-external-attacher-role                                             2023-11-19T11:35:24Z
ebs-external-provisioner-role                                          2023-11-19T11:35:25Z
ebs-external-resizer-role                                              2023-11-19T11:35:25Z
ebs-external-snapshotter-role                                          2023-11-19T11:35:25Z
edit                                                                   2023-11-19T11:19:04Z
eks-console-dashboard-full-access-clusterrole                          2023-11-19T11:47:18Z
eks:addon-manager                                                      2023-11-19T11:19:15Z
eks:az-poller                                                          2023-11-19T11:19:09Z
eks:certificate-controller-approver                                    2023-11-19T11:19:09Z
eks:certificate-controller-signer                                      2023-11-19T11:19:09Z
eks:cloud-controller-manager                                           2023-11-19T11:19:09Z
eks:cloud-provider-extraction-migration                                2023-11-19T11:19:10Z
eks:cloudwatch-agent-role                                              2023-11-19T11:19:09Z
eks:cluster-event-watcher                                              2023-11-19T11:19:10Z
eks:fargate-manager                                                    2023-11-19T11:19:15Z
eks:fargate-scheduler                                                  2023-11-19T11:19:10Z
eks:k8s-metrics                                                        2023-11-19T11:19:10Z
eks:network-policy-controller                                          2023-11-19T11:19:20Z
eks:node-bootstrapper                                                  2023-11-19T11:19:15Z
eks:node-manager                                                       2023-11-19T11:19:15Z
eks:nodewatcher                                                        2023-11-19T11:19:10Z
eks:pod-identity-mutating-webhook                                      2023-11-19T11:19:10Z
eks:service-operations                                                 2023-11-19T11:19:10Z
eks:tagging-controller                                                 2023-11-19T11:19:10Z
system:aggregate-to-admin                                              2023-11-19T11:19:04Z
system:aggregate-to-edit                                               2023-11-19T11:19:04Z
system:aggregate-to-view                                               2023-11-19T11:19:04Z
system:auth-delegator                                                  2023-11-19T11:19:04Z
system:basic-user                                                      2023-11-19T11:19:04Z
system:certificates.k8s.io:certificatesigningrequests:nodeclient       2023-11-19T11:19:04Z
system:certificates.k8s.io:certificatesigningrequests:selfnodeclient   2023-11-19T11:19:04Z
system:certificates.k8s.io:kube-apiserver-client-approver              2023-11-19T11:19:04Z
system:certificates.k8s.io:kube-apiserver-client-kubelet-approver      2023-11-19T11:19:04Z
system:certificates.k8s.io:kubelet-serving-approver                    2023-11-19T11:19:04Z
system:certificates.k8s.io:legacy-unknown-approver                     2023-11-19T11:19:04Z
system:controller:attachdetach-controller                              2023-11-19T11:19:04Z
system:controller:certificate-controller                               2023-11-19T11:19:04Z
system:controller:clusterrole-aggregation-controller                   2023-11-19T11:19:04Z
system:controller:cronjob-controller                                   2023-11-19T11:19:04Z
system:controller:daemon-set-controller                                2023-11-19T11:19:04Z
system:controller:deployment-controller                                2023-11-19T11:19:04Z
system:controller:disruption-controller                                2023-11-19T11:19:04Z
system:controller:endpoint-controller                                  2023-11-19T11:19:04Z
system:controller:endpointslice-controller                             2023-11-19T11:19:04Z
system:controller:endpointslicemirroring-controller                    2023-11-19T11:19:04Z
system:controller:ephemeral-volume-controller                          2023-11-19T11:19:04Z
system:controller:expand-controller                                    2023-11-19T11:19:04Z
system:controller:generic-garbage-collector                            2023-11-19T11:19:04Z
system:controller:horizontal-pod-autoscaler                            2023-11-19T11:19:04Z
system:controller:job-controller                                       2023-11-19T11:19:04Z
system:controller:namespace-controller                                 2023-11-19T11:19:04Z
system:controller:node-controller                                      2023-11-19T11:19:04Z
system:controller:persistent-volume-binder                             2023-11-19T11:19:04Z
system:controller:pod-garbage-collector                                2023-11-19T11:19:04Z
system:controller:pv-protection-controller                             2023-11-19T11:19:04Z
system:controller:pvc-protection-controller                            2023-11-19T11:19:04Z
system:controller:replicaset-controller                                2023-11-19T11:19:04Z
system:controller:replication-controller                               2023-11-19T11:19:04Z
system:controller:resourcequota-controller                             2023-11-19T11:19:04Z
system:controller:root-ca-cert-publisher                               2023-11-19T11:19:04Z
system:controller:route-controller                                     2023-11-19T11:19:04Z
system:controller:service-account-controller                           2023-11-19T11:19:04Z
system:controller:service-controller                                   2023-11-19T11:19:04Z
system:controller:statefulset-controller                               2023-11-19T11:19:04Z
system:controller:ttl-after-finished-controller                        2023-11-19T11:19:04Z
system:controller:ttl-controller                                       2023-11-19T11:19:04Z
system:coredns                                                         2023-11-19T11:19:15Z
system:discovery                                                       2023-11-19T11:19:04Z
system:heapster                                                        2023-11-19T11:19:04Z
system:kube-aggregator                                                 2023-11-19T11:19:04Z
system:kube-controller-manager                                         2023-11-19T11:19:04Z
system:kube-dns                                                        2023-11-19T11:19:04Z
system:kube-scheduler                                                  2023-11-19T11:19:04Z
system:kubelet-api-admin                                               2023-11-19T11:19:04Z
system:metrics-server                                                  2023-11-19T11:33:16Z
system:metrics-server-aggregated-reader                                2023-11-19T11:33:16Z
system:monitoring                                                      2023-11-19T11:19:04Z
system:node                                                            2023-11-19T11:19:04Z
system:node-bootstrapper                                               2023-11-19T11:19:04Z
system:node-problem-detector                                           2023-11-19T11:19:04Z
system:node-proxier                                                    2023-11-19T11:19:04Z
system:persistent-volume-provisioner                                   2023-11-19T11:19:04Z
system:public-info-viewer                                              2023-11-19T11:19:04Z
system:service-account-issuer-discovery                                2023-11-19T11:19:04Z
system:volume-scheduler                                                2023-11-19T11:19:04Z
view                                                                   2023-11-19T11:19:04Z
vpc-resource-controller-role                                           2023-11-19T11:19:19Z

```




## Links

 - Howto for EKS on AWS with Terraform https://auth0.com/blog/terraform-eks-java-microservices/
 - Fix https://veducate.co.uk/aws-console-permission-eks-cluster/
 - Howto for using federated roles with EKS console https://docs.aws.amazon.com/eks/latest/userguide/add-user-role.html




