---
title: REST API naming conventions
---

# REST API naming conventions

There will be multiple APIs and potentially multiple versions of the same API. This requires naming conventions and logical structuring.

1. Base paths are based on resources.

```
/users              -&gt; retrieves all users.
/users/{userId}     -&gt; retrieves a specific user.
```

1. Resource names are plural nouns like **users**, **customers** etc.
1. Path parameters and query parameters are implemented correctly
1. When fetching an object by ID, the parameter should be in the path.
Example(s):     **/v1/customers/123**

1. When searching through a list of objects, the parameters should be in the query:
Example(s):     **/v1/customers?name=Appy&status=active**
1. API Versioning
    * Only use major versions, starting at v1.
    * Versions are reflected in the path of the API.
    * Only backwards INcompatible updates lead to a new version of the API.
1. Words and field names are in camelCase
Note: This is an exception to the OutSystems rule that names are in PascalCase.

```
{
    "customerNumber": 12345,
    "customerGroup": "internal"
}
```
