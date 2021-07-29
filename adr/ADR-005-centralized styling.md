# ADR N: brief decision title
## Context
When developing applications a unified look and feel is an important element of a good user experience. Therefore we need a centralized Style Guides

## Decision
- We will centralize all styling in the designated theme.
- We will only use CSS classes for styling


## Rationale
A Style Guide ensures a consistent look-and-feel across your applications, managing complexity, ensuring ease of use, and facilitating change.
Only by centralizing the theme we can enforce the style guide.

<!--
Describe here the rationale for the design decision. Also indicate the rationale for significant *rejected* alternatives. This section may also indicate assumptions, constraints, requirements, and results of evaluations and experiments.
-->

## Status
Accepted

<!--
 [Proposed | Accepted | Deprecated | Superseded]
If deprecated, indicate why. If superseded, include a link to the new ADR.
-->

## Consequences
- For each application we designate a theme. Depending on the requirements this will be either the designated (corporate or brand) style guide theme or the application theme.
- Classes in Applications, Screens and Blocks are not allowed with the exception of temporary classes during development.
- Inline CSS is never allowed!
- A dedicated team for maintaining the Style Guide is required
