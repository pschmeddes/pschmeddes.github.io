# CRUD Wrappers Stencils documentation

## Description

Stencils to create entities with CRUD wrappers.

## Preparing a new core services module

1. In Service Studio open module `Stencil_DBActions_Pat`
1. If not already exist create a new service module. E.g. 'Demo_CS'
1. Create a new user exception `ValidationException`
1. Copy Server action `NotificationListConcatenate` to your module. Note: You may want to move this action to a library and add a dependency instead.
1. Create a Role to authorize users to edit your data e.g. `DemoEdit`
1. In Module `Stencil_DBActions_Pat` go to the Logic Tab and copy Server Action `TemplateRoleCheck` to your module
1. Fix the errors by replacing the TemplateRole with \<YourRole\>
1. Rename the action `TemplateRoleCheck` to `\<YourRole\>RoleCheck`
1. Repeat this step for each role you need.

## Adding entities to the module

> ⚠️ **Warning** Do NOT publish your module until you completed all the steps below!

1. If not already open in service studio open your core service module and module `Stencil_DBActions_Pat`
1. Copy TemplateEntity and paste it in your module and rename it to the desired name. E.g. `Town`
1. Fill the description for the entity
1. Change the expose read only property to "Yes"
1. In module`Stencil_DBActions_Pat` Go to Logic tab (Ctrl+3)
1. Copy the folder TemplateEntityDbActions to your module
1. Go to Data tab (Ctrl-4) and locate the TemplateEntity in the Stencil_CoreServices_Pat referenced module
1. Find all usages of the TemplateEntity (F12)
1. Use the button: Replace all instances with your new entity (select in the popup)
1. Remove the TemplateEntity dependency (Del)
1. Using Ctrl + R: find string "TemplateEntity" and replace all occurrences with your new entity
1. Designate a meaningful name to the FunctionalKey for your entity and using Ctrl + R find string `FunctionalKey` and replace all occurrences with that name
1. Fix the errors one by one by clicking on each of them
1. Add any the additional attributes to your entity
1. Add additional checks to the `/<YourEntity/>_Validate`
1. When done, check that all the TODO (To Be Done) items (shown as warnings in the TrueChange tab) and remove them when done.
1. Publish your module

Repeat these step for each entity you want to add to your module.
