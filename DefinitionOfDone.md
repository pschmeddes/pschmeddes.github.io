# Definition of Done
The **D**efinition **o**f **D**one (DoD) is used to determine when a task or user story is completed: DONE!

## When is a Task DONE?
*	Coding is complete:
  *	Coded in accordance with the [OutSystems development standards](index.md),
  *	commented,
  *	documented,
  * developer tested,
  * peer reviewed,
  * published without broken references and warnings

## When is a User story DONE?
*	All tasks are completed;
* BDD tests written and passing. I.e. meeting the acceptance criteria.
* No (new) findings in [Discovery](https://www.outsystems.com/forge/component-overview/409/discovery)
* No technical debt added in [Architecture Dashboard](https://www.outsystems.com/platform/architecture-dashboard/)

## When is a Sprint DONE?
*	All User stories are done;
*	Deployed to system test environment and passed system tests;
*	Any build- deployment- configuration changes implemented documented and communicated.

# Checklist for code review

- [ ] Naming is in accordance with the [OutSystems Naming Conventions](OutSystemsNamingConventions.md)
- [ ] All code and documentation is in English [ADR 2 standard language is English.](ADR-002-standard-language-is-English.md)
- [ ] No findings in Discovery
- [ ] No findings in the Architecture Dashboard

## Screen
- [ ] There is a clear description
- [ ] Screen rendering is checked the browser zoom at 100% and all applicable screensizes for Tablets etc. (Chrome Developer Tools <Ctrl + Shift + I> and Toggle device toolbar <Ctrl + Shift + M)
- [ ] There is no inline CSS
- [ ] All temporary CSS classes are replaced by Theme classes

## Actions
- [ ] There is a clear description
- [ ] Is the name of the action self explanatory?
- [ ] All variables have a clear description
- [ ] Variable names are self explanatory
- [ ] The action performs a single task
- [ ] Does the action comply with the "Fits into my head" rules
- [ ] Are the action flow vertical and tidy
- [ ] Assigns and if statements have proper labels
- [ ] Complex logic is clearly documented
- [ ] Action flow is understandable without opening the elements
- [ ] No upward flows are used if it's not a cycle
- [ ] Check if a cycle can be replaced by a list operation [“List” We Forget…](https://medium.com/productleague/list-we-forget-387fbd5173d4)

## Queries (Aggregates and advanced SQL)
- [ ] The name is self explanatory
- [ ] There is a clear description
- [ ] Prefer aggregates only use SQL when the query is not possible with an aggregate or for bulk operations
- [ ] Are filters as simple as possible?
- [ ] Are the entities joined correct. Pay attention to the with or without clause.
- [ ] Are the entities indexed properly
- [ ] There are no hard coded values
- [ ] Is the max records value set

## Resources
- [ ] Are large resources such as Excel files and images been placed in a seperate module?
