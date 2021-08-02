---
title: ADR 4 - BDD framework for component testing
---

# ADR 4: BDD framework for component testing

## Context

Component testing is part of the delivery job of an OutSystems Development Team. We require a standardized method for component testing as part of our standardized development method.
Solid automated component test procedures are key for meeting the quality standards.
Test automation is a prerequisite for implementing a CI/CD pipeline.

## Decision

We will use the BDD framework for component testing. We will use the [**Given-When-Then**](https://www.agilealliance.org/glossary/gwt) format (Gherkin) to defined test scenarios.

## Rationale

There exist several [Automated Testing Tools](https://success.outsystems.com/Documentation/Best_Practices/OutSystems_Testing_Guidelines/Automated_Testing_Tools) that are suitable for component testing. OutSystems recommends to use the BDD framework for Component testing and we accept this recommendation.

For more background information check the OutSystems Testing Guidelines for [Component Testing](https://success.outsystems.com/Documentation/Best_Practices/OutSystems_Testing_Guidelines/Component_Testing)
and the [BDD Framework](https://success.outsystems.com/Documentation/Best_Practices/OutSystems_Testing_Guidelines/Automated_Testing_Tools#BDDFramework_(Forge_Component)) section on Automated Testing Tools.

## Status

Accepted

<!--
[Proposed | Accepted | Deprecated | Superseded]
If deprecated, indicate why. If superseded, include a link to the new ADR.
-->

## Consequences

* All team members must master the use of the BDD framework for component testing.
* Guidance on the use of the BDD framework and Gherkin can be found at [How to et started with the BDD testframework](how-to\How-to-get-started-with-the-BDD-testframework.md)
* There are multiple ways to write acceptance criteria, but we decided to use the Gherkin [**Given-When-Then**](https://www.agilealliance.org/glossary/gwt) format introduced as part of the BDD methodology, it follows the Specification By Example approach. See also the [Top-Notch Acceptance Criteria](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Test_Automation_in_the_Delivery_Lifecycle#Top-Notch_Acceptance_Criteria) section of the [Test Automation in the Delivery Lifecycle](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Test_Automation_in_the_Delivery_Lifecycle) documentation.
