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
Stll in lifetime edit teams
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
  - type: ConceptUI
  - name: CDM <domain>
  - description <domain> canonical model
  - upload icon: <domainicon>

You are now ready to setup the domain concept.

## Create modules
Open Service Studio for your development environment
### Create a Domain Security Foundation Services module
1. Go to Service Studio and open module (Ctrl+O) "Stencil_Domain_Security_FS"
2. Click Module > Clone
3. Close Module Stencil_Domain_Security_FS
4. Rename the new module CloneOFStencil_Domain_Security_FS to <domainprefix> +"_" <domain> + "_Security_FS" e.g. FLD_Fields_Security_FS
5. Rename Role SampleRole to a meaningfull role e.g. FieldsAdministrator
6. Rename Service Action SampleRole_Check to <newRole_Check> e.g. FieldsAdministrator_Check
7. Publish the module. This module is now placed in Application Independent Modules.
8. Move this module to application "<domain> Foundation"

### Create Domain Notifications Foundation Services Module
1. Go to Service Studio and open module (Ctrl+O) "Stencil_Notifications_FS"
2. Click Module > Clone
3. Close Module Stencil_Domain_Configuration_FS
4. Rename the new module CloneOFStencil_Domain_Configuration to <domainprefix> +"_" <domain> + "_Notifications_FS" e.g. FLD_Fields_Notificationsn_FS
5. TK edit from here
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
For each domain concept perform the following steps

### Create Concept Core Application
- In lifetime go to teams and open <yourdomain> team
- Click on Create Application
- Environment: Development, type: GlobalService name <domainprefix> +<concept> + Core e.g. FLD Fields Core, Upload Icon <your domain concept icon>

### Create Concept OAPI Application
- In lifetime go to teams and open <yourdomain> team
- Click on Create Application
  - Environment: Development
  - Type: GlobalService
  - Name <domainprefix> +<concept> + OAPI e.g. FLD_Fields_OAPI
  - Description: <domain> + <concept> OutSystems APIs (Service Actions)
  - Upload Icon: <your domain concept icon>
  - Click on Create app

### <optional> Create Concept API Application
**only when exposing services to external systems**

- In lifetime go to teams and open <yourdomain> team
- Click on Create Application
  - Environment: Development
  - Type: GlobalService
  - Name <domainprefix> +<concept> + API e.g. FLD_Fields_API
  - Description: <domain> + <concept> APIs (REST and or SOAP Services)
  - Upload Icon: <your domain concept icon>
  - Click on Create app

### Create Concept UI Application
- In lifetime go to teams and open <yourdomain> team
- Click on Create Application
- Environment: Development, type: ConceptUI name <domainprefix> +<concept> + UI e.g. FLD Fields UI

### Create Concept Core Service Module
- In Service Studio open application <domainprefix> <concept> Core e.g. FLD Field Core
- Click on add module
  - Name: <DomainPrefix> + "_" + <concept> + "_CS" e.g.: FLD_Fields_CS
  - Module type: Service
- Add a description to the new module. E.g. Fields Core Services
- Open manage dependencies (Ctrl+Q) and refresh all
- 1-Click publish the module
- Add the Concept entities and attributes
- Change the Id type to Text with a length of 36 (we use GUID's as identifiers)
- For each entity create the data actions using the Stencil_Core_Services_Pat
- Ensure that there a no dependencies to Stencil_Core_Services_Pat
- 1-Click publish the module

### Create Concept Canonical model
- In Service Studio open application CDM <domainname>
- Click in add module
    - Name <domainprefix> + "_" + <concept> + "_CDM" e.g.: FLD_Fields_CDM
    - Module type: Library
- Add a description to the new module e.g. Fields Canonical model
- 1-Click publish the module
- For each exposed "object" define a canonical data structure that will be used for interface parameters
  - <entity_name> - for full records e,g, Field
  - <entity_name>+Summary for list purpose e.g. FieldSummary
  - <entity_name>_Information for a nested graph of the object e.g. OrderInformation for Order and details
- Create te structure by copying an entity from the CS module and changing all identifiers to text or to a corresponding structure e.g. CreateByUser type UserId to CreatedByUserName type Text
