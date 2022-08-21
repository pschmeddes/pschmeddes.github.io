# Application Architecture

Information on how the STIP1 solution on the Outsystems platform is
structured in Domains, Concepts and Modules.

## Domains

During the \' Blauwdruk\' phase of STIP1, the analysts came up with a
business domain model, which was recognized and approved by the business
takeholders. This is the starting point for partitioning the STIP1
solution.

![Blauwdruk business domains](..\img\Blauwdruk-business-domains.png)

This model has been validated on its technical viability and after
approval by the Architecture Board been transferred to the Outsystems
platform.

### Outsystems domain implementation

The business domain model has been transferred to the Outsystems
platform, where the business domains are implemented as vertical Domains
in the Discovery tool. The business domains have been supplemented by a
set of 'enabler' (or horizontal) domains that take care of the \'
plumbing\' of the solution. In Discovery, the implementation domain
model looks like this:

![OutSystems Domains](..\img\OutSystemsDomains.png)

The existence and maintenance of Implementation Domains is the
responsibility of the **OutSystems Architect**.

Implementation Domains are identified by a Domain Identifier and a name.

### Domains overview

Per April 1st, 2020, as a result of project realignment, the business domains have been reconsidered and functionalities are reassigned accordingly.
Approved domains
This is the list of approved domains:

Icon | Identifier (DOM) | Name (Domain) | Type | Business name | Technical ownership
-----|------------------|---------------|------|-----|---
![Finance logo](..\img\Finance.png) | FIN | Finance | Vertical | 09 Finance | -
![InboundPlanning logo](..\img\InboundPlanning.png) | IBP | Inbound Planning | Vertical | 04 Inbound Planning | -
![MDM Logo](..\img\MasterDataManagement.png) | MDM | Master Data Management | Vertical | 08 Master data management | Team 1
![PRD Logo](..\img\Production.png) | PRD | Production | Vertical | 03 Production | -
![OPB](..\img\OutBoundPlanning.png) | OBP | Outbound Planning | Vertical | 06 Outbound Planning | -
![PUR](..\img\Purchasing.png) | PUR | Purchasing | Vertical | 01 Inkopen | Team 1
![SLS](..\img\Sales.png) | SLS | Sales | Vertical | 02 Verkoop | Team 3
![TSP](..\img\TransportPlanning.png) | TSP | Transport | Vertical | 07 Transport | -
![WHS](..\img\Warehouse.png) | WHS | Warehouse | Vertical | 05 Warehouse | Team 2
 | CDM | Canonical Data Model | Horizontal | - | All teams
 | FOR | Forge Components | Horizontal | - | Paul
 | THM | Theme Development | Horizontal | - | Paul
 | TRA | Translations | Horizontal | - | Team 3
 | UTL | Utility | Horizontal | - | Team 3
 | ACC | Access Control | Horizontal | 15 Rollen en autorisaties | Team 3
![SPO](..\img\SalesPortal.png) | POR | Sales Portal | Vertical | | Team

The list of implemented Domains is registered in the Outsystems [Discovery](https://gssb-dev.outsystemsenterprise.com/discovery/Domains.aspx) tool.

Each domain is also a [Lifetime team](https://gssb-lt.outsystemsenterprise.com/lifetime/Teams_List.aspx).

## Concepts

As domains can still be pretty large chunks, the next breakdown level is
that of a Concept. A Concept exists completely within the boundary of a
Domain. Concepts are typically roughly based on business objects. For
example: the Master Data Management domain includes Concepts like
Product, Party, Organization, etc. Technically, Concepts have no
Outsystems component. Instead we use naming conventions to identify
components that belong to a Concept.

Not all domains require Concepts. Some domains are small and to the
point enough to get by without this additional layer of granularity.
Whether or not a Domain is broken down into Concepts is the
responsibility of the Application Architect.

This is the current approved [list of Concepts](todo/List+of+Concepts)

## Modules

Modules are the Units-of-Work in Outsystems. A module is a set of data
and/or logic that can be checked out and worked on. Publishing a Module
resolves its dependencies and creates a piece of executable logic.

Modules are assembled in Applications, which are the smallest deployable
units on the Outsystems execution platform. As such, the assembly of
modules into Applications is subject to the rules of the [Outsystems
Layered
Architecture](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/The_Architecture_Canvas).
Therefore, Applications are not significant in this architectural
breakdown, although Applications do play an important role in other
areas, such as deployment and authorization.

As Modules are also subject to the [Outsystems Layered
Architecture](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Designing_the_Architecture_of_Your_OutSystems_Applications/The_Architecture_Canvas),
there may be many modules to realize a Concept or a Domain.
