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
    - What are you building:  DomainCoreWidgets
    - Fill in your app's basic info
        - Name: <DomainPrefix> + <domainname> + Core Widgets e.g. FLD Fields Core Widgets
        - Description: <domainname> + Core Widgets
        - Upload icon: A domain specific icon
    - Click on Create App
## Create a domain configuration module
1. Go to Service Studion and open module (Ctrl+O) "Stencil_Domain_Configuration_Lib"
2. Click Module > Clone
3. Close Module Stencil_Domain_Configuration_Lib
4. Rename the new module CloneOFStencil_Domain_Configuration to <domainprefix> +"_" <domain> + "_Configuration_Lib" e.g. FLD_Fields_Configuration_Lib
5. Rename Role SampleRole to a meaningfull role e.g. FieldsAdministrator
6. Rename Service Action SampleRole_Check to <newRole_Check> e.g. FieldsAdministrator_Check
7. Publish the module. This module is now placed in Application Independent Modules.
8. Move this application to 