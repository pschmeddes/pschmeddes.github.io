---
title: User interface naming conventions
---

# User interface naming conventions

## UI Flows

* TBD add rules

---

## Screens

* Screen names start with the name of the (main) entity followed by a suffixes showing the purpose of the screen names. Use the following suffixes:
    * _List - Listing instances e.g. `Customer_List`
    * _Edit - for editing a record e.g. `Customer_Edit`
    * _Show - showing a record e.g. `Customer_Show`
    * tbd add more suffixes

* Set the name property of ShowRecords, EditRecords and TableRecords 
* **TBD include reactive variant**
* Action button text is specified on UX design and follows UX standards. In situations where no UX design is available, the following action button text applies:
    * **Save** to trigger the action to store the data of the current instance of an entity in the database
    * **Back** to cancel the action and return to the previous screen
    * **New** to start the creation of a new instance of an entity
    * **Delete** to (logically) remove the current instance from the database
    * **Edit** to start editing the current instance on an entity

---

## Blocks

* Reusable (web-)blocks have a name that describes their function followed by the suffix **Block** e.g **CustomerBlock**

