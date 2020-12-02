---
layout: default
---
# Introduction
## Purpose
The purpose of these documents is to describe the Synobsys OutSystems development standards and guidelines as well as the methods to enforce their proper use.
## Intended audience
All members involved in the OutSystems development such as:
- Team member
- Product Owner
- Scrum Master
- Subject Matter Expert (SME)
- UX designer
- UI designer
- Business Analyst
- Test Manager
- Tester
- End users

# Contents

1. [OutSystems Standards and Guidelines](#outSystems-standards-and-guidelines)
2. [Architecture Decision Records (ADR)](#2-architecture-decision-records)
3. [Patterns](#3-patterns)
4. [How-To Guides](#4-how-to-guides)
5. [OutSystems Reference](#5-outSystems-reference)
6. [Publications](#6-publications)

# 1 OutSystems Standards and Guidelines
- [Naming Conventions](OutSystemsNamingConventions.md)
- [Server Action Security](ServerActionSecurity.md)
- [**D**efinition **o**f **R**eady(DoR)](DefinitionOfReady.md)
- [**D**efinition **o**f **D**one(DoD)](DefinitionOfDone.md)
- [Code Review Checklist](CodeReviewChecklist.md)
- Apply the [The Boy Scout Rule](https://www.oreilly.com/library/view/97-things-every/9780596809515/ch08.html)

# 2 Architecture Decision Records
See these articles for an explanation of **A**rchitecture **D**ecision **R**ecords (ADR):

- https://adr.github.io/
- https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions.html

ADRs:
- [ADR 1: We will document Architecture Decisions (AD) with the ADR template](ADR-001-documenting-architecture-decisions.md)
- [ADR 2: Standard language is English](ADR-002-standard-language-is-English.md)
- [ADR 3: Core Services must be secured](ADR-003-secure-core-services.md)
- [ADR 4: BDD framework for Component testing](ADR-004-bdd-framework-for-component-testing.md)
- [ADR 5: Centralized Styling](ADR-005-centralized styling.md)
- [ADR 6: Approved forge components only](ADR-006-approved-forge-components-only.md)

# 3 Patterns
- [Integration Patterns for Core Services Abstraction](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/05_Integration_Patterns_for_Core_Services_Abstraction)
- [Circuit Breaker Pattern: Make Your Apps Ready to Deal with Timeouts](https://www.outsystems.com/blog/posts/circuit-breaker-pattern/)

# 4 How-To Guides
[OutSystems How-To Guides](https://success.outsystems.com/Documentation/How-to_Guides)

## 4.1 Development
- [How to Create Customized Versions of a Base Application](https://itnext.io/how-to-dynamically-import-the-customized-product-theme-in-the-base-product-b10b534e3e1a)

## 4.2 Front-End
- OutSystems [Front-End](https://success.outsystems.com/Documentation/How-to_Guides/Front-End) how-to guides
- [How to introduce a new style class](how-to-introduce-a-new-style-class.md)
- [How to securely hide content](How-to-securely-hide-content.md)

## 4.3 Logic
- When heavily used prefer StringBuilder over "string" + "string" for better performance as it has a better memory allocation. See [How to create large strings with StringBuilder](https://success.outsystems.com/Documentation/How-to_Guides/Logic/How_to_create_large_strings_with_StringBuilder)

## 4.4 Data
- TBD How to create static entities following the coding best practice: "never use auto-number integers for Static Entity IDs - replace by easily recognizable unique text codes/labels, having the same value throughout all environments"

## 4.5 Processes
-
## 4.6 DevOps
- [OutSystems deployment rollbacks](https://itnext.io/outsystems-deployment-rollbacks-8b3c010f5f90)
- [Preparing for an application version rollback scenario in Production](https://www.outsystems.com/forums/discussion/15466/preparing-for-an-application-version-rollback-scenario-in-production/)

## 4.7 Integrations

## 4.8 Security
- How-to response to [OutSystems Penetration Test Findings](OutSystemsPenTestFindings.md)
## 4.9 Testing
- [Test Automation in the Delivery Lifecycle](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Test_Automation_in_the_Delivery_Lifecycle)
- [How to get started with the BDD testframework](How-to-get-started-with-the-BDD-testframework.md)

# 5 OutSystems reference
This set of documents is an extension to the OutSystems standards and best practices next follows a list of the consulted documents for your reference.
## 5.1 Architecture
*	[Designing the architecture of your OutSystems applications](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications)
*	[The Architecture Canvas](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/The_Architecture_Canvas)
*	[Validating your application architecture](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/Validating_your_application_architecture)
*	[Translating business concepts into application modules](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/02_Translating_business_concepts_into_application_modules)
*	[Service-Oriented Architectures for OutSystems applications](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_architecture_of_your_OutSystems_applications/04_Service-Oriented_Architectures_for_OutSystems_applications)
*	[Core Service abstraction](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_architecture_of_your_OutSystems_applications/05_Service_architecture_patterns/01_Core_Service_abstraction)
*	[Loosely coupling modules](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_architecture_of_your_OutSystems_applications/05_Service_architecture_patterns/02_Loosely_coupling_modules)

## 5.2 Best practices
- [Best Practices](https://success.outsystems.com/Documentation/Best_Practices) main page
- [Development](https://success.outsystems.com/Documentation/Best_Practices/Development)
- [Architecture](https://success.outsystems.com/Documentation/Best_Practices/Architecture)
- [Performance and Monitoring](https://success.outsystems.com/Documentation/Best_Practices/Performance_and_Monitoring)
- [Security](https://success.outsystems.com/Documentation/Best_Practices/Security)
- [OutSystems Testing Guidelines](https://success.outsystems.com/Documentation/Best_Practices/OutSystems_Testing_Guidelines)

# 6 Publications
Publications on Medium
- [How to Create Customized Versions of a Base Application](https://itnext.io/how-to-dynamically-import-the-customized-product-theme-in-the-base-product-b10b534e3e1a)
- [Avoiding security threats when sending messages from OutSystems Applications](https://medium.com/@pschmeddes/avoiding-security-threats-when-sending-messages-from-outsystems-applications-79bb03dd7bf9)
- [External Core Services Pattern Variations in Practice](https://itnext.io/external-core-services-pattern-variations-in-practice-bdcb1da07b5b)
- [Best Practices for developing High-Quality OutSystems Apps](https://itnext.io/best-practices-for-developing-high-quality-outsystems-apps-bfbfc6d67081)
- [How-to connect Screens across modules without violating the layered architecture reference rules](https://itnext.io/how-to-connect-outsystems-web-screens-across-espaces-without-violating-the-no-side-reference-rule-b03f8aae16ac)
- [OutSystems and Microservices in Practice](https://itnext.io/outsystems-and-microservices-in-practice-9b8038e58cb4)
