---
title: Variable naming conventions
---

# Variable naming conventions

The following rules apply to all types of variables:

* Variable names are in PascalCase
* The name must be self explanatory and express the usage
* **Identifiers** of entities always have the entity name combined with `Id`., e.g. `CustomerId`, `Employee_id`.
* **Dates**. For dates, it’s good to describe what the date represents. Names like `StartDate` and `EndDate` are pretty descriptive. If you want, you can describe them even more precise, using names like `CallStartDate` and `CallEndDate`
* **Flags**. If we have [boolean flags](common-glossary-template.html#boolean-flag) marking if some action took place or not. We prefix the flag with `Is` e.g. `IsActive`, `IsDeleted`

## Input variables

* no rules yet

## Local variables

* **Constants** Local variables used as constants (i.e. have a fixed, default value that is not supposed to be changed over their lifetime) have a meaningful name, prefixed by the word **Const** (e.g. **ConstPollingInterval**)

## Output variables

* no rules yet
