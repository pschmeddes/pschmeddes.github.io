# How-to add an entity to your module

Folowing the standards entities must be exposed Read Only. Therefore we required
public database actions (aka crud wrappers).
Follow this guideline to setup the database actions.

## Setup security

1. Identify the role that that has permissions to modify the entity. E.g. FieldsAdmin
1. In the \<domain\>_security_lib check if the role and the checkrole action exist.
1. If the role does not exist
    * add \<rolename\> in the security module
    * create a /<RoleName/>Check action
    * make both the role and the service action public
1. Open de dependencies in \<your core services module\> and add a dependency to the \<RoleName\> and \<RoleName\>Check action

## Creating a new entity

1. In ServiceStudio open \<YourCoreServices\> module
1. With \<Ctrl+O\> open the Stencil_CoreServices_Pat module
1. Go to the Stencil_CoreServices_Pat data tab \<Ctrl+4\>
1. Copy **TemplateEntity** to your module
1. Rename **TemplateEntity** to the **\<new entity name\>**
1. Open the entity editor and enter a proper description for the entity
1. In the entity editor open the More options and set the
    * Label
    * Label (plural)
    * Order by attribute
1. In the Indexes tab review the Unique \<Functional key attribute\> index
1. Check that the entity and all the attributes have proper descriptions

## Add database actions for the new entity

1. Switch to the **Stencil_CoreServices_Pat** and go to Logic tab (Ctrl-3)
1. Make sure the folder **TemplateEntityDbActions** is collapsed
1. Copy folder **TemplateEntityDbActions** and Paste it in **\<your core services module\>** logic tab
1. Go to Data tab (Ctrl-4) and locate the **TemplateEntity** in the **Stencil_CoreServices_Pat** referenced module
1. Find all usages of the TemplateEntity (F12)
1. Use the button: Replace all instances with your new entity (select in the popup)
1. Remove the TemplateEntity dependency (Del)
1. Using (Ctrl + R): find string "TemplateEntity" and replace all ocurrences with your new entity

## Rename the FunctionalKey attribute

1. Designate a meaningful name to the FunctionalKey for your entity and using (Ctrl + R) find string "FunctionalKey"and replace all occurences with that name
1. Fix the errors one by one by clicking on each of them
1. When done, check alll the TBD (To Be Done)  items (shown as warnings in the TrueChange tab) and remove them when OK
1. Check that there are no warnings in the TrueChange tab
1. 1-Click publish your module.

## Create BDD tests

TK Nog invullen
