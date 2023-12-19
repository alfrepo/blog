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

### Fargate -  managed Container-runtime, container-panel for orchestration. **Load Balancing out of scope** And **deploying out of scope**

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

## Links

- Re invent App runner and other compute <https://www.youtube.com/watch?v=MZBbhqt6bQs>
- <https://docs.aws.amazon.com/apprunner/latest/dg/what-is-apprunner.html>
