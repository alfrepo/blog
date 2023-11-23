---
title: Why event-broker with micro-services?
time: 2023-11-23 11:00:00
description: >
  Events and micro-services
authors:
    - Alexander Friesen
tags:
  - micro-services
  - event-broker
  - events
---

## Intro

Why powering micro-services with **event broker**?



## Reasoning


**Scalability**

Additional event broker instances can be added to increase the cluster’s production, consumption, and data storage capacity.

**Durability**

Event data is replicated between nodes. This permits a cluster of brokers to both preserve and continue serving data when a broker fails.

**High Availability**

A cluster of event broker nodes enables clients to connect to other nodes in the case of a broker failure. This permits the clients to maintain full uptime.

**High Performance**

Multiple broker nodes share the production and consumption load. In addition, each broker node must be highly performant to be able to handle hundreds of thousands of writes or reads per second.





## Links

 




