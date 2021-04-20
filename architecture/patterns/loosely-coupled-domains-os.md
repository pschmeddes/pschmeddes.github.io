---
summary:
tags:
---
# Loosely coupled domains with OutSystems

We use a [Domain Driven Architecture with OutSystems](https://success.outsystems.com/Documentation/Best_Practices/Architecture/OutSystems_Domain_Driven_Architecture) this pattern
describes how to apply the principles of Full Isolated domains as decided in [ADR ??]()

## Concepts and mapping to OutSystems

![](images/outsystems_domain_driven_architecture_15.png?width=900)

## Domain types

There are 3 domain types, each one with its own defined purpose.

![](images/outsystems_domain_driven_architecture_16.png?width=900)

* **Orchestrator domain** - presented in the image as a Omnichannel, it provides the end user with a unified view of the independent business verticals.

* **Vertical domain** - supports a line of business.

* **Horizontal domain** - provides reusable core business services shareable to multiple vertical domains.

## Retain the best of monoliths and microservices

OutSystems allows you to design your architecture with a balanced compromise between the monolithic and microservices approaches. You can leverage all the good things that both have while designing and developing your applications.

### Inside a domain

While inside the same domain, keep strong coupling between elements.

![](images/outsystems_domain_driven_architecture_17.png?width=900)

This benefits tight processes, by enforcing:

* In-process communication

* Common database transaction

### Across domains

Across domains, keep loose coupling relationships, providing domain APIs divided in two parts:

* **Public entities**

Read-only entities to allow consumers to list, search or mashup with other entities

* **Service actions**

Data transactions and detail retrieval

![](images/outsystems_domain_driven_architecture_18.png?width=900)

Strong relationships between horizontal domains can be made as an exception to orchestrate composite logic or transactions.

### With foundation applications in horizontals

Strong coupling with foundation applications in horizontals with non-functional requirements can be referenced directly by other domains. This is useful for themes, UI patterns, and plugins.

## Domain architecture

A healthy domain architecture should provide data isolation, promote ownership and reduce impacts on changes.

It should also help the organizations to have a better understanding of the current landscape of services being provided and map those into business in a better and easy way.

![](images/outsystems_domain_driven_architecture_19.png?width=900)

### Full Isolated domains

Given the complexity of the system to be build we adopt the full isolated domain architecture as in the following diagram:

![](images/outsystems_domain_driven_architecture_20.png?width=900)

TBD change image.

To achieve this, some rules must be followed.

### Domain validation rules

Reference objects between domains **are allowed within the following rules**:

![](images/outsystems_domain_driven_architecture_21.png?width=900)

( ) optional references set by configuration

**Allowed references between vertical domains**

* Weak references like Service Actions and Structures (optionally references to Entities are allowed upon configuration)

**Allowed references between horizontal domains**

* Weak references like Service Actions, Structures and Entities (optionally references to Server Actions are allowed depending on configuration)

* Weak downward reference between a Vertical and Horizontal Domain Service Actions, Structures and Entities

**Allowed references vertical to horizontal domains**

* Weak references like Service Actions and Structures

* Strong reference between a Vertical and Horizontal if the referenced element is part of a Foundation App

![](images/outsystems_domain_driven_architecture_22.png?width=900)

All remaining relationships between domains are considered architectural findings and not allowed.

As a note to remember, the orchestration domain in the [domain types section](#heading=h.wl92bhe3n2go) is to be considered as a vertical domain when validating domain relationships.

### Architecture Principles

The same Architecture Canvas principles are applicable both within and across domains.

![](images/outsystems_domain_driven_architecture_23.png?width=900)

### Advanced Architecture Patterns

In some situations, it is necessary to implement advanced patterns that will support business use cases.

In this section, we will cover the most important ones related to domain architecture.

#### Managing Multiple Transactions

Sometimes it is necessary to orchestrate seamlessly in one single transaction logic that is part of a different domain, because customers should not worry about custom exception handling or with API coordination of any kind.

The way we achieve this is by creating a Service Action that will then centralize in a single transaction multiple server actions, as follows:

![](images/outsystems_domain_driven_architecture_24.png?width=900)

### How to validate the domain architecture

In order to validate the architecture, there is a tool called Discovery, available in the OutSystems [forge](https://www.outsystems.com/forge/component-overview/409/discovery).
