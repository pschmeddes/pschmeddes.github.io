# Data Model Change Management

When you make changes to the Data Model this may impact modules in all environments of your factory an can potentially raise blocking deployment issues.
In the OutSystems reference is described <a href="https://success.outsystems.com/Documentation/11/Reference/OutSystems_Language/Data/Database_Reference/How_Data_Model_Changes_are_Handled" target="_blank">how Data Model changes are handled</a>. This article describes how to manage data model changes in your factory and when distributing your application (Forge component or ISV delivery) for the following:
- Deleting an Attribute
- Adding an Attribute
- Renaming an Attribute
- Changing the data type of an Attribute
- Changing the Length property of a Text Attribute
- Adding a unique index
- Make a foreign key mandatory
- Make an attribute mandatory

## Deleting an Attribute
The attribute remains in the database until you drop the attribute from the database.
To do this there are several methods available depending on your installation and permissions.
### Drop attribute with SQL
If you have database access you can use database management tools to drop columns. Be aware that once a column is dropped it's no longer save to revert to a version where that column exists and the data in the column is lost.
[Access the database of your OutSystems Cloud]() describes how to get access to the SaaS database.
### Drop attribute with the DBCleaner_API
TBD

## Adding an Attribute
Beware of the reuse of deleted attributes that still exists as columns in the database.
Best practice is to add attributes to the end of the entity and not change the order of attributes ??? why? what happens when you insert a column or change the order of attributes

## Renaming an Attribute
Try to avoid renaming an attribute, change the label instead. If a rename is necessary after you deployed to another environment use the following steps:
1. Create a new attribute with the new name
2. Create an on deployment timer to move the data from the old to the new attribute
3. Remove the old attribute in all consumers.
3. Deploy to all the environments in your factory
4. When the data is migrated with success in the production environment(s) delete the timer and the old attribute.
5. Deploy to all the environments in your factory
6. Drop the attribute as described in deleting an attribute

## Changing the data type of an Attribute
First check if the type conversion is supported. If it is possible proceed with changing the datatype else follow the procedure described in [Renaming an Attribute](#)

## Changing the Length property of a Text Attribute
- Old length < New Length: proceed
- Old length > New Length:
    1. Modify to logic to only accept data with the shortened length
    2. Create a timer action to convert existing data
    4. Deploy to all the environments in your factory
    5. Change the attribute to the new Length
    6. Deploy to all the environments in your factory
- Old length <= 2000 new length > 2000: Consider placing the attribute in an extension entity following the [isolate large text and binary data](https://success.outsystems.com/Documentation/Best_Practices/Performance_and_Monitoring/Performance_Best_Practices_-_Data_model#Isolate_large_text_and_binary_data) best practice. The procedure is similar to the one described in [renaming an attribute](#)
- Old length > 2000 New length <= 2000 : No auto conversion is possible follow the [renaming an attribute](#) procedure

## Adding a unique index
When there is data present you must ensure the uniqueness before adding the index otherwise the deploy will fail.
1. Add logic to check for uniqueness when saving a record
2. Create a timer to log existing duplicates
3. When no more duplicates exist add the index and deploy

## Make a foreign key mandatory
When you make a foreign key mandatory a NOT NULL is added to the column. If there are already columns with null values the deploy will fail. To proceed do the following:
1. Add logic to check that the reference is not null when saving a record
2. Create a timer to log records with existing null values
3. When no more null values exist change the attribute and deploy

## Make an attribute mandatory
If you make an attribute mandatory that is not a foreign key no check is made in the database thus empty values are allowed. You must add validation logic to ensure that the field is not empty in both the crud wrappers as in the front end validations.
