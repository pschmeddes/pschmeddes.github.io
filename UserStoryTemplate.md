---
title: User Story template
---

# User Story template

## Summary
3-liner + INVEST principle
* User stories must (ideally) be **Independent** from
one another’s
* User stories must be **Negotiable** in conversations between the business and the development team
* User stories must be acknowledged by the business that their are **Valuable**
* User stories must be written to be **Estimable**
* User stories should be as **Small** as possible
* User stories should be **Testable** through an Acceptance Criteria

## Template

* Title
* Definition: _**As a** user role **I want to** function **so that** value_
    * Make it **concrete, small,** and **testable**
* Context and Value: Map the user story into a step in the captured **business processes** and **Domain**
* Business rules: Describe the business rules that apply
* Business object: List the involved business objects
* Acceptance criteria
    * Use **business language**
    * Add pictures, screenshots or mockups to illustrate the **user experience**
    * Provide **real sample data** or as meaningful as possible
    * Identify the impact on the prior and next **business process steps**
    * Use the [**Given-When-Then**](https://www.agilealliance.org/glossary/gwt) template
* Non-functional (aka quality) requirements
    * Impose **constraints on the design or implementation**
* Resolution: Describe how the story will be developed

## Example

* Title: list promotions on homepage
* Definition:

    _**As a** head of a household,
    **I want to** see a list of promotions on my home page,
    **so that** I know which products are being sold at a specially reduced price for the week._
* Acceptance Criteria - Scenarios

    1. User can login
    * **Given** I have an active account
    * **When**  I log in with a valid password
    * **Then**  I will be directed to homepage
    2. Invalid login
    * **Given** I have an active account,
    * **When** I log in with an invalid password,
    * **Then** I will be directed to the error page
    3. Show promotions
    * **Given** I am logged in to the application,
    * **When** I go to my homepage,
    * **Then** promotional items are shown in the section promotions for the current calendar week (Sunday to Saturday)
    * **and** Promotional items are grouped by Product Category,
    * **and** Promotional items are listed in alphabetical order within the category
    * **and** The sales price for each item is always clearly shown

* Acceptance Criteria (mockup & flow)

![mockup and flow screen sample](images\MockupAndFlow.png)
