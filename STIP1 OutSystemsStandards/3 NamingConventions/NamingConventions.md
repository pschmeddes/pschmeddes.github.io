# Naming conventions

How to name a new Outsystems component?

If not stated otherwise on this page, we comply with the [[Synobsys
naming conventions for
Outsystems]{.underline}](https://synobsys.github.io/standards/OutSystemsNamingConventions.html),

Components for which we have different naming conventions are:

* [Domain](#Namingconventions-Domain)
* [Application](#Namingconventions-Application)
* [Module](#Namingconventions-Module)
* [User Interface](#Namingconventions-UserInterface)
* [Screens](#Namingconventions-Screens)
* [General rules](#Namingconventions-Generalrules)
* [Standard screen names](#Namingconventions-Standardscreennames)
* [Blocks](#Namingconventions-Blocks)
* [Database](#Namingconventions-Database)
* [Translations](#Namingconventions-Translations)
* [UI translations](#Namingconventions-UItranslations)
* [Guidelines](#Namingconventions-Guidelines)

## Domain

Domain names in Outsystems should adhere to the following convention:

**\[DOM\] \[Domain\]** where:

* \[DOM\] is the three letter acronym (all capitals) of the domain.
* \[Domain\] is the full name of the domain.

New domains should be registered in the [approved list of domains]().

## Application

Application names for **domain level applications** should follow the
following naming convention:

**\[DOM\] Domain \[Type\]** where:

* \[DOM} is the domain identifier of the domain the Application belongs
to,
* \[Type\] is the functional name that describes the module's content,
following the Outsystems standards.

Application names for **concept level applications** should follow the
following naming convention:

**\[DOM\] \[Concept\] \[Type\]** where:

* \[Concept} is formal name of the Concept the Application belongs to,
* \[Type\] is the functional name that describes the module's content,
following the Outsystems standards.

This is the list of valid Application types:

 Application type | Application contents  | Allowable module types  
 ----------|---------------------------------------------|------------
  User Interface | Holds the end user modules that contain the domain's screens and blocks.| UI
Core Widgets | holds the modules with the reusable screen blocks that are shared between UI modules within the domain  | CW
Core        | holds the modules with the core services (CS) and business logic (BL) for the domain, as well exposure of these services to other domains (OAPI) | CS,
 | | | BL,
 | | | OAPI
API | holds the modules that expose the domain's services to other modules or other systems, including OutSystems applications on a different environment | API
Foundation | Holds the modules that supply the foundation services for the domain | FS <br>FBL <br>FOAPI
CDM      | Holds the Canonical Model for the domain.   | CDM        |

\*we only use a subset of suggested module types by Outsystems

## Module

The naming convention for modules is as follows:

For domain-level modules:

**\[DOM\]\_Domain\[Function\]\_{Type\]**, where:

\[DOM} is the domain identifier of the domain the Module belongs to\
\[Function\] is an optional functional name that describes the module's
content, for as far it is not a standard component whose content is
identified by the \[Type\].\
\[Type\] is one of the common module type acronyms used by Outsystems
(e.g. CS for Core Services or OAPI for Outsystems API).

For Concept-level Modules, the naming convention is a little different:

**\[DOM\]\_\[Concept\]\[Function\]\_{Type\]**, where:

\[Concept\] is the formal name of the Concept the module belongs to.

This is the list of valid Module types:

Module | Content | Outsystems Module type
-------|---------|------------------------
UI | Screens and private blocks | Concept UI
CW | Core widgets | Concept UI
CS | Core services | Service
OAPI | Outsystems API's (service actions) |Service
API | External API's (REST) | Service
FS | Foundation services | Blank
IS | Integration services | Service
DRV | Driver | Service
CDM | Canonical data model | Library

Examples:

MDM_DomainNotifications_FS 
: Foundation Services module providing Notifications services for the Master Data Management domain : MDM_ProductNotifications_FS | Foundation Services module providing Notifications services for the Product concept in the Master Data Management domain
MDM_Organization_CS 
: Core services module for the Organization concept in the Master Data Management domain

## User Interface

### Screens

#### General rules

* The name of a screen must convey the screen's purpose.

* Use the ObjectAction scheme for naming screens, e.g. SalesOrderEntry or ProductEdit.

#### Standard screen names

Type | Name | Screen Template
-----|------|---------
Entity list | \[Entities\] | Global List,<br>Global MasterDetail
Entity list with bulk actions | \[Entities\]Bulk\[Action\] | Global Bulk Actions
Entity details view      | \[Entity\]DetailView | Global Detail View |
Entity details edit      | \[Entity\]DetailEdit | Global Detail Edit |

For custom screen types, keep as close to the naming standards for
standard screens as possible and useful.

### Blocks

Blocks follow the same naming conventions as screens.

As the icon in front of the name identifies the element as a block
rather than a screen, it is not required to add the suffix 'Block' to
the name.

## Database

When creating new entities, make sure their names and the names of their
attributes match the names of the entities in the Logical Data Model
which they implement. As the naming conventions for the LDM are a bit
different and less restrained than the entity names and attribute names
in Outsystems, the following rules apply:

* Keep as close to the English names in the Logical Data Model as possible
* Use CamelCase to join separate words in the LDM name (e.g. Product group in the LDM becomes ProductGroup in Outsystems)
* Use abbreviations only when the resulting name would exceed the Outsystems allowed name length and use them consistently (search for similar cases before choosing an arbitrary abbreviation)
* If there is confusion or the need for a better name, contact the Data Architect before deciding to deviate from the LDM name.

## Translations

### UI translations

The primary application language is English, the Definition of Done
requires that the full UI is delivered both in English and in Dutch.
This means that UI translations are the responsibility of the teams.

#### Guidelines

1. Always use the general **nl - Dutch** Multilingual locale (**not** the **nl-nl Dutch (Netherlands)** one).
1. When adding translations for screen elements that were added to the template, always refer to similar translations that came with the screen template for consistency.
1. Always use the Dutch names from the Logical Data Model for attribute labels, applying the exact spacing and capitalization. (e.g. the Dutch translation for the 'Product group code' as stated in the LDM is 'Artikelgroepcode', not 'Produkt Groep code')
1. General rules for Dutch labels and screen text:
    1. Apply the Dutch spelling rules
    1. Minimize the use of separating spaces or hyphens and capitalization, as is common in English: Product Group translates to 'Artikelgroep', not 'Artikel Groep' or 'Artikelgroep or Artikel-groep'.
    1. The first word in a label or column heading starts with a
        capital
