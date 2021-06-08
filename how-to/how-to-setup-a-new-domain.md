
# How to setup a new domain in OutSystems

To setup a new domain follow these instructions.

* [Domain and Team setup](#DomainTeam)
* [Create LifeTime applications](#CreateApps)
* [Create Domain Base modules](#CreateModules)

## Domain and Team setup {#DomainTeam}

### Define and register a domain prefix

To distinquish domains we will prefix all applications and modules with a three letter domain mnemonic. Try to use only consonants. And capatilise the mnemoning. E.g. **F**ie**l**d**s**  =\> **FLD**, **M**aster **D**ata **M**anage**m**ent => **MDM**

### Create a LifeTime domain team

1. Open LifeTime Teams \<yourenvironment\>/lifetime/Teams_List.aspx and click on New Teams
1 Enter the \<domain prefix\> and name e.g. FLD - Fields in the New Team field and fill the description
1. Click on create
1. You can now add users to the team with team specific permissions

## Create LifeTime Applications {#CreateApps}

Each domain consist of a collection of LifeTime applications. A number of domain generic applications and a set of applications specific for a domain.
We will now create the generic applications:

* Domain Configuration
* Domain Core Widgets
* Domain Canonical Model

### Create Domain Configuration application

Still in lifetime edit teams
Create the domain Configuration Application by clicking Create Application

1. Environment: Development
1. What are you building:  GlobalService
1. Fill in your app's basic info
    * Name: \<DomainPrefix\> + \<domainname\> + Foundation e.g. FLD Fields Foundation
    * Description: \<domainname\> + Foundation Services
    * Upload icon: A domain specific icon
    * Click on Create App

### Create Domain Core Widgets application

Stll in lifetime edit teams
Create the domain Configuration Application by clicking Create Application

1. Environment: Development
1. What are you building:  GlobalUI
1. Fill in your app's basic info
    * Name: \<DomainPrefix\> + \<domainname\> + Core Widgets e.g. FLD Fields Core Widgets
    * Description: \<domainname\> + Core Widgets. Domain common widgets
    * Upload icon: A domain specific icon
    * Click on Create App

### Create Canonical Model application

1. Open team CDM Canonical Model
1. click on create application:
    * type: ConceptUI
    * name: CDM \<domain\>
    * description \<domain\> canonical model
    * upload icon: \<domainicon\>

## Setup a Domain Base Modules {CreateModules}

Each domain contains a set of base modules:

* Security Foundation Services
* Notifications Foundation Services
* Domain Navigation Widgets

We now will create these modules using the provided module stencils.

### Create a Domain Security Foundation Services module

1. Go to Service Studio and open module (Ctrl+O) "Stencil_Domain_Security_FS"
1. Click Module \> Clone
1. Close Module Stencil_Domain_Security_FS
1. Rename the new module CloneOFStencil_Domain_Security_FS to \<domainprefix\> +"_" \<domain\> + "_Security_FS" e.g. FLD_Fields_Security_FS
1. Rename Role SampleRole to a meaningfull role e.g. FieldsAdministrator
1. Rename Service Action SampleRole_Check to \<newRole_Check\> e.g. FieldsAdministrator_Check
1. Publish the module. This module is now placed in Application Independent Modules.
1. Move this module to application "\<domain\> Foundation"

### Create Domain Notifications Foundation Services Module

1. Go to Service Studio and open module (Ctrl+O) "Stencil_Notifications_FS"
1. Click Module \> Clone
1. Close Module Stencil_Domain_Configuration_FS
1. Rename the new module CloneOFStencil_Domain_Configuration to \<domainprefix\> +"_" \<domain\> + "_Notifications_FS" e.g. FLD_Fields_Notificationsn_FS
1. Delete the SAMPLE_Notification record from entity DomainNotification
1. Add the required DomainNotifications
1. Publish the module. This module is now placed in Application Independent Modules.
1. Move this module to application "\<domain\> Foundation"

### Create domain navigation module

1. In service studio open module Stencil_DomainCoreWidgets_CW
1. Click on Module \> Clone
1. Rename the CloneOfStencil_DomainCoreWidgets_CW to \<domainprefix\> + \<domain\> + "_Navigation_CW"
1. Open manage dependencies \<Ctrl+Q\>
1. Remove all dependencies to Stencil_Domain_Configuration_Lib
1. Add dependency to \<domain\>_Configuration_FS
1. Remove the Reminder from the datamodel diagram.
1. Click on apply
1. Check that there are no errors and no dependencies to Stencil_Domain_Configuration_Lib
1. Rename the Domain_CommonBlocks ui flow to \<domain\>_CommonBlocks.
1. Remove the rename reminder
1. Check that there are no reminders or warnings in the TrueChange tab.
1. 1-click publish the module