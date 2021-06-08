# How-to implement database actions

Folowing the standards entities must be exposed Read Only. Therefore we required
public database actions (aka crud wrappers).
Follow this guideline to setup the database actions.

## Creating an entity

1. In ServiceStudio open \<YourCoreServices\> module
1. With \<ctrl+O\> open the Stencil_CoreServices_Pat module
1. Create your new entity in your module  
1. **BEFORE PUBLISHING** change the Id from LongInteger to Text with a length of 36. You cannot change this once the entity has been published. Set the description to "Generated UUID/GUID"
1. Add the entity attributes
1. Expand the Stencil_CoreServices_Pat TemplateEntity and copy the following attributes to your entity:

    * IsActive
    * CreatedByUserId
    * CreatedOn
    * UpdatedByUserId
    * UpdatedOn

1. In the entity editor open the More options and set the

    * Label
    * Label (plural)
    * Label Attribute (this will be used in selection lists)
    * Order By Attribute (this will be the default Order By for aggregates)
    * Is Active Attribute

1. In the Indexes tab Add a Unique \<Functional key attribute\> index
1. Check that the entity and all the attributes have proper descriptions. _Only_ use a "-" when the attribute name is self explanetory 
1. Check that there are no warnings in the TrueChange tab 
1. 1-Click publish your module.

## Setup security

1. Identify the role that that has permissions to modify the entity. E.g. FieldsAdmin
1. In the \<domain\>_security_lib check if the role and the checkrole action exist.
1. If the role does not exist

    * add \<rolename\> in the security module
    * create a /<RoleName/>Check action
    * make both the role and the service action public

1. Open de dependencies in \<your core services module\> and add a dependency to the \<RoleName\> and \<RoleName\>Check action

## Adding database actions

1. Open the Stencil_CoreServices_Pat action Logic tab (ctrl_3)
1. Make sure the folder TemplateEntityDbActions is collapsed
1. Copy folder TemplateEntityDbActions and Paste it in \<your core services module\> logic tab
1. Go to Data tab (Ctrl-4) and locate the TemplateEntity in the Stencil_CoreServices_Pat referenced module
1. Find all usages of the TemplateEntity (F12)
1. Use the button: Replace all instances with your new entity (select in the popup)
1. Remove the TemplateEntity dependency (Del)
1. Using (Ctrl + R): find string "TemplateEntity" and replace all ocurrences with your new entity
1. Designate a meaningful name to the FunctionalKey for your entity and using (Ctrl + R) find string "FunctionalKey"and replace all occurences with that name **`TBD needs revision`** 
1. Fix the errors one by one by clicking on each of them
1. When done, check alll the TBD (To Be Done)  items (shown as warnings in the TrueChange tab) and remove them when OK
