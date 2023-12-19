---
title: AWS Real User Monitor RUM vs. Google Analytics

time: 2023-12-19 09:00:00
description: >
  AWS Real User Monitor RUM

authors:
    - Alexander Friesen
tags:
  - aws
  - RUM

---

## Intro

In general, **CloudWatch RUM is a better choice for web developers** who need to identify and fix performance bottlenecks.

Google Analytics is a better choice for marketers who need to understand user behavior and track marketing campaigns.

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/vTR49qZ3QL.png)


RUM collects data from a JS agent.

![Alt text](https://s3.eu-central-1.amazonaws.com/alf-digital-wiki-pics/sharex/NuVAGCZwvK.png)

## Description

Amazon CloudWatch Real User Monitoring (RUM) and Google Analytics are both powerful tools for monitoring and analyzing the performance of your web applications. However, they have different strengths and weaknesses.

**Amazon CloudWatch RUM** is a fully managed service that provides real-time insights into the performance of your web applications. It collects data on page load times, JavaScript execution times, and network performance. You can then use this data to identify and fix performance bottlenecks. CloudWatch RUM is also integrated with other AWS services, such as CloudWatch Insights, which can help you to analyze and visualize your data.

**Google Analytics** is a more comprehensive web analytics platform that provides insights into a wider range of website metrics, such as user behavior, traffic sources, and conversion rates. However, it does not provide the same level of detail about real user performance as CloudWatch RUM.

**Here is a table that summarizes the key differences between CloudWatch RUM and Google Analytics:**

| Feature | CloudWatch RUM | Google Analytics |
|---|---|---|
| Real-time data | Yes | No |
| Page load times | Yes | Yes |
| JavaScript execution times | Yes | Yes |
| Network performance | Yes | No |
| Integrated with other AWS services | Yes | No |
| Price | Per-instance | Per-user |

**Here is a comparison of how CloudWatch RUM and Google Analytics are used for different purposes:**

| Purpose | CloudWatch RUM | Google Analytics |
|---|---|---|
| Identifying performance bottlenecks | Excellent | Good |
| Troubleshooting performance issues | Excellent | Good |
| Optimizing page load times | Excellent | Good |
| Understanding user behavior | Good | Excellent |
| Segmenting users | Good | Excellent |
| Analyzing marketing campaigns | Poor | Excellent |
| Measuring conversion rates | Poor | Excellent |



**Here are some additional factors to consider when deciding between CloudWatch RUM and Google Analytics:**

* **Your existing infrastructure:** If you already use other AWS services, CloudWatch RUM will integrate more seamlessly with your environment.
* **Your budget:** CloudWatch RUM is a paid service, while Google Analytics is free.
* **Your technical expertise:** CloudWatch RUM requires more technical expertise to set up and use than Google Analytics.

## Links

 - Reinvent <https://www.youtube.com/watch?v=NMaeujY9A9Y&t=679s>
 - <https://aws.amazon.com/de/blogs/aws/cloudwatch-rum/>
