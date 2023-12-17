---
title: AWS EBS storage classes

time: 2023-12-17 11:00:00
description: >
  AWS EBS storage classes

authors:
    - Alexander Friesen
tags:
  - aws
  - ebs

---

## Intro

AWS EBS storage classes

## Description

| **EBS Storage Class**            | **Short Description**                                                                                                | **Use Cases**                                                                                                                                                                      |
|-----------------------------|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Provisioned IOPS SSD (io1)      | Optimized for I/O-intensive workloads requiring consistent and predictable performance with configurable IOPS.    | - Critical production databases - Applications requiring high I/O performance - Latency-sensitive applications - Workloads with specific and predictable I/O requirements |
| General Purpose SSD (gp2)       | Offers a balance of price and performance, suitable for a wide range of transactional workloads.                   | - Boot volumes - Development and test environments - Small to medium-sized databases - Low-latency interactive apps - Medium to low I/O applications                                  |
| Throughput Optimized HDD (st1) | Designed for **frequently accessed**, high-throughput workloads at a lower cost than SSDs.                              | - Big data analytics - Log processing - Streaming workloads - Data warehousing - Data lakes                                                                                            |
| Cold HDD (sc1)                  | Ideal for infrequent access workloads with large data sets where cost efficiency is crucial.                        | - Infrequent data access - Long-term backups and archives - Batch processing - Less critical applications with cost constraints                                                       |

## Throughput vs IOPS

### Throughput

**Throughput** is the total amount of data that can be transferred between a storage device and a host system in a given amount of time. It is typically measured in megabytes per second (MB/s) or gigabytes per second (GB/s).

Throughput is a measure of the overall capacity of a storage device, and it is important for applications that require a large amount of data to be transferred quickly, such as database applications and video streaming.

In these scenarios, the data is often read or written in **larger sequential chunks rather than smaller, random accesses**. This is because the emphasis is on maximizing the amount of data transferred per unit of time (throughput) rather than focusing on the number of individual read or write operations per second (IOPS).

### IOPS intensity

**IOPS intensity** is a measure of the number of individual I/O operations that can be performed by a storage device in a given amount of time.

It is typically measured in IOPS (Input/Output Operations Per Second). IOPS intensity is a measure of the responsiveness of a storage device, and it is important for applications that require a **large number of small, random I/O operations**, such as web servers and transactional databases.

## Links

- <https://aws.amazon.com/ebs/features/>