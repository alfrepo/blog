---
title: Architecture Decision Record (ADR) template example
time: 2023-10-23 20:00:00
description: > 
  Architecture Decision Record (ADR).
  Template to write ADRs.
tags:
  - architecture
---

# Intro

 - How to Build and Run a Decision-Making Architecture Board <https://ozimmer.ch/guest/2023/05/17/ArchBoardHPH.html>
 - MADR template https://github.com/adr/madr/blob/develop/template/adr-template.md
 - Y-Statements <https://medium.com/olzzio/y-statements-10eb07b5a177>


# ADR-0000000: Template

<!-- ADR_META_START -->

- Type: <!-- {Architecture | Process} -->
- Status: <!-- {Draft | Proposed | Accepted | Rejected | Deprecated } -->
- Dependency: <!-- {none | amends | amended by | supersedes | superseded by | related to} if dependency(ies) exist to other ADRs, put also [title](link) -->
- Derived from: <!-- Put the link to the super ADR from which this one has been derived. 1 or many links, also as subordinate list possible-->
- Decision for: <!-- Put the link to the Requirements (Backlog work items). Depending on level: Epic, capability, feature. 1 or many links, also as subordinate list possible-->

<!-- ADR_META_END -->

## Context and Problem Statement

### What triggered this ADR?

- *Why do we talk about this?*
- *What is blocked if we do not decide?*
- *How does the backlog relate to this ADR?*

### Who is affected

*Which teams, services, layers, ... are affected?*

### Considered scenarios

*Describe all scenarios relevant.*
*In-scope and out-of-scope*

### Out of scope

*Is there anything out of scope? Why?*

### Problem Statement

*Describe the question we need to answer? What do we need to decide?*

## Decision Outcome

!!! success "Decision title/summary"
    *Brief description of the decision taken including:*
    - *What was decided*
    - *What does the decision mean for stakeholders*

### Action Items

- CloudApp: Link to Backlog item including a brief description
- Service: Link to Backlog item including a brief description
- System architecture: Link to Backlog item including a brief description

## Decision Drivers

Quality attributes and stakeholders are taken from the "Quality Tree" document provided by system test. Only a subset is
listed below. Add additional as required e.g. from the ilities list https://en.wikipedia.org/wiki/List_of_system_quality_attributes

For the decision outcome, please mark the options in the header row, for which is decided for / not decided for:

- decided for: unicode char `&#9989;` visualizes as &#9989;
- not decided for: unicode char `&#10060;` visualizes as &#10060;

| Quality Attribute | Stakeholder | Context | Decision Driver                |   AS-IS   | &#10060; O1: Name | &#9989; O2: Name |
|-------------------|-------------|---------|--------------------------------|:---------:|:-----------------:|:----------------:|
| Availability      | Who?        | Where?  | What? (only brief description) | - / O / + |     - / O / +     |    - / O / +     |
| Compatibility     |             |         |                                |           |                   |                  |
| Complexity        |             |         |                                |           |                   |                  |
| Configurability
| Cost
| Evolvability
| Fault tolerance
| Freedom from Risk
| Functional suitability
| Maintainability
| Operability
| Portability
| Recoverability
| Reliability
| Reusability
| Robustness
| Scalability
| Security
| Testability
| Throughput
| Usability

### Rational QualityA

*Describe what you mean with the quality attributes, stakeholders, context.*
*Give ideal and worst examples to convey a feeling of what it means.*
*Description: What is it about. Ideal: What would be ideal? Examples. Worst: What is worst? Examples*

### Rational QualityB

*Describe what you mean with the quality attributes, stakeholders, context.*
*Give ideal and worst examples to convey a feeling of what it means.*
*Description: What is it about. Ideal: What would be ideal? Examples. Worst: What is worst? Examples*

## Pros and Cons of the Options

### AS-IS

*What is today's as-is situation?*
*Describe situation today*

### Option 1: Name

*Description of option with its details Based on the quality attributes, evaluate the option and add rating.*

| Quality Attribute | Rating | Evaluation                                                                                      |
|-------------------|--------|-------------------------------------------------------------------------------------------------|
| Complexity        | 0      | Many tables to maintain is cumbersome. But it helps to structure the thoughts and presentation. |

### Option 2: Name

...

[MKDOCs Markdown](https://www.mkdocs.org/user-guide/writing-your-docs/)
