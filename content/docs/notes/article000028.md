---
title: AWS backup services

time: 2023-12-16 11:00:00
description: >
  AWS backup services

authors:
    - Alexander Friesen
tags:
  - aws

---

## Intro

List of AWS services, which are helpful for backup and disaster recovery.


## Description

Here is a comparison of four AWS services that are used for disaster recovery and data protection:

| Service | Description | RPO (Recovery Point Objective) | RTO (Recovery Time Objective) | Ideal Use Cases |
|---|---|---|---|---|
| AWS DRS (Disaster Recovery Service) | A fully managed disaster recovery service that replicates your on-premises workloads to AWS. | Minutes | Minutes | Protects against unplanned outages, reduces RTO, meets compliance requirements. |
| AWS CloudEndure Disaster Recovery | A fully managed disaster recovery service that replicates your on-premises and cloud workloads to AWS. | Minutes | Minutes | Protects against unplanned outages, reduces RTO, simplifies DR planning. |
| AWS Transfer family | A family of services that allows you to transfer data between on-premises and AWS. | Varies | Varies | Seamless data transfer between on-premises and AWS. |
| AWS Backup | A fully managed backup service that replicates your data to AWS S3. | Days or weeks | Days or weeks | Protects against accidental deletions, ransomware, and other data loss events. |

## Links

- Disaster recovery strategies on AWS <https://cloudian.com/guides/disaster-recovery/disaster-recovery-on-aws-4-strategies-and-how-to-deploy-them/>