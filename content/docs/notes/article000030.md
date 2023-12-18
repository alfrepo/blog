---
title: AWS Lattice vs Verified Access

time: 2023-12-18 11:00:00
description: >
  AWS Lattice vs Verified Access

authors:
    - Alexander Friesen
tags:
  - aws
  - lattice

---

## Intro

AWS EBS storage classes

Amazon VPC Lattice and AWS Verified Access are both AWS services that help you to secure your cloud environment. However, they have different purposes and capabilities.

## Description

**Amazon VPC Lattice** is a fully managed service that allows you to connect, secure, and monitor all of your services across multiple accounts and virtual private clouds (VPCs). It does this by creating a mesh of service networks that allow your services to communicate with each other without exposing them to the public internet. VPC Lattice also provides a number of security features, such as authentication and authorization, that help you to protect your services from unauthorized access.

![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/un3YwBbsLo.png)

**AWS Verified Access** is a service that provides secure access to corporate applications without a VPN. It does this by evaluating each access request in real time against a set of predefined requirements. These requirements can be based on the identity of the user, the device they are using, and the application they are trying to access. Verified Access can also be used to enforce compliance with security and regulatory requirements.

In general, VPC Lattice is a good choice for organizations that need to securely connect and manage their cloud resources, while Verified Access is a good choice for organizations that need to securely access corporate applications without using a VPN.

![](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/0O1x3UeylE.png)


**Here is a table that summarizes the key differences between VPC Lattice and Verified Access:**

| Feature | AWS VPC Lattice | AWS Verified Access |
|---|---|---|
| Purpose | Connect, secure, and monitor services across multiple accounts and VPCs | Provide secure access to corporate applications without a VPN |
| Security features | Authentication, authorization, network security policies | Identity and access management, device posture assessment, compliance enforcement |
| Use cases | Connecting microservices, managing VPCs, enforcing security policies | Accessing corporate applications from anywhere, complying with security and regulatory requirements |
| Pricing | Based on the number of VPC Lattice service networks | Based on the number of users and devices |

## Links

- <https://www.youtube.com/watch?v=zQk9AIPVdXs>
- <https://www.youtube.com/watch?v=Kkxn-bAIlnI>
