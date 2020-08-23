---
layout: default
---
# How to Dynamically Import the Customized Product Theme in the Base Product
When building a customizable product one of the challenges is to apply the styling of the customized product to Base product.
This how-to is based on this architecture [How to Create Customized Versions of a Base Application](https://success.outsystems.com/Documentation/Best_Practices/Architecture/How_to_Create_Customized_Versions_of_a_Base_Application)
## Implementations steps for Reactive Web Applications
1. Create the Base Product Theme and apply the base styling such as fonts  and colors.
1. Create a Customized Product Instance Theme e.g. ACME Theme and apply the custom styling
1. Create a Customization Services module that will hold configuration items. See the Application Framework for an example how to create configuration items.
1. In the Customization Services module create a Configuration Item to hold the full url path to the “CustomizedProductInstanceTheme” css e.g. <serverpath>/AcmeTheme/AcmeTheme.css named “CustomCssFileUrl”.
1. In the CustomizationsServices_CS module create a Server Action CustomCssFileUrlGet which sets the output CustomCssFileUrl to the value of the configuration item
1. In the BaseProductTheme module Create a Client variable CustomCssFileUrl
1. In the BaseProductTheme module Create a Client action ClientCustomCssFileUrlSet that assigns the Output of SiteCustomCssFileUrlGet to the client variable
1. In the BaseProductTheme Create a public Client Action LoadCssFile with the logic below: Insert the following code in the JS block:
  ```javascript
var fileRef=document.createElement("link");
    fileRef.setAttribute("rel", "stylesheet");
    fileRef.setAttribute("type", "text/css");
    fileRef.setAttribute("href", $parameters.filename);
    if (typeof fileRef!="undefined"){
        document.getElementsByTagName("head")[0].appendChild(fileref);
}
 ```
1. In the Template_BaseProduct module add a reference to the client actions ClientCustomCssFileUrlSet and LoadCssFile
1. Right click the Template_BaseProduct Client Actions and add an OnApplicationReady event
1. Add the ClientCustomCssFileUrlSet to the logic of the OnApplicationReady. This will ensure that we limit the use of this action to one time per application session
1 Switch to the interface tab and locate the LayOuts UIFlow for each layout open the OnReady Client action and add the LoadCssFile to the action flow. E.g. LayoutTopMenu:
1. Go to Service Center and set the site property to the location of the customized product theme css..
Now every screen based on the Layouts will load the css and apply the styling of the customized product instance.

