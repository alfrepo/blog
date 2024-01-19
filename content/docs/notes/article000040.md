---
title: AWS Elastic Disaster Recovery or AWS Backup
time: 2023-01-17 11:00:00
description: >
  AWS Elastic Disaster Recovery

authors:
    - Alexander Friesen
tags:
  - aws
  - firewalls

---

## Intro

AWS Elastic Disaster Recovery

[![Data_AI_Data_Mesh](https://img.youtube.com/vi/E073XISxrSU/0.jpg)](https://youtu.be/E073XISxrSU?si=MIuibs15E2w3zHKf&t=1000 "Data+AI Data Mesh")


![Data_AI_Data_Mesh](https://d2908q01vomqb2.cloudfront.net/fc074d501302eb2b93e2554793fcaf50b3bf7291/2021/07/21/DR-Strategies.png)

<https://aws.amazon.com/blogs/architecture/disaster-recovery-with-aws-managed-services-part-ii-multi-region-backup-and-restore/>


Summary but a bit outdated

<https://jayendrapatil.com/aws-disaster-recovery-whitepaper/>

## Description


### AWS Elastic Disaster Recovery



- Disaster Recovery Service DRS - supports low RTO RPO with agents. 
- Replicates storage. 
- Logs to CLoudWatch the progress.

![Vision](https://docs.aws.amazon.com/images/prescriptive-guidance/latest/patterns/images/pattern-img/9b0de5f0-f211-4086-a044-321d081604f9/images/978b7219-e54e-4e31-b3ff-4885784e2971.png)

 - Elastic Disaster Recovery replication begins with an initial sync. During the initial sync, the AWS Replication Agent replicates all the data from the **source disks** to the appropriate resource in the **staging area subnet**.
- Continuous replication continues indefinitely after the initial sync is complete.


### Cloudendure

<https://www.cloudendure.com/> is an aquired company.


### AWS Backup

For comparison:


- taking backups can happen once in 12 hours
- snapshot restore - takes 30 minutes to complete
- feasible for cold data

## Links
