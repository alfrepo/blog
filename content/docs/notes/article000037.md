---
title: AWS Service Catalog

time: 2023-12-21 11:00:00
description: >
  AWS Service Catalog

authors:
    - Alexander Friesen
tags:
  - aws

---

## Intro

AWS Service Catalog.

Delegation cross accounts

<https://aws.amazon.com/de/blogs/mt/simplify-sharing-your-aws-service-catalog-portfolios-in-an-aws-organizations-setup>

Reinvent video
<https://youtu.be/lVfXkWHAtR8?si=nEcy7XklqNZcZrG0&t=504>

## Description

### Key concepts

Sure, here are the key concepts of AWS Service Catalog:

### 1. Users
Service Catalog supports two types of users:
- **Catalog administrators**: They manage a catalog of products (applications and services), organize them into portfolios, and grant access to end users¹.
- **End users**: They receive AWS credentials from their IT department or manager and use the AWS Management Console to launch products to which they have been granted access¹.

### 2. Products
A product is an IT service that you want to make available for deployment on AWS. A product consists of one or more AWS resources, such as EC2 instances, storage volumes, databases, monitoring configurations, and networking components, or packaged AWS Marketplace products¹.

#####  Template in Cloudformation

Product templates are in cloudformation

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/kDEAj1JmFZ.png)

see "ReInvent Video" <https://youtu.be/lVfXkWHAtR8?si=gvEWOfea95ADisaD&t=617>


#####  HashiCorp Terraform Open Source and Terraform Cloud Support
AWS Service Catalog enables quick, self-service provisioning with governance for your **HashiCorp Terraform** Open Source and Terraform Cloud configurations within AWS¹.

##### Provisioned Products
AWS CloudFormation stacks make it easier to manage the life cycle of your product by enabling you to provision, tag, update, and terminate your product instance as a single unit¹.

#### Standardization
Administer and manage approved assets by restricting where the product can be launched, the type of instance that can be used, and many other configuration options².

### 6. Self-service Discovery and Launch
Users browse listings of products (services or applications) that they have access to, locate the product that they want to use, and launch it all on their own as a provisioned product².

### 7. Fine-grain Access Control
Administrators assemble portfolios of products from their catalog, add **constraints** and **resource tags** to be used at provisioning, and then grant **access to the portfolio through AWS Identity and Access Management (IAM)** users and groups².

### 8. Extensibility and Version Control
Administrators can add a product to any number of portfolios and restrict it without creating another copy. Updating the product to a new version propagates the update to all products in every portfolio that references it².




### Portfolio > Product > constraints

Constraints restrict the way AWS resources can be deployed for a product using AWS Service Catalog. 

These constraints can be used for governance or for cost control. There are two main types of constraints, **template constraints, and launch constraints**.


| Constraint Type | Explanation |
|---|---|
| **Launch Constraints** | A launch constraint specifies the **AWS Identity and Access Management (IAM) role** that AWS **Service Catalog assumes** when an end user launches a product. |
| **Template Constraints** | Control the structure and content of a product's template. You can use template constraints to enforce compliance with corporate standards, or to restrict the configuration options that are available to users. E.g. set `Fn::Contains : VPC = vpc-01eb7fd6f29cea57b` to pre-set the VPC |
| **Notification Constraints** | Send **notifications about product events** to an **Amazon SNS topic**. This can be useful for monitoring the status of provisioned products, or for alerting administrators when there are issues. |
| **Tag Update Constraints** | Toggle the ability to update tags after a product has been provisioned. |
| **Stack Set Constraints** | Stack-sets are for multi-account deployment. Multi-account restrictions. You can use **stack set constraints** to enforce deployment parameters, or to **restrict the regions** where provisioned products can be deployed. |

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/nov51hXDsf.png)


### Portfolio > Product > Service actions

End users can perform operational tasks, and troubleshoot issues on the **provisioned products** using **service actions**. 

predefined "actions" are also available inside the porfolio product,
near the template

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/kDEAj1JmFZ.png)

These actions **can be performed without granting full access to each user to AWS services**. Service actions can be defined using **AWS Systems Manager documents**.



## Links

(1) Overview of Service Catalog - AWS Service Catalog. https://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html.
(2) What Is Service Catalog? - AWS Service Catalog. https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html.
(3) Overview of Service Catalog - Amazon Service Catalog. https://docs.amazonaws.cn/en_us/servicecatalog/latest/adminguide/what-is_concepts.html.
(4) Service catalog - Wikipedia. https://en.wikipedia.org/wiki/Service_Catalog.