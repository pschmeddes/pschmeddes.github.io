---
layout: default
---
# Introduction

## Purpose

The purpose of these documents is to describe the Synobsys OutSystems development standards and guidelines as well as the methods to enforce their proper use.

## Intended audience

All members involved in the OutSystems development such as:

* Team member
* Product Owner
* Scrum Master
* Subject Matter Expert (SME)
* UX designer
* UI designer
* Business Analyst
* Test Manager
* Tester
* End users

## Contents

1. [OutSystems Standards and Guidelines](#outSystems-standards-and-guidelines)
1. [Architecture Decision Records (ADR)](#architecture-decision-records)
1. [Patterns](#patterns)
1. [How-To Guides](#how-to-guides)
1. [OutSystems Reference](#outSystems-reference)
1. [Publications](#publications)

## OutSystems Standards and Guidelines

* [Naming Conventions](OutSystemsNamingConventions.md)
* [OutSystems Platform Best Practices](https://success.outsystems.com/Documentation/Best_Practices/Development/OutSystems_Platform_Best_Practices)
* [Coding Style Guide](tbd)
* [Server Action Security](ServerActionSecurity.md)
* [User Story Template](UserStoryTemplate.md)
* [**D**efinition **o**f **R**eady(DoR)](DefinitionOfReady.md)
* [**D**efinition **o**f **D**one(DoD)](DefinitionOfDone.md)
* [Code Review Checklist](CodeReviewChecklist.md)
* Apply the [The Boy Scout Rule](https://www.oreilly.com/library/view/97-things-every/9780596809515/ch08.html)

## Architecture Decision Records

See these articles for an explanation of **A**rchitecture **D**ecision **R**ecords (ADR):

* <https://adr.github.io/>
* <https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions.html>

List of ADRs:

* [ADR 1: We will document Architecture Decisions (AD) with the ADR template](ADR-001-documenting-architecture-decisions.md)
* [ADR 2: Standard language is English](ADR-002-standard-language-is-English.md)
* [ADR 3: Core Services must be secured](ADR-003-secure-core-services.md)
* [ADR 4: BDD framework for Component testing](ADR-004-bdd-framework-for-component-testing.md)
* [ADR 5: Centralized Styling](ADR-005-centralized-styling.md)
* [ADR 6: Approved forge components only](ADR-006-approved-forge-components-only.md)

## Patterns

* [Integration Patterns for Core Services Abstraction](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/05_Integration_Patterns_for_Core_Services_Abstraction)
* [Circuit Breaker Pattern: Make Your Apps Ready to Deal with Timeouts](https://www.outsystems.com/blog/posts/circuit-breaker-pattern/)
* TBD Localization Ready datamodel with Entity Layers for Translated Fields and Non-Translated Fields <https://vertabelo.com/blog/data-modeling-for-multiple-languages-how-to-design-a-localization-ready-system/>

## How-To Guides

[OutSystems How-To Guides](https://success.outsystems.com/Documentation/How-to_Guides)

### Architecture

* [How to setup a domain](how-to/how-to-setup-a-new-domain.html)
* [How-to setup a new domain concept](how-to\how-to-setup-a-new-domain-concept.html)
* [How-to add an entity to your module](how-to\how-to-add-an-entity-to-your-module.html)

### Development

* [How to Create Customized Versions of a Base Application](https://itnext.io/how-to-dynamically-import-the-customized-product-theme-in-the-base-product-b10b534e3e1a)

### Front-End

* OutSystems [Front-End](https://success.outsystems.com/Documentation/How-to_Guides/Front-End) how-to guides
* [How to introduce a new style class](how-to-introduce-a-new-style-class.html)
* [How to securely hide content](How-to-securely-hide-content.html)

### Logic

* When heavily used prefer StringBuilder over "string" + "string" for better performance as it has a better memory allocation. See [How to create large strings with StringBuilder](https://success.outsystems.com/Documentation/How-to_Guides/Logic/How_to_create_large_strings_with_StringBuilder)

### Data

* TBD How to create static entities following the coding best practice: "never use auto-number integers for Static Entity IDs - replace by easily recognizable unique text codes/labels, having the same value throughout all environments"
* [Data Model Change Management](DataModelChangeManagement.html)

### Processes

* Nothing here yet

### DevOps

* [OutSystems deployment rollbacks](https://itnext.io/outsystems-deployment-rollbacks-8b3c010f5f90)
* [Preparing for an application version rollback scenario in Production](https://www.outsystems.com/forums/discussion/15466/preparing-for-an-application-version-rollback-scenario-in-production/)

### Integrations

### Security

* How-to response to [OutSystems Penetration Test Findings](OutSystemsPenTestFindings.html)

### Testing

* [Test Automation in the Delivery Lifecycle](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Test_Automation_in_the_Delivery_Lifecycle)
* [How to get started with the BDD testframework](How-to-get-started-with-the-BDD-testframework.md)

## OutSystems reference

This set of documents is an extension to the OutSystems standards and best practices next follows a list of the consulted documents for your reference.

### Architecture

* [Designing the architecture of your OutSystems applications](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications)
* [The Architecture Canvas](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/The_Architecture_Canvas)
* [Validating your application architecture](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/Validating_your_application_architecture)
* [Translating business concepts into application modules](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/02_Translating_business_concepts_into_application_modules)
* [Service-Oriented Architectures for OutSystems applications](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_architecture_of_your_OutSystems_applications/04_Service-Oriented_Architectures_for_OutSystems_applications)
* [Core Service abstraction](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_architecture_of_your_OutSystems_applications/05_Service_architecture_patterns/01_Core_Service_abstraction)
* [Loosely coupling modules](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_architecture_of_your_OutSystems_applications/05_Service_architecture_patterns/02_Loosely_coupling_modules)

### Best practices

* [Best Practices](https://success.outsystems.com/Documentation/Best_Practices) main page
* [Development](https://success.outsystems.com/Documentation/Best_Practices/Development)
* [Architecture](https://success.outsystems.com/Documentation/Best_Practices/Architecture)
* [Performance and Monitoring](https://success.outsystems.com/Documentation/Best_Practices/Performance_and_Monitoring)
* [Security](https://success.outsystems.com/Documentation/Best_Practices/Security)
* [OutSystems Testing Guidelines](https://success.outsystems.com/Documentation/Best_Practices/OutSystems_Testing_Guidelines)

## Publications

* [How to Create Customized Versions of a Base Application](https://itnext.io/how-to-dynamically-import-the-customized-product-theme-in-the-base-product-b10b534e3e1a)
* [Avoiding security threats when sending messages from OutSystems Applications](https://medium.com/@pschmeddes/avoiding-security-threats-when-sending-messages-from-outsystems-applications-79bb03dd7bf9)
* [External Core Services Pattern Variations in Practice](https://itnext.io/external-core-services-pattern-variations-in-practice-bdcb1da07b5b)
* [Best Practices for developing High-Quality OutSystems Apps](https://itnext.io/best-practices-for-developing-high-quality-outsystems-apps-bfbfc6d67081)
* [How-to connect Screens across modules without violating the layered architecture reference rules](https://itnext.io/how-to-connect-outsystems-web-screens-across-espaces-without-violating-the-no-side-reference-rule-b03f8aae16ac)
* [OutSystems and Microservices in Practice](https://itnext.io/outsystems-and-microservices-in-practice-9b8038e58cb4)
