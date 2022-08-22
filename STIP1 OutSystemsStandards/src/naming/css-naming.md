---
title: CSS naming conventions
---
# CSS naming conventions

For CSS naming in OutSystem we use a slightly modified **BEM** (Block, Element, Modifier).
See <http://getbem.com/naming/> Note: Do not use underscores “__” in the names.
Block is the entire component e.g. .card and should be considered as a parent. E.g.

* `.card-title{}`
* `.card-content{}`
* `.card-footer{}`

Naming rules:

* All CSS must be in lowercase
* Separate names with a hyphen. e.g. `.color-red`
* Use tab to indent the declarations
* Write your rules in alphabetical order
* Selectors must be separated by a new line
* Use shorthand when possible e.g. `padding: 10px;`
* Do not use units when using zeroes. E.g. `padding: 0;`
* Also leave out the 0 before the pivot. E.g. `opacity: .7;`
* Be aware when vendor prefixes are required (`-webkit-transform`)
