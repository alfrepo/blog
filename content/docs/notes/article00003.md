---
title: the how of enterprise cloud systems - Part A "the vision"
time: 2023-05-07 20:00:00
description: Event sourcing - step 1 - macro (enterprise) architecture
tags:
  - event_sourcing
  - architecture
---


## Intro and strategical goals

If one would accept TOGAF's definition of an "enterprise":

 > any **collection of organizations** that has a **common set of goals** and/or a single bottom line. In that sense, an enterprise can be a government agency, a whole corporation, a division of a corporation, a single department, or a chain of geographically distant organizations linked together by common ownership.`

then, **crowd management** must be a key concern in an evolving enterprise architecture. I will try to explain why below:

This statement is indirectly confirmed by [Accelerate - The Science of Lean Software and Devops, by Nicole Forsgren, Jez Humble, Gene Kim 2018, Chapter 5 Architecture](https://kevinvecmanis.io/books/management/2020/11/20/Accelerate-Book-Review.html#architecture) where it is stated,
that the following **statements corelate with top-performing developer-teams**:

 > 1. We can do most of our **testing without requiring an integrated environment**.
 > 1. We can and do **deploy or release our application independently of other applications/services it depends on**.

Hence achieving above statements for dev-teams must be handled as on of **"strategical goals"** for an enterprise-architecture, to achieve top performing dev-teams.

### Tactical goals

1. **modularization**
   - with a **team-distribution-key**, to assign module-responsibility to a single teams.
   - To ensure, that each team is enabled to develop independently from anothers.
   - To ensure clearly defined interfaces between modules and teams.

2. **continuous deployment** of each module separately
   - To enable the team, to deploy its module independently

3. **service virtualization**
   - To be able of testing on module-level.

## Draft / Idea

![Vision](article0003/../article00003/idea.drawio.png)

- Use services, as modules for backend.
- Use apps, as frontend modules.
- Use the `Event sourcing` pattern, to introduce interfaces between services.
- Use synchronous-apis, to introduce interfaces between apps and services.

How exactly to set-up the communication between modules
e.g. to keep the horizontal scaling and consistancy - will be the topic of further articles.

## Links

- On `Event sourcing` pattern [by Azure](https://learn.microsoft.com/en-us/azure/architecture/patterns/event-sourcing)