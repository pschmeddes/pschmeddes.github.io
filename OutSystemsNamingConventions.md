# OutSystems Naming Conventions

## Table of contents

1. [Language](#language)
2. [Domains](#domains)
3. [Applications](#applications)
4. [Modules](#modules)
5. [Entities and attributes](#entities-and-attributes)
6. [Variables](#variables)
7. [Screens](#screens)
8. [Blocks](#blocks)
9. [Actions](#actions)
10. [Service Actions (OutSystems APIs)](#service-actions)
11. [REST APIs](#rest-apis)
12. [SOAP Services](#soap-services)
13. [CSS](#css)

## Language
- All OutSystems code (Service Studio and Integration Studio), including comments and documentation will be in English.
- Business terms in the OutSystems model will be in English and be taken from the [Common Glossary].
- All UI in the OutSystems model will be developed in English and may be translated using the standard OutSystems localization features if required.
- Objects in the OutSystems environment have meaningful, unabbreviated names. Where naming limits prevent this (most OutSystems element names have a limit of 50 characters), standard abbreviations as provided in the [Common Glossary] must be used.

## Domains
- Domain names do not have to comply to specific OutSystems naming restrictions and should be written in plain English.
- Max length of domain names is 50 characters
- Vertical domains have a meaningful business name (e.g. `Soccer Fields`, `Movies`)
- Horizontal domains have a meaningful name, which may be more technical (e.g. `Identity`, `Back-end Style Guide`)
- Define a 2 letter acronym for each domain. e.g. Soccer Fields :`SF`

## Applications
- Application names do not have to comply to specific OutSystems naming restrictions and should be written in plain English.
- Max length of application names is 50 characters
- The application name starts with the domain prefix of the domain its belongs to. E.g. `SF Soccer Fields App`
- Suffix the application name with it's purpose or type.
  - App - for a Reactive Web Application
  - Web - for a Traditional Web Application
  - Mobile - for a Mobile Application
  - Core - for a Core Services application exposing core business services
  - Library - for Foundation Services application that exposes business agnostic services
- Define an acronym for each application e.g. Soccer Fields App : 'SFA'
## Modules
- Use PascalCase and don't use underscores except for the layer Suffix or Prefix.
- Prefix the module name with the Application acronym except end user modules. (The module name is part of the url and we should bother users with technicalities.)

### Core Layer Module Naming
Reusable services around business concepts, exporting entities, business rules and web-blocks

| Suffix | Description                                  | Example |
| ----- | ---------------------------------------------- | ------|
| _API    | Technical wrapper to expose an **API** to External consumers, keeping core services system agnostic and supporting multiple versions of the API | Pricing_API|
| _OAPI | Technical wrapper to expose a Service Action (**O**utSystem **API**) to Internal Consumers, keeping core services system agnostic and supporting multiple versions of the API| Pricing_OAPI|
| _CW, _MCW | Isolated **C**ore **W**idgets (Blocks), to manage complexity, composition or to have its own lifecycle | Customer_CW |
| _BL, MBL | Isolated **B**usiness **L**ogic (Actions) to manage complexity, composition or to have its own lifecycle | Pricing_BL |
| _Eng | A BL becomes a Calculation **Eng**ine if it performs complex calculations, (e.g. an invoice calculation engine or an insurance simulator). **Eng**ines are usually subject to versions | Pricing_Eng |
| _Sync | Logic to **Sync**hronize data in CSs with an external system. Isolating this logic makes the CS completely system agnostic and it’s easier to decouple or replace the external system | Field_Sync |
| _CS, _MCS |  Reusable **C**ore **S**ervices with public entities, actions and web blocks | Customer_CS, Field_CS, SupplierAudit_CS, Store_Audit_CS |

*An “M” indicates a Mobile only module, like _MCS, _MBL or _MCW*

### Foundation Layer Module Naming

Non Functional requirements or integration modules, reusable in any business context

| Prefix | Description                                    | Example |
| ------ | ---------------------------------------------- | ------- |
| _Pat, _MPat | Reusable UI **Pat**terns for layout and display only - no Business logic | UserExtension_Pat, Backoffice_Pat |
| _Th | **Th**eme, look & feel elements, menu, ... |Internal_Th, Supplier_Th, Backoffice_Th |
|Template_ |Theme **templates** | Template_Backoffice, Template_Internal|
| _IS | **I**ntegration **S**ervices - technical wrapper to consume and normalize an external service | SoccerField_IS |
| _FS | **F**oundations **S**ervices to support NFR's (e.g. Audit trailing) | |
| _Drv | **Dr**i**v**er module - to have several integration services with different systems, performing the same type of operation (e.g. printers) you can create several drivers exposing the same API, with specialized implementations (like the transparency services pattern) | |
| _Lib | Generic **Lib**rary module | Audit_Lib |

*An “M” indicates a Mobile only module, like _MPat, *

## Soccer Fields naming example

| Type   | Name          | Acronym |
| ------ | --------------| --- |
| Domain | Soccer Fields | SF |
| Application | SF Soccer Fields App | SF |
| Application | SF Field Core Services | FLC |
| Application | SF Soccer Fields Core | SFC |
| Module | SoccerFields |
| Module | SF_Th |
| Module | SFC_Booking_CS |
| Module | SFC_Player_CS |
| Module | FLC_Field_CS |
| Module | FLC_Field_IS |
| Module | FLC_Field_Sync |



## Entities and attributes
- Primary identifiers of entities always have the attribute name `Id`.
- Foreign key attributes are composed of the referenced entity name suffixed with `Id` (e.g. `CustomerId` for a reference to the Customer entity)
- Include the Entity’s name in the record’s name (e.g. `Customer` instead of `record`)

## Variables
Local variables used as constants (i.e. have a fixed, default value that is not supposed to be changed over their lifetime) have a meaningful name, prefixed by the word `Const` (e.g. `ConstPollingInterval`)

## Screens
- Screen names start with the name of the (main) entity followed by a suffixes showing the purpose of the screen names. Use the following suffixes:
  - _List - Listing instances e.g. `Customer_List`
  - _Edit - for editing a record e.g. `Customer_Edit`
  - _Show - showing a record e.g. `Customer_Show`
  - tbd add more suffixes
- Set the name property of ShowRecords, EditRecords and TableRecords *TBD include reactive variant*
- Action button text is specified on UX design and follows UX standards. In situations where no UX design is available, the following action button text applies:
  - ‘Save’ to trigger the action to store the data of the current instance of an entity in the database
  - ‘Back’ to cancel the action and return to the previous screen
  - ‘New” to start the creation of a new instance of an entity
  - ‘Delete’ to (logically) remove the current instance from the database
  - ‘Edit’ to start editing the current instance on an entity

## Blocks
- Reusable (web-)blocks have a name that describes their function followed by the suffix `_Block` e.g `Customer_Block`

## Actions
- *tbd check for completeness*
- Prefix actions invoked by Timers with `Timer_`
- Use Entity/Structure names in variables
- Avoid empty labels, for example in in assigments
- Comment unclear or complex logic.
- Set the example string of Expressions
- Use Static Entities instead of hard-coded values
- Use Site Properties for “semi” static data
- Use Pascal Case

## Service Actions
Service actions are also known as **O**utSystems **API**s
TBD *Should we adopt a similar naming as for REST APIs?*

1. Service Actions follow the Server Action naming with the suffix "Oapi"
2. OAPI Versioning
    - Only use major versions, starting at v1.
    - Versions are reflected in the name of the OAPI.
    - Only backwards INcompatible updates lead to a new version of the API.
3. Don't use underscores in names

Example: `CustomerCreateOapiV1`

## REST APIs
There will be multiple APIs and potentially multiple versions of the same API. This requires naming conventions and logical structuring.

1. Base paths are based on resources.
```
/users              -> retrieves all users.
/users/{userId}     -> retrieves a specific user.
```

2. Resource names are plural nouns like "users", "customers" etc.
3. Path parameters and query parameters are implemented correctly
4. When fetching an object by ID, the parameter should be in the path.
Example(s):     `/v1/customers/123`

5. When searching through a list of objects, the parameters should be in the query:
Example(s):     `/v1/customers?name=Appy&status=active`
6. API Versioning
- Only use major versions, starting at v1.
- Versions are reflected in the path of the API.
- Only backwards INcompatible updates lead to a new version of the API.
7. Words and field names are in camelCase
Note: This is an exception to the OutSystems rule that names are in PascalCase.
```
{
    "customerNumber": 12345,
    "customerGroup": "internal"
}
```

## SOAP Services
The rules for SOAP services have not yet been established.

## CSS
For CSS naming in OutSystem we use a slightly modified BEM (Block, Element, Modifier).
See http://getbem.com/naming/ Note: Do not use underscores “__” in the names.
Block is the entire component e.g. .card and should be considered as a parent. E.g.
- `.card-title{}`
- `.card-content{}`
- `.card-footer{}`

Naming rules:

- All css must be in lowercase
- Separate names with a hyphen. e.g. `.color-red`
- Use tab to indent the declarations
- Write your rules in alphabetical order
- Selectors must be separated by a new line
- Use shorthand when possible e.g. `padding: 10px;`
- Do not use units when using zeroes. E.g. `padding: 0;`
- Also leave out the 0 before the pivot. E.g. `opacity: .7;`
- Be aware when vendor prefixes are required (`-webkit-transform`)
