---
title: how to create entity bdd tests from a stencil
---

# How to create entity bdd tests from a stencil

Use this how to to create bdd tests for an entity's database actions

Decide if you require a new test block module or want to extend an existing one.
## Create a tests in a new core widgets modules

1. To create a new module open module `Stencil_TemplateEntity_Tests_CW` in ServiceStudio
1. Click Module Clone
1. Close module `Stencil_TemplateEntity_Tests_CW`
1. Rename the module to <domain>_<concept>_<entitygroup>_tests_cw e.g. `RA_SampleConceptDemoMasterTests_CW`
1. Publish the module
1. In ServiceStudio open application Independent Modules
1. Move the new application to your test application e.g. `RA Sample Concept Tests`
1. In ServiceStudio Switch to the new test module tab
1. Open the Manage Dependencies (Ctrl+Q)
1. Add a dependency to the entity to test its dababase actions
1. Switch to the data tab (Ctrl+4)
1. Locate the `Stencil_CoreServices_Pat/TemplateEntity` and find usages (F12)
1. Replace all usages with <YourEntity>
1. Ignore all errors for now
1. For each `Stencil_CoreServices_Pat\TemplateEntityDbActions\<dbServerAction>` replace with the corresponding `<YourConcept_CS\<yourEntity>DbActions\<dbServerAction>`
1. Remove the unused dependencies from `Stencil_CoreServices_Pat`
1. Use (Ctrl+R) to replace `TemplateEntity` with `<yourEntity>`
1. Open and fix all errors. E.g. replace FunctionalKey with your functional key attribute.
1. Publish your module
1. Open your TestSuite module e.g. `RA_SampleConcept_Tests`
1. Manage dependencies (Ctrl+Q)
1. Add a dependency to <YourEntity>Scenarios
1. Open the TestSuite screen
1. In the widget tree add a new container and name it <YourEntity>Tests
1. Insert a text widget and set the text to : "Feature As a <concept>adminstrator I can maintain <yourentity"
1. Insert the scenario web blocks
1. Publish the module
1. Open the TestSuite screen in your browser and check that all tests are succesfull.
