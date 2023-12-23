---
title: AWS compute and App Runner

time: 2023-12-19 09:00:00
description: >
  AWS App Runner

authors:
    - Alexander Friesen
tags:
  - aws
  - app_runner
  - compute

---

## Intro

AWS App Runner:

from:

- **source code** or a
- **container image**

directly to a **scalable** and **secure web application** in the AWS Cloud

automatic deployments

- each time **a commit is pushed** to the code repository or
- a **new container image version** is pushed to the image repository.

## Comparison to other compute

High level.

![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/IeKaZsPCNn.png)

### EC2 - completely **self managed by user, everything above Hyperscaler**

Owned by AWS:
- Hypervisor

Out of scope:
- Automation
- OS, Language runtime
- Deployment
- Load balancing

![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/MR7kKqfJXo.png)

### Elastic Beanstalk - uses CloudFormation. but resources are still owned by user

Owned by AWS:
- Hypervisor
- **Automation** - via Cloudformation

Out of scope:

- OS, Language runtime
- Deployment
- Load balancing

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/zm3sCzuMwz.png)

### ECS Ec2 -  managed panel to oversee Ec2 instances

New container abstraction came in: **Container Runtime**.

But you pay the price of managing the Ec2 instances of the Ec2 cluster.

Owned by AWS:
- Hypervisor
- **Container Runtime** - hides OS, Language runtime

Out of scope:

- **install ECS agent**
- **Autoscaling of EC2 instances** (autoscaling groups)
- Deployment
- Load balancing

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/uXRKDkvDjm.png)


### ECS Fargate -  managed Container-runtime, container-panel for orchestration. **Load Balancing out of scope** And **deploying out of scope**

New container abstraction came in: **Container Runtime**

Owned by AWS:
- Hypervisor
- **Container Runtime** - hides OS, Language runtime

Out of scope:

- Deployment
- Load balancing

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/EDoHelDbbG.png)

### App Runner - code/container to app. **Load Balancing IN scope**

Owned by AWS:

- Hypervisor
- Container Runtime
- **Deployment**
- **Load balancing**

Out of scope:
- only web-app-code (container or code)

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/fiUQHYdMwr.png)

This is what **AWS deploys behind the scenes**.
![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/3nl5VOtpct.png)



### AWS Lightsail vs App Runner

![Alt text](https://letmetechyou.com/wp-content/uploads/2021/10/amazon-lightsail.jpg)


![Alt text](https://media.amazonwebservices.com/blog/2018/ls_option_linux_app_1.png)



Overall, **Lightsail** is a good choice for developers who need a general-purpose platform for deploying a wide variety of applications. 

**App Runner** is a good choice for developers who need a specialized platform for deploying **containerized microservices**.


#### Lightsail


<https://aws.amazon.com/blogs/aws/amazon-lightsail-update-more-instance-sizes-and-price-reductions/>



**Lightsail** is a more general-purpose platform that can be used to deploy a **wide variety of applications, including websites, web applications, and backend services**. It offers a variety of instance types, including **virtual private server (VPS)** and container instances, as well as a variety of storage options. Lightsail also includes a number of features for managing your infrastructure, such as load balancing, content delivery networks (CDNs), and domain management.

#### App Runner

**App Runner** is a more specialized platform that is specifically designed for deploying containerized microservices. It offers a number of features that are specifically designed for this use case, such as auto-scaling, built-in health checks, and integrated container registry. App Runner is also more cost-effective than Lightsail for running microservices, as it does not charge for unused resources.

#### Direct comparison


| Feature | Lightsail | App Runner |
|---|---|---|
| **Purpose** | General-purpose platform for **deploying a wide variety of applications** | Specialized platform for **deploying containerized** microservices |
| **Instance types** | VPS, container instances | Container instances only |
| **Storage options** | S3, Elastic Block Store (EBS), CloudWatch Logs | S3, CloudWatch Logs |
| **Networking** | VPC, Elastic IP addresses | VPC only |
| **Auto-scaling** | Yes | Yes |
| **Health checks** | Yes | Yes |
| **Container registry** | Public Docker Hub | Private Docker Hub or Amazon ECR |
| **Cost** | More expensive than App Runner for microservices | More cost-effective than Lightsail for microservices |

**Here is a table summarizing the recommended use cases for each service:**

| Use case | Recommended service |
|---|---|
| Deploying a variety of applications, including websites, web applications, and backend services | Lightsail |
| Deploying containerized microservices | App Runner |
| Deploying containerized applications with a focus on cost-effectiveness | App Runner |


## Links

- Re invent App runner and other compute <https://www.youtube.com/watch?v=MZBbhqt6bQs>
- <https://docs.aws.amazon.com/apprunner/latest/dg/what-is-apprunner.html>
