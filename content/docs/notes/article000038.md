---
title: AWS Ressource Access Manager RAM

time: 2023-12-21 11:00:00
description: >
  AWS Ressource Access Manager RAM

authors:
    - Alexander Friesen
tags:
  - aws
  - RAM
  - trusted_access
  - trusted_service

---

## Intro

Resource sharing


Demo

[![Data_AI_Data_Mesh](https://img.youtube.com/vi/KL9SICG52zY/0.jpg)](http://www.youtube.com/watch?v=KL9SICG52zY "Data+AI Data Mesh")

## Description

AWS Resource Access Manager (AWS RAM) is a service that helps you securely share your AWS resources across multiple AWS accounts, 

 - within your organization or organizational units (OUs), and
 

### trusted service / trusted access


You MUST use **trusted access** to enable **AWS RAM service**,  (called the **trusted service**) to access your OU for sharing.

Trusted service AWS RAM will **perform tasks** in your **organization** and its **accounts** . 

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/KlYmgUmetQ.png)

See 
- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html>
- <https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html>
- RAM <https://docs.aws.amazon.com/cli/latest/reference/ram/enable-sharing-with-aws-organization.html>


This involves **granting permissions to the trusted service** but does not otherwise affect the permissions for IAM users or roles.

When you enable access, the **trusted service** can create an IAM role called a **service-linked role** in **every account** in your organization.

#### service-linked role in every account

That **service-linked role** has a permissions policy that allows the **trusted service** to do tasks. 

This enables you to specify settings and configuration details that you would like the **trusted service** to maintain in your organization’s accounts on your behalf.


### enabling trusted access for trusted service via service-linked role

To enable **trusted access** with AWS Organizations:

 - From the AWS RAM CLI, use the `enable-sharing-with-aws-organizations` command.
 - Name of the `IAM service-linked role` that can be created in accounts when trusted access is enabled: 
`AWSResourceAccessManagerServiceRolePolicy`.



## Links

(1) Overview of Service Catalog - AWS Service Catalog. https://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html.
(2) What Is Service Catalog? - AWS Service Catalog. https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html.
(3) Overview of Service Catalog - Amazon Service Catalog. https://docs.amazonaws.cn/en_us/servicecatalog/latest/adminguide/what-is_concepts.html.
(4) Service catalog - Wikipedia. https://en.wikipedia.org/wiki/Service_Catalog.