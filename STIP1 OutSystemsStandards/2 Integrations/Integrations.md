# Integrations

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
