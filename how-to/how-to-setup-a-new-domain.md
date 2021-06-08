
# How to setup a new domain in OutSystems

To setup a new domain follow these instructions.

## Create a LifeTime 'domain' team

1. Open LifeTime Teams <yourenvironment>/lifetime/Teams_List.aspx and click on New Teams
1 Enter the domain prefix and name e.g. FLD - Fields in the New Team field and fill the description
1. Click on create
1. You can now add users to the team with team specific permissions

## Create domain foundation application

Still in lifetime edit teams
Create the domain Configuration Application by clicking Create Application

1. Environment: Development
1. What are you building:  GlobalService
1. Fill in your app's basic info
    * Name: <DomainPrefix> + <domainname> + Foundation e.g. FLD Fields Foundation
    * Description: <domainname> + Foundation Services
    * Upload icon: A domain specific icon
    * Click on Create App

## Create domain core widgets application

Stll in lifetime edit teams
Create the domain Configuration Application by clicking Create Application

1. Environment: Development
1. What are you building:  GlobalUI
1. Fill in your app's basic info
    * Name: DomainPrefix + domainname + Core Widgets e.g. FLD Fields Core Widgets
    * Description: domainname + Core Widgets. Domain common widgets
    * Upload icon: A domain specific icon
    * Click on Create App

## Create Canonical Model application

1. open team CDM Canonical Model
1. click on create application:
    * type: ConceptUI
    * name: CDM <domain>
    * description <domain> canonical model
    * upload icon: <domainicon>

You are now ready to setup the domain concept.

# Setup a Domain Base Modules

Each domain contains a set of base modules:

* Security Foundation Services
* Notifications Foundation Services
* Domain Navigation Widgets

We now will create these module using the provided module stencils.

## Create a Domain Security Foundation Services module

1. Go to Service Studio and open module (Ctrl+O) "Stencil_Domain_Security_FS"
1. Click Module > Clone
1. Close Module Stencil_Domain_Security_FS
1. Rename the new module CloneOFStencil_Domain_Security_FS to <domainprefix> +"_" <domain> + "_Security_FS" e.g. FLD_Fields_Security_FS
1. Rename Role SampleRole to a meaningfull role e.g. FieldsAdministrator
1. Rename Service Action SampleRole_Check to <newRole_Check> e.g. FieldsAdministrator_Check
1. Publish the module. This module is now placed in Application Independent Modules.
1. Move this module to application "<domain> Foundation"

## Create Domain Notifications Foundation Services Module

1. Go to Service Studio and open module (Ctrl+O) "Stencil_Notifications_FS"
1. Click Module > Clone
1. Close Module Stencil_Domain_Configuration_FS
1. Rename the new module CloneOFStencil_Domain_Configuration to <domainprefix> +"_" <domain> + "_Notifications_FS" e.g. FLD_Fields_Notificationsn_FS
1. Delete the SAMPLE_Notification record from entity DomainNotification
1. Add the required DomainNotifications
1. Publish the module. This module is now placed in Application Independent Modules.
1. Move this module to application "<domain> Foundation"

## Create domain navigation module

1. In service studio open module Stencil_DomainCoreWidgets_CW
1. Click on Module > Clone
1. Rename the CloneOfStencil_DomainCoreWidgets_CW to <domainprefix> + <domain> + "_Navigation_CW"
1. Open manage dependencies <Ctrl+Q>
1. Remove all dependencies to Stencil_Domain_Configuration_Lib
1. Add dependency to <domain>_Configuration_FS
1. Remove the Reminder from the datamodel diagram.
1. Click on apply
1. Check that there are no errors and no dependencies to Stencil_Domain_Configuration_Lib
1. Rename the Domain_CommonBlocks ui flow to <domain>_CommonBlocks.
1. Remove the rename reminder
1. Check that there are no reminders or warnings in the TrueChang tab.
1. 1-click publish the module