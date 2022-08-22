---
title: Entity and attributes naming conventions
---

# Entities and attributes naming conventions

## How to name Entities?

<!-- https://www.sqlshack.com/learn-sql-naming-conventions/ -->

* Use **PascalCase** when naming database objects. For separating words in the database object name, Capitalize each word
* Use singular form. E.g. `Customer` **not** `Customers`
* Entity names must be descriptive
* Use nouns for entity names e.g. `Customer`

If you’re naming entities that represent real-world facts, you should use nouns. These are entities like `Employee`, `Customer`, `City`, and `Country`. If possible, use a single word that exactly describes what is in the table. On the example of our 4 Entities, it’s more than clear what data can be found in these Entities.

For relations between two entities, it’s good to use these two entities’ names and maybe add a verb between these names to describe what that action is.

Imagine that we have entities `User` and `Role`. We want to add a many-to-many relation telling us that a user had a certain role. We could use names `UserHasRole`, or if we want to be shorter – `UserRole`.

We could always make exceptions if they are logical. If we have entities  `Product` and `Invoice`, and we want to specify which products were on which invoice, we could name that table `InvoiceProduct` or `InvoiceContainsProduct`. Still, using the name `InvoiceItem` is much closer to the real world. Still, that decision is completely up to you.

## Attribute naming

* **Primary identifiers** of entities always have the attribute name `Id`.
* **Foreign key attributes**. Since they store values from the range of primary key of the referenced entity, you should use that entity name and “id”, e.g. `CustomerId`, `Employee_id`. This will tell us that this is a foreign key attribute and also point to the referenced entity.
* **Data attributes**. These are attributes that store real-world data. The same rules applies as the ones used when naming entities. You should use the least possible words to describe what is stored in that column, e.g., `CountryName`, `CountryCode`, `CustomerName`. If you expect that 2 entities will have the attribute with the same name, you could add something to keep the name unique.
* **Dates**. For dates, it’s good to describe what the date represents. Names like `StartDate` and `EndDate` are pretty descriptive. If you want, you can describe them even more precise, using names like `CallStartDate` and `CallEndDate`
* **Flags**. If we have [boolean flags](common-glossary-template.html#boolean-flag) marking if some action took place or not. We prefix the flag with `Is` e.g. `IsActive`, `IsDeleted`
