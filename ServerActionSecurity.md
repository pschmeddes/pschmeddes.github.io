# Server Action Security

A guiding principle is to always check the authentication and authorization in server side logic.
- [ ] ---Explain why --

This applies in particular to reactive and mobile applications. Since every service action call is implemented as a REST service.

Each server action must include the following checks
* Is the user logged in?
* Has the user the proper authorization to perform this action?

We can easily implement this by using the `Check<rolename>Role(UserId:)` function. We need an authentication method for system tasks such as timers and processes because there is no user there.

For this we will use a "System Account" to login before performing logic in Timers, BPT etc.

You can use the following template logic from the `CoreServicesStencil_Pat` module:

* TemplateRoleCheck
* TemplateEntityDbActions/TemplateEntityCreateOrUpdate
* TemplateEntityDbActions/TemplateEntityDelete
* Timer_TemplateAction
* ServiceAccountLogin

## TemplateRoleCheck
Checks if the user has the Template role and throws a not registered exception if False
![TemplateRoleCheck action flow](images/TemplateRoleCheck.png)

## Timer_TemplateAction
Example how to use a system account in Timers, BPT, etc.

## ServiceAccountLogin
Example Action to login the ServiceAccount

## Implementation steps

1. RoleCheck
  1. Setup the required roles in your application security module
  2. Copy action `TemplateRoleCheck` to the security module
  3. Rename `TemplateRoleCheck` to `<YourRoleName>RoleCheck` and replace the `CheckTemplateRole` action by
`Check<YourRoleName>Role`
2. Configure the Service Account
  1. Setup a username and password for the ServiceAccount
  2. Store the ServiceAccount credentials in your configuration (do not forget to encrypt the password)
3. Create the ServiceAccountLogin Action
