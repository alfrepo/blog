---
title: AWS centralized governance

time: 2023-12-13 11:00:00
description: >
  AWS governance

authors:
    - Alexander Friesen
tags:
  - aws

---

## Intro

List of AWS services, which are helpful to centralize governance in AWS


## Description

Here are some of the AWS services that are helpful to centralize governance in AWS: 

### AWS Organizations

 ![](./article00026/organizations-multiaccountlandingzone.png)

 <https://docs.aws.amazon.com/managedservices/latest/onboardingguide/malz-net-arch-section.html>


 ![](./article00026/organizations-ou-example.png)

 <https://aws.amazon.com/de/blogs/security/use-aws-firewall-manager-to-deploy-protection-at-scale-in-aws-organizations/>

AWS Organizations is a service that lets you centralize management and governance of your AWS accounts and resources across multiple regions. With Organizations, you can create multiple AWS accounts to isolate different environments, such as production, development, and testing. You can also use Organizations to define policies that control access to resources and enforce compliance with your security and compliance standards.

### AWS Control Tower

 ![](./article00026/controltower.png)

AWS Control Tower is a service that provides a fully managed way to set up and manage a secure, multi-account AWS environment. Control Tower simplifies the process of provisioning and configuring new accounts, and it provides a central console for managing your AWS environment. With Control Tower, you can enforce security and compliance policies across your AWS accounts, and you can also automate common tasks, such as creating and configuring networks, VPCs, and security groups.

### AWS Config

![](./article00026/awsconfig.png)

AWS Config is a service that tracks and records changes to your AWS resources. This information can be used to detect and troubleshoot configuration drift, and it can also be used to audit your AWS environment for compliance with your security and compliance standards.

### AWS CloudTrail

![](./article00026/cloudtrail.png)

AWS CloudTrail is a service that records AWS API calls made from your AWS account. This information can be used to track user activity, to troubleshoot issues, and to audit your AWS environment for compliance with your security and compliance standards.

### AWS Inspector

![](./article00026/inspector.png)

![](./article00026/inspector-console.png)

AWS Inspector is a service that can scan your AWS infrastructure for security vulnerabilities. Inspector can scan your EC2 instances, your S3 buckets, and your VPCs, and it can also scan your network traffic for suspicious activity.

### AWS Security Hub

![](./article00026/securityhub.png)

AWS Security Hub provides a centralized view of your AWS security posture. Security Hub can aggregate security alerts and findings from AWS Config, AWS CloudTrail, and other AWS services, and it can also integrate with third-party security solutions.

### AWS Secrets Manager

![](./article00026/secretmanager.png)

AWS Secrets Manager is a service that securely stores and manages sensitive data, such as passwords, access keys, and API keys. Secrets Manager can store this data in a central repository, and it can also rotate the data on a regular basis to help protect against data breaches.

### AWS Lake Formation

![](./article00026/lakeformation.png)

AWS Lake Formation is a service that helps you to build, manage, and secure data lakes in AWS. Lake Formation provides a centralized platform for managing your data lake, and it can also help you to enforce data governance policies.

### AWS X-Ray

![](./article00026/xray.png)

AWS X-Ray is a service that helps you to debug and troubleshoot distributed applications. X-Ray can trace requests as they flow through your application and across multiple AWS services, and it can also help you to identify performance bottlenecks and identify potential security vulnerabilities.

These are just a few of the many AWS services that can help you to centralize governance in AWS. With the right combination of services, you can create a secure, compliant, and efficient AWS environment.


### AWS Firewall Manager (FMS)

![](./article00026/firewallmanager.png)

See Reinvent 
<https://youtu.be/lTJxWAiQrHM?si=EoVasfr8MVK8_Yaf&t=1>

<https://aws.amazon.com/de/blogs/security/use-aws-firewall-manager-to-deploy-protection-at-scale-in-aws-organizations/>

Firewall Manager uses **AWS Config** in the background.

AWS Firewall Manager is a security management service that helps 
across **multiple accounts**

- centrally configure and manage **firewall rules**  and applications in AWS Organizations.  
- helps to provision **AWS WAF rules**, 
- create **AWS Shield advanced** protection, and 
- enable **security groups for Amazon EC2 instances** launched **across multiple accounts** in AWS Organizations. 


Following are the three prerequisites for using AWS Firewall Manager

1.  AWS Organizations should be used to manage accounts with all features enabled.
2.  One of the accounts in the AWS Organizations should be designated as an administrator for AWS Firewall Manager.
3.   AWS Config must be enabled on all the accounts within the AWS Organizations.

Once these prerequisites are met, AWS Firewall can be used to create a master security group. Policies are created in AWS Firewall which is applied to individual application security groups by mapping to specific application name/value tags.



### AWS Consolidated Billing
![](./article00026/consolidatedbilling.png)

To use AWS Consolidated Billing, you must create a management account in AWS Organizations and add your member accounts to the organization. You can then enable consolidated billing for the organization. Once consolidated billing is enabled, AWS will automatically consolidate the usage and costs of all member accounts into a single invoice.



To enable consolidated billing, follow these steps:

1. Go to the **AWS Organizations** console and select the management account for which you want to enable consolidated billing.
2. In the **Accounts** section, select the **Member accounts** link.
3. Select the check box for the account that you want to add to consolidated billing.
4. Click the **Add to consolidated billing** button.
5. On the **Enable consolidated billing** page, select the **Enable consolidated billing** button.





## Links

 

