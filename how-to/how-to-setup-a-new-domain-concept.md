# How-to Setup a domain concept

For each domain concept perform the following steps

1. [Create LifeTime Applications](#CreateApps)
1. [Create Concept Modules](#CreateModules)

## Create LifeTime Applications {#CreateApps}

### Create Concept Core Application

1. Open the Lifetime applications page : `https://<your_lifetime_server>/lifetime/Applications.aspx`
1. Click on **Create Application**
![Create Application image](images\CreateApplication.png)

    * Choose owner team: `<your_domain_team>`
    * Choose the environment: Development
    * What are you building?: `<your_organisation>_Service` e.g. _Synobsys_Service_
    * Name `<domainprefix> + <concept>` + Core e.g. FLD Fields Core
    * Description: `enter a description`
    * Upload Icon `<your domain concept icon>`
    * Click on **Create app**

### Create Concept OAPI Application

1. Open the Lifetime applications page : `https://<your_lifetime_server>/lifetime/Applications.aspx`
1. Click on **Create Application**
    * 
    * Environment: Development
    * Type: GlobalService
    * Name \<domainprefix\> +\<concept\> + OAPI e.g. FLD_Fields_OAPI
    * Description: \<domain\> + \<concept\> OutSystems APIs (Service Actions)
    * Upload Icon: \<your domain concept icon\>
    * Click on Create app

### \<optional\> Create Concept API Application 

When exposing services to external systems create an API Application as a container for the exposed REST and or SOAP services.

1. In lifetime go to teams and open your domain team
1. Click on Create Application
    * Environment: Development
    * Type: GlobalService
    * Name \<domainprefix\> +\<concept\> + API e.g. FLD_Fields_API
    * Description: \<domain\> + \<concept\> APIs (REST and or SOAP Services)
    * Upload Icon: \<your domain concept icon\>
    * Click on Create app

### Create Concept UI Application

1. In lifetime go to teams and open your domain team
1. Click on Create Application
    * Environment: Development
    * type: ConceptUI 
    * name \<domainprefix\> +\<concept\> + UI e.g. FLD Fields UI

## Create Modules {#CreateModules}

### Create Concept Core Service Module

1. In Service Studio open application \<domainprefix\> \<concept\> Core e.g. FLD Field Core
1. Click on add module
    * Name: \<DomainPrefix\> + "_" + \<concept\> + "_CS" e.g.: FLD_Fields_CS
    * Module type: Service
1. Add a description to the new module. E.g. Fields Core Services
1. Open manage dependencies (Ctrl+Q) and refresh all and apply
1. add a dependency to your domain security module (e.g. FLD_Fields_Security_FS) check role service actions
1. 1-Click publish the module
1. Add the Concept entities and attributes
1. Change the Id type to Text with a length of 36 (we use GUID's as identifiers)
1. For each entity create the data actions using the Stencil_Core_Services_Pat
1. Ensure that there a no dependencies to Stencil_Core_Services_Pat
1. 1-Click publish the module

### Create Concept Canonical model

1. In Service Studio open application CDM <domainname>
1. Click in add module
    * Name \<domainprefix\> + "_" + \<concept\> + "_CDM" e.g.: FLD_Fields_CDM
    * Module type: Library
1. Add a description to the new module e.g. Fields Canonical model
1. 1-Click publish the module
1. For each exposed "object" define a canonical data structure that will be used for interface parameters
    * \<entity_name\> - for full records e,g, Field
    * \<entity_name\>_Summary for list purpose e.g. FieldSummary
    * \<entity_name\>_Information for a nested graph of the object e.g. OrderInformation for Order and details
1. Create te structure by copying an entity from the CS module and changing all identifiers to text or to a corresponding structure e.g. CreateByUser type UserId to CreatedByUserName type Text