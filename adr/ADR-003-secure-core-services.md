---

title: ADR 3 - Core Services must be secured

---

# ADR 3: Core Services must be secured

* Public OutSystems Server Actions are exposed as REST services when consumed by Reactive or Mobile web applications.
* When actions are not secured it's not possible to include the user in the audit trail

## Decision

We will check that a user is logged in and that this user has the proper authorization to perform the action. For this we will using the `<Check<RoleName>` function

## Rationale

* Security is more important than ease of development.
* Checking authorization is straightforward

We rejected the use of a token because in rest request the token parameter will become visible and may be copied.

> Usernames, passwords, session tokens, and API keys should not appear in the URL, as this can be captured in web server logs, which makes them easily exploitable.
 `https://api.domain.com/user-management/users/{id}/someAction?apiKey=abcd123456789  //Very BAD !!`
 The above URL exposes the API key. So, never use this form of security.

## Status

Accepted

## Consequences

* It's not possible to perform unauthorized actions.
* System actions require a "System or Service Account" to be authorized for secured actions.
