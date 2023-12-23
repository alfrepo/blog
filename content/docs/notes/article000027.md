---
title: AWS infrastructure FINDINGS and compliance

time: 2023-12-14 11:00:00
description: >
  AWS findings and compliance

authors:
    - Alexander Friesen
tags:
  - aws

---

## Intro

List of AWS services, which are helpful to centralize **findings and compliance** in AWS

a comparison of AWS Inspector, Detective, and other AWS services for continuous monitoring of logs and finding creation:


## Description


| Feature             | AWS Inspector                                                                   | AWS Detective                                                                                 | AWS CloudWatch                                                                                          | AWS Security Hub                                                                   | AWS GuardDuty                                                                                                          | Macie |
|---------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| **Purpose**         | Identify potential security vulnerabilities (like **open port 80**) and compliance issues in infrastructure, workloads. <br><br> Using **Asessment Templates** scans the infrastructure.   | investigates security incidents and correlate events across multiple AWS accounts and services | Monitor performance and health of AWS resources                                                         | Identify and remediate security and compliance issues across AWS accounts          | Continuously monitors for activity such as **unusual API calls** or **potentially unauthorized deployments**. To indicate a possible account **compromise**, **security threats** and **suspicious** activities                                   | Discovers, **classifies**, and **protects** sensitive data in Amazon S3 buckets |
| **Type of service** | Security assessment tool                                                        | Investigation and threat hunting service                                                      | Monitoring service                                                                                      | Security and compliance management service                                         | Security incident and event management (SIEM) service                                                                  | Uses machine learning and pattern matching to identify sensitive data in Amazon S3 buckets, such as personally identifiable information (PII), financial data, and intellectual property |
| **Data collection** | Collects data from AWS resources, including EC2 instances, VPCs, and S3 buckets | Collects data from AWS resources, including VPCFlowLogs, CloudTrail, and AWS Security Groups  | Collects logs and metrics from AWS resources                                                            | Collects security information and compliance findings from AWS resources           | Collects security events from various sources, including AWS resources, cloud services, and on-premises infrastructure | Amazon S3 access logs, Amazon CloudTrail logs, and other data sources associated with Amazon S3 buckets |
| **Findings**        | Identifies **potential security vulnerabilities** and compliance issues             | Identifies security incidents and correlations across multiple AWS accounts and services      | Monitors resource health, identifies performance bottlenecks and potential issues, and generates alerts | Identifies and remediates security and compliance issues                           | Detects and investigates security threats, suspicious activities, and anomalous behavior                               | Sensitive data discovery, classification, and tagging |
| **Response**        | Provides recommendations for remediation                                        | Provides tools for investigation and response to security incidents                           | Provides alerting and dashboards for resource health and performance insights                           | Provides recommendations for remediation and automates security policy enforcement | Provides alerts, dashboards, and other tools for security threat detection and investigation                           |  Organizations that need to discover, classify, and protect sensitive data in Amazon S3 buckets |
| **Pricing**         | Fees based on the number of resources assessed                                  | Fees based on the number of security events processed                                         | Free for the first 750 hours of data collection, then $0.03 per hour for each additional hour           | Free                                                                               | Fees based on the number of data ingestion points and the usage of advanced features                                   | Pay-per-usage, based on the storage capacity of the Amazon S3 buckets analyzed |

## Sources

| Data Source | AWS Inspector | AWS Detective | AWS Security Hub | AWS GuardDuty | AWS Macie |
|---|---|---|---|---|---|
| VPC Flow Logs | **Yes** | **Yes** | **Yes** | **Yes** | **Yes** |
| CloudTrail Logs | **Yes** | **Yes** | **Yes** | **Yes** | **Yes** |
| GuardDuty Findings | **Yes** | **Yes** | **No** | **Yes** | **No** |
| AWS Config | **Yes** | **Yes** | **Yes** | **No** | **No** |
| Firewall Manager | **Yes** | **Yes** | **Yes** | **No** | **No** |
| Health | **Yes** | **Yes** | **Yes** | **No** | **No** |
| IAM Access Analyzer | **Yes** | **Yes** | **Yes** | **No** | **No** |
| IoT Device Defender | **Yes** | **No** | **No** | **Yes** | **No** |
| Amazon Inspector Findings | **Yes** | **No** | **No** | **No** | **No** |
| Systems Manager Patch Manager | **Yes** | **Yes** | **Yes** | **No** | **No** |
| EKS audit logs | **Yes** | **Yes** | **No** | **No** | **No** |
| Amazon S3 access logs | **No** | **No** | **No** | **No** | **Yes** |
| Amazon S3 object metadata | **No** | **No** | **No** | **No** | **Yes** |


## AWS Inspector

See <https://k21academy.com/amazon-web-services/amazon-inspector/>

![](https://k21academy.com/wp-content/uploads/2021/05/Again-Review-Findings.gif)


## AWS Detective


## AWS Security Hub

## AWS GuardDuty

## Macie

See S3 <https://aws.amazon.com/blogs/security/how-to-use-amazon-macie-to-preview-sensitive-data-in-s3-buckets/>

![](https://d2908q01vomqb2.cloudfront.net/22d200f8670dbdb3e253a90eee5098477c95c23d/2022/11/25/img2-9.png)


![](https://d2908q01vomqb2.cloudfront.net/22d200f8670dbdb3e253a90eee5098477c95c23d/2022/11/25/img3-5.png)

See CloudTrail <https://media.amazonwebservices.com/blog/2017/Macie%20Launch-20-CloudTrailRiskView.png/>


## GuardDUty



## GuardDUty

## Links

 

