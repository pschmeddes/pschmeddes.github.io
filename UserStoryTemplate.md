#User Story template
- Title
- Definition: _**As a** user role **I want to** function **so that** value_
    - Make it **concrete, small,** and **testable**
- Context and Value
    - Map the user story into a step in the captured **business processes**
- Acceptance criteria
    - Use **business language**
    - Add pictures, screenshots or mockups to illustrate the **user experience**
    - Provide **real sample data** or as meaningful as possible
    - Identify the impact on the prior and next **business process steps**
    - Use **Gherkin language**
- Non-functional (aka quality) requirements
    - Impose **constraints on the design or implementation**

## Example

- Title: list promotions on homepage
- Definition:

    _**As a** head of a household,
    **I want to** see a list of promotions on my home page,
    **so that** I know which products are being sold at a specially reduced price for the week._
- Acceptance Criteria (can alternatively be written in Gherkin syntax)
    - User is able to log on to app
    - User home page has a section called “Promotions”
    - Promotional items are included for current calendar week (Sunday to Saturday)
    - Promotional items are grouped by Product Category
    - Promotional items are listed in alphabetical order within the category
    - The sales price for each item is always clearly shown
- Acceptance Criteria (mockup & flow)

![mockup and flow screen sample](images\MockupAndFlow.png)
