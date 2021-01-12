#User Story template

## Summary
3-liner + INVEST principle
- User stories must (ideally) be **Independent** from
one another’s
- User stories must be **Negotiable** in conversations between the business and the development team
- User stories must be acknowledged by the business that their are **Valuable**
- User stories must be written to be **Estimable**
- User stories should be as **Small** as possible
- User stories should be **Testable** through an Acceptance Criteria

## Template

- Title
- Definition: _**As a** user role **I want to** function **so that** value_
    - Make it **concrete, small,** and **testable**
- Context and Value: Map the user story into a step in the captured **business processes** and **Domain**
- Business rules: Describe the business rules that apply
- Business object: List the involved business objects
- Acceptance criteria
    - Use **business language**
    - Add pictures, screenshots or mockups to illustrate the **user experience**
    - Provide **real sample data** or as meaningful as possible
    - Identify the impact on the prior and next **business process steps**
    - Use the [**Given-When-Then**](https://www.agilealliance.org/glossary/gwt) template
- Non-functional (aka quality) requirements
    - Impose **constraints on the design or implementation**
- Resolution: Describe how the story will be developed

## Example

- Title: list promotions on homepage
- Definition:

    _**As a** head of a household,
    **I want to** see a list of promotions on my home page,
    **so that** I know which products are being sold at a specially reduced price for the week._
- Acceptance Criteria (can alternatively be written in Gherkin syntax)
    - User can log on to app
    - User home page has a section called “Promotions”
    - Promotional items are included for current calendar week (Sunday to Saturday)
    - Promotional items are grouped by Product Category
    - Promotional items are listed in alphabetical order within the category
    - The sales price for each item is always clearly shown
- Acceptance Criteria (mockup & flow)

![mockup and flow screen sample](images\MockupAndFlow.png)
