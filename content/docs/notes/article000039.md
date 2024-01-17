---
title: AWS Firewalls
time: 2023-12-21 11:00:00
description: >
  AWS Ressource Access Manager RAM

authors:
    - Alexander Friesen
tags:
  - aws
  - firewalls

---

## Intro

AWS Firewalls overview



## Description

Here’s the list of AWS Firewall Services with the OSI Layer, Rules and Additional Rules Factors, and Types of Attacks Protected Against:

**List of AWS Firewall Services**

| Service | OSI Layer | Rules and Additional Rules Factors | Types of Attacks Protected Against |
|---|---|---|---|
| AWS WAF | Layer 7 | Static, rate-based, byte match rules, source IP address, destination IP address, URL path, HTTP header, HTTP body | Common web application attacks, zero-day attacks |
| AWS Network Firewall | Layer 3 and 4 | Stateful, port-based, source/destination IP address rules, source IP address, destination IP address, protocol, port number, application protocol | Network-level attacks, Layer 7 attacks |
| AWS App Mesh | Layer 4 and 7 | Virtual routers, virtual services, virtual nodes, source IP address, destination IP address, protocol, port number, application protocol | Layer 4 attacks, Layer 7 attacks |
| AWS Firewall Manager | Layer 3 and 4 | Security groups, network ACLs, AWS WAF rules, source IP address, destination IP address, protocol, port number, application protocol | Network-level attacks, web application attacks |




* **AWS Network Firewall**
   * OSI Layer: Layer 3 and 4
   * Rules and Additional Rules Factors: Stateful, port-based, source-destination IP address rules, source IP address, destination IP address, protocol, port number, application protocol
   * Types of Attacks Protected Against: Network-level attacks, Layer 7 attacks


* **AWS WAF (Web Application Firewall)**
   * OSI Layer: Layer 7
   * Rules and Additional Rules Factors: Static, rate-based, byte match rules, source IP address, destination IP address, URL path, HTTP header, HTTP body
   * Types of Attacks Protected Against: Common web application attacks, zero-day attacks


* **AWS App Mesh**
   * OSI Layer: Layer 4 and 7
   * Rules and Additional Rules Factors: Virtual routers, virtual services, virtual nodes, source IP address, destination IP address, protocol, port number, application protocol
   * Types of Attacks Protected Against: Layer 4 attacks, Layer 7 attacks

* **AWS Firewall Manager**
   * OSI Layer: Layer 3 and 4
   * Rules and Additional Rules Factors: Security groups, network ACLs, AWS WAF rules, source IP address, destination IP address, protocol, port number, application protocol
   * Types of Attacks Protected Against: Network-level attacks, web application attacks


## Links
