---
title: Business Process Technology (BPT) naming conventions
---

# Business Process Technology (BPT) naming conventions

[ ] **tbd check for completeness**

> Adapted from [Fundamentals of Business Process Management](http:/fundamentals-of-bpm.org), Chapter 3 Essential Process Modeling. [book web site archive](https://web.archive.org/web/20220308011419/http://fundamentals-of-bpm.org/)

[Naming conventions for bpmn diagrams](https://www.trisotech.com/naming-conventions-for-bpmn-diagrams/)

## Process

To name a bpt process we should use a _noun_, potentially preceded by an **adjective**, e.g. `OrderFulfillment` or `ClaimHandling`.
Nouns in sequence form like `OrderToCash` and `ProcureToPay` indicating a sequence of main actions, are also possible.

## SubProcess

A subprocess is a compound activity and should be named like an activity e.g. `ApproveCustomerRequest`

## Activity

* Label activities VERB-NOUN

For human or automatic activities the name should begin with a _verb_ in the imperative form followed by a _noun_, typically referring to a business object, e.g. `ApproveOrder`.
The noun may be preceded by an _adjective_, e.g. `IssueDriverLicense`, and the verb may be followed by a _complement_ to explain how the action is being done, e.g. `RenewDriverLicenseViaOfflineAgencies`.

## Conditional Start

For Conditional Start events the label should begin with a _noun_ (this would typically be a business object) and should en with a verb in past principle form, e.g. `InvoiceEmitted`, the verb is a past principle to indicate something has just happened. The name may be prefixed by an _adjective_, e.g. `UrgentOrderSent`.

General verbs like "to make", "to do", "to perform" or "to conduct" should be replaced with meaningful verbs that capture the specifics of the activity or event being performed.

## Wait

[ ] todo. Not yet clearly defined.

Describe what you are waiting for e.g. `SLABreach50percent` or `ReviewsCompleted`

## Decision

Decisions should be named with an interrogative phrase. The name should be composed of _Is_ _object_, _verb_ to identify what is being evaluated, e.g.`IsExpenseReportApproved` . You can even use questions to clarify the decision involved. Using the question format helps to limit the amount of text you have to put in the diagram, as all conditions on the outgoing sequence flows read as a simple answer to the question of the decision.

## User Groups

User groups should be named using a _noun_ or _noun phrase_. They are often used for such things as internal roles (e.g., Manager, Associate), systems (e.g., an enterprise application), or internal departments (e.g., shipping, finance).

[ ] **Also include a link to the how to create and use bpt groups**
