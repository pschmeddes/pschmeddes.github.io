#How to setup a new domain in OutSystems
To setup a new domain follow these instructions.
## Create a LifeTime 'domain' team
1. Open LifeTime Teams <yourenvironment>/lifetime/Teams_List.aspx and click on New Teams
2. Enter the domain prefix and name e.g. FLD - Fields in the New Team field and fill the description
3. Click on create 
4. You can now add users to the team with team specific permissions

### Create domain foundation application
Still in lifetime edit teams 
Create the domain Configuration Application by clicking Create Application

    - Environment: Development
    - What are you building:  GlobalService
    - Fill in your app's basic info
        - Name: <DomainPrefix> + <domainname> + Foundation e.g. FLD Fields Foundation
        - Description: <domainname> + Foundation Services
        - Upload icon: A domain specific icon
    - Click on Create App

### Create domain core widgets application
Sitll in lifetime edit teams
Create the domain Configuration Application by clicking Create Application

    - Environment: Development
    - What are you building:  GlobalUI
    - Fill in your app's basic info
        - Name: <DomainPrefix> + <domainname> + Core Widgets e.g. FLD Fields Core Widgets
        - Description: <domainname> + Core Widgets
        - Upload icon: A domain specific icon
    - Click on Create App

### Create Canonical Model application
- open team CDM Canonical Model
- click on create application
- type: ConceptUI, name: CDM <domain>, description <domain> canonical model uploadicon: <domainicon>

You are now ready to setup the domain concept.

## Create modules

Now switch to service studio
### Create module 
### Create a domain configuration module
1. Go to Service Studion and open module (Ctrl+O) "Stencil_Domain_Configuration_Lib"
2. Click Module > Clone
3. Close Module Stencil_Domain_Configuration_Lib
4. Rename the new module CloneOFStencil_Domain_Configuration to <domainprefix> +"_" <domain> + "_Configuration_Lib" e.g. FLD_Fields_Configuration_Lib
5. Rename Role SampleRole to a meaningfull role e.g. FieldsAdministrator
6. Rename Service Action SampleRole_Check to <newRole_Check> e.g. FieldsAdministrator_Check
7. Publish the module. This module is now placed in Application Independent Modules.
8. Move this module to application "<domain> Foundation"

### Create domain navigation module
1. In service studio open application <domain> Core Widgets
2. Click on add module name=<domainprefix> + <domain> + "_Navigation_CW"
3. Open manage dependencies <Ctrl+Q> 
4. Remove all dependencies to Stencil_Domain_Configuration_Lib
5. Add dependency to <domain>_Configuration_FS
6. Remove the Reminder from the datamodel diagram.
7. Click on apply
8. Check that there are no errors and no dependencies to Stencil_Domain_Configuration_Lib
9. Rename the Domain_CommonBlocks ui flow to <domain>_CommonBlocks.
10. Remove the rename reminder
11. Check that ther are no reminders or warnings in the TrueChang tab.
10. 1-click publish the module

## How-to Setup a domain concept

### Create Concept Core Application
- In lifetime go to teams and open <yourdomain> team
- Click on Create Application
- Environment: Development, type: GlobalService name <domainprefix> +<concept> + Core e.g. FLD Fields Core, Upload Icon <your domain concept icon>

### Create Concept UI Application
- In lifetime go to teams and open <yourdomain> team
- Click on Create Application
- Environment: Development, type: ConceptUI name <domainprefix> +<concept> + UI e.g. FLD Fields UI

### Create Concept Core Service Module
- In Service Studio open application <domainprefix> <concept> Core e.g. FLD Field Core
- Click on add module