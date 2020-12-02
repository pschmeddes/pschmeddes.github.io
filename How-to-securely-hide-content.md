# How to securely hide content in reactive web applications

This how-to guide describes follows the  [Reactive web security best practices](https://success.outsystems.com/Documentation/Best_Practices/Security/Reactive_web_security_best_practices) and shows you how-to securely hide content from unauthorized users in the following situations.
- displaying sensitive data
- editing sensitive data

## Showing sensitive data to authorized users only

### Fetch data from the database
When you fetch data from the database add a filter to the aggregate to check if the user has the required role e.g. `CheckEmployeeManagerRole()`

### Fetch data from other sources
Inside the Data Action start with a CheckRole and exit the action with empty output if the user does not have the role.

### Hiding elements in the screen using the _hidden_ class
Be aware that a reactive screen always contains the full code stack of the page hiding data using an if statement still exposes the data to the browser.

If you want to hide a widget you can use the class `hidden` in either the style class or the extended class attribute of the widget or block with the folloing steps:
1. Creating a client function `UserHas<SomeRole>` with output parameter `HasRole`
    - Insert a JavaScript element
    - Add an output parameter HasRoleJS and map it to the HasRole output parameter
    - Set the JavaScript code to:
    `// check if the current user has the '<SomeRole>' role
$parameters.HowToGuideUser = $public.Security.checkIfCurrentUserHasRole($roles.<SomeRole>);`
2. Entering the following expression in the class or Extended style class attribute: `If(UserHas<SomeRole> (),"","hidden")`

### Hiding elements using an _If_ widget
Using the same approach as for the hidden class set the condition of the if to `<UserHasSomeRole>()`
Be aware of side effects when you put some widgets inside an If widget e.g. hiding a

## Editing sensitive data
tbd
## Redirecting users to a specific page per role
tbd  
