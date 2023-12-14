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


| Feature             | AWS Inspector                                                                   | AWS Detective                                                                                 | AWS CloudWatch                                                                                          | AWS Security Hub                                                                   | AWS GuardDuty                                                                                                          |
|---------------------|---------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| **Purpose**         | Identify potential security vulnerabilities and compliance issues in workloads  | Investigate security incidents and correlate events across multiple AWS accounts and services | Monitor performance and health of AWS resources                                                         | Identify and remediate security and compliance issues across AWS accounts          | Continuously monitor AWS environments for security threats and suspicious activities                                   |
| **Type of service** | Security assessment tool                                                        | Investigation and threat hunting service                                                      | Monitoring service                                                                                      | Security and compliance management service                                         | Security incident and event management (SIEM) service                                                                  |
| **Data collection** | Collects data from AWS resources, including EC2 instances, VPCs, and S3 buckets | Collects data from AWS resources, including VPCFlowLogs, CloudTrail, and AWS Security Groups  | Collects logs and metrics from AWS resources                                                            | Collects security information and compliance findings from AWS resources           | Collects security events from various sources, including AWS resources, cloud services, and on-premises infrastructure |
| **Findings**        | Identifies potential security vulnerabilities and compliance issues             | Identifies security incidents and correlations across multiple AWS accounts and services      | Monitors resource health, identifies performance bottlenecks and potential issues, and generates alerts | Identifies and remediates security and compliance issues                           | Detects and investigates security threats, suspicious activities, and anomalous behavior                               |
| **Response**        | Provides recommendations for remediation                                        | Provides tools for investigation and response to security incidents                           | Provides alerting and dashboards for resource health and performance insights                           | Provides recommendations for remediation and automates security policy enforcement | Provides alerts, dashboards, and other tools for security threat detection and investigation                           |
| **Pricing**         | Fees based on the number of resources assessed                                  | Fees based on the number of security events processed                                         | Free for the first 750 hours of data collection, then $0.03 per hour for each additional hour           | Free                                                                               | Fees based on the number of data ingestion points and the usage of advanced features                                   |


## Sources

| Service          | CloudTrail | VPCFlowLogs | CloudWatch | Security Hub | GuardDuty |
|------------------|------------|-------------|------------|--------------|-----------|
| AWS Inspector    | Yes        | Yes         | Yes        | **No**           | No        |
| AWS Detective    | Yes        | Yes         | Yes        | Yes          | Yes       |
| AWS Security Hub | Yes        | Yes         | Yes        | Yes          | Yes       |
| AWS GuardDuty    | Yes        | Yes         | No         | Yes          | Yes       |


## Links

 

