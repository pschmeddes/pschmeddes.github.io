# STIP1 Outsystems development standards

Standards and guidelines for the Outsystems development platform as used within Global Shared Service for the STIP1 project.

## Table of Contents

- [ ] Todo - create toc

Application Architecture

: Information on way the STIP1 solution on the Outsystems platform is structured in Domains, Concepts and Modules.

Integration's

: Types of integration's and how to implement them.

Naming conventions

: Naming conventions for OutSystems components

Programming standards

: Very compact, only the absolutely required standards for programming
Outsystems.

How-to directory

: A list of all how-to articles for tasks specifically tailored to the
STIP1 project.

Standard resolutions for Architecture Dashboard findings

: Sometimes, we disagree with the good folks who developed the
Architecture Dashboard. In those cases, we allow a response to the
finding other than: resolved.
# Application Architecture

Information on how the STIP1 solution on the Outsystems platform is
structured in Domains, Concepts and Modules.

## Domains

During the \' Blauwdruk\' phase of STIP1, the analysts came up with a
business domain model, which was recognized and approved by the business
takeholders. This is the starting point for partitioning the STIP1
solution.

![Blauwdruk business domains](images\Blauwdruk-business-domains.png)

This model has been validated on its technical viability and after
approval by the Architecture Board been transferred to the Outsystems
platform.

### Outsystems domain implementation

The business domain model has been transferred to the Outsystems
platform, where the business domains are implemented as vertical Domains
in the Discovery tool. The business domains have been supplemented by a
set of 'enabler' (or horizontal) domains that take care of the \'
plumbing\' of the solution. In Discovery, the implementation domain
model looks like this:

![OutSystems Domains](images\OutSystemsDomains.png)

The existence and maintenance of Implementation Domains is the
responsibility of the **OutSystems Architect**.

Implementation Domains are identified by a Domain Identifier and a name.


[Naming conventions for Outsystems components](/STIP1%20OutSystemsStandards/1%20ApplicationArchitecture/ApplicationArchitecture.md) can be found here.

Refer to
[Integrations](/STIP1%20OutSystemsStandards/2%20Integrations/Integrations.md)
for guidelines regarding integrations between domains.

## Concepts

As domains can still be pretty large chunks, the next breakdown level is
that of a Concept. A Concept exists completely within the boundary of a
Domain. Concepts are typically roughly based on business objects. For
example: the Master Data Management domain includes Concepts like
Product, Party, Organization, etc. Technically, Concepts have no
Outsystems component. Instead we use naming conventions to identify
components that belong to a Concept.

Not all domains require Concepts. Some domains are small and to the
point enough to get by without this additional layer of granularity.
Whether or not a Domain is broken down into Concepts is the
responsibility of the Application Architect.

This is the current approved [list of
Concepts](https://synobsys2013-my.sharepoint.com/wiki/spaces/STIP1/pages/59015465/List+of+Concepts)

## Modules

Modules are the Units-of-Work in Outsystems. A module is a set of data
and/or logic that can be checked out and worked on. Publishing a Module
resolves its dependencies and creates a piece of executable logic.

Modules are assembled in Applications, which are the smallest deployable
units on the Outsystems execution platform. As such, the assembly of
modules into Applications is subject to the rules of the [Outsystems
Layered
Architecture](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/The_Architecture_Canvas).
Therefore, Applications are not significant in this architectural
breakdown, although Applications do play an important role in other
areas, such as deployment and authorization.

As Modules are also subject to the [Outsystems Layered
Architecture](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/The_Architecture_Canvas),
there may be many modules to realize a Concept or a Domain.
### Domains overview

Per April 1st, 2020, as a result of project realignment, the business domains have been reconsidered and functionalities are reassigned accordingly.
Approved domains
This is the list of approved domains:

Icon | Identifier (DOM) | Name (Domain) | Type | Business name | Technical ownership
-----|------------------|---------------|------|-----|---
![Finance logo](images\Finance.png) | FIN | Finance | Vertical | 09 Finance | -
![InboundPlanning logo](images\InboundPlanning.png) | IBP | Inbound Planning | Vertical | 04 Inbound Planning | -
![MDM Logo](images\MasterDataManagement.png) | MDM | Master Data Management | Vertical | 08 Master data management | Team 1
![PRD Logo](images\Production.png) | PRD | Production | Vertical | 03 Production | -
![OPB](images\OutBoundPlanning.png) | OBP | Outbound Planning | Vertical | 06 Outbound Planning | -
![PUR](images\Purchasing.png) | PUR | Purchasing | Vertical | 01 Inkopen | Team 1
![SLS](images\Sales.png) | SLS | Sales | Vertical | 02 Verkoop | Team 3
![TSP](images\TransportPlanning.png) | TSP | Transport | Vertical | 07 Transport | -
![WHS](images\Warehouse.png) | WHS | Warehouse | Vertical | 05 Warehouse | Team 2
 | CDM | Canonical Data Model | Horizontal | - | All teams
 | FOR | Forge Components | Horizontal | - | Paul
 | THM | Theme Development | Horizontal | - | Paul
 | TRA | Translations | Horizontal | - | Team 3
 | UTL | Utility | Horizontal | - | Team 3
 | ACC | Access Control | Horizontal | 15 Rollen en autorisaties | Team 3
![SPO](images/SalesPortal.png) | POR | Sales Portal | Vertical | | Team

The list of implemented Domains is registered in the Outsystems [Discovery](https://gssb-dev.outsystemsenterprise.com/discovery/Domains.aspx) tool.

Each domain is also a [Lifetime team](https://gssb-lt.outsystemsenterprise.com/lifetime/Teams_List.aspx).# Integrations

This page explains the guidelines for making integrations.

Integrations exist on different levels:

* [Intra-domain integrations](#Intra-domain-integrations)

* [Inter-domain integrations](#Inter-domain-integrations)

* [Integrations with external systems](#Integrationswithexternalsystems)

* [Integrations with systems from external parties](#IntegrationswithsystemsfromExternalParties)

## Intra-domain integrations {#Intra-domain-integrations}

Public entities (types and aggregates) and server actions may be freely
used within a domain (obviously in compliance with the architectural
layer rules).
Inside domains, entities may be shared across modules (again: in
compliance with architectural layer rules to avoid invalid
dependencies).

## Inter-domain integrations {#Inter-domain-integrations}

It is not allowed to consume public entities (types and aggregates) or
call public server actions from modules in other domains.\
Domains expose a defined interface to other domains using an OutSystems API (OAPI) module that only exposes service actions with parameters typed with
structures from the domain's Canonical Data Model (in the CDM domain).
The OAPI module is responsible for the data transformations between the
domain's internal data model (entities) and the Canonical Data Model on
which the inter-domain communication is based.

Effectively, this means that no modules may have dependencies on any
modules from other domains, except other module\'s OAPI modules.

**Exception**\
This rule does not apply to references to modules from enabler (or
horizontal) domains. Many of these domains provide common data and
services to vertical domains, and the advantages of being able to use
their components directly is considered to outweigh the disadvantages.

The picturer below shows a high-level overview of inter-domain integrations in STIP1.
![Domain integrations](images/DomainIntegrations.png)

## Integrations with external systems {Integrationswithexternalsystems}

Integrations with external systems (outside of the STIP1 Outsystems
platform) must be implemented using SOAP or REST services.

Although we can support SOAP/XML interfaces, we have a very strong
preference for REST interfacing with JSON, since Outsystems offers much
better support for JSON than it does for XML..

As we have decided to use an ESB (or iPaaS platform) for communications
between applications (see [AD-017 Gegevensuitwisseling met externe
applicaties via [ESB](todo), the ESB will be responsible for the external side of the interaction.
From the Outsystems side, we will be able to speak REST to the ESB,
while the ESB will translate this to the required format for the
external application.

The picture below systems shows a high-level overview of integrations STIP1 has with external systems.
![Integration with external systems](images/IntegrationsWithExternalSystems.png)

Domains expose a defined interface to external systems using an API
module that only exposes REST services with parameters typed with
structures from the domain's Canonical Data Model (in the CDM domain).
The API module is responsible for the data transformations between the
domain's internal data model (entities) and the Canonical Data Model on
which the inter-application communication is based.

You may refer to the Outsystems article [Service-Oriented Architectures for OutSystems applications](https://success.outsystems.com/Documentation/Best_Practices/Architecture/Designing_the_Architecture_of_Your_OutSystems_Applications/Service-Oriented_Architectures_for_OutSystems_applications)
for an explanation of the architectural structuring of integration
modules and functions. The following diagram is taken from that article.

![Service-Oriented-Architectures-for-OutSystems-applications](images/Service-Oriented-Architectures-for-OutSystems-applications.png)

Please note that from the OutSystems perspective, the external systems
(the grey blocks) are 'hidden' behind the ESB. This means that the
Integration Services will always consume REST services with canonical
data structures, and the External API's will always expose REST services
with canonical data structures, independent of the external system's
protocol.

Also be aware that integration services may not contain any business
logic. They must be simple wrappers that expose server actions in a
normalized format. I.e. canonical data structure.

## Integrations with systems from external parties {#IntegrationswithsystemsfromExternalParties}

The ESB is responsible for the data exchange with external parties.
Given that external parties communicate with their own systems, the
rules for integrations with external systems also apply.

However, additional security policies apply when communicating with
parties outside the Global enterprise.
