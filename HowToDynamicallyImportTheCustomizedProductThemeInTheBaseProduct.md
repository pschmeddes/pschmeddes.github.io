---
layout: default
---
# How to Dynamically Import the Customized Product Theme in the Base Product
When developing a product application for a customer, it may be that different instances are going to use it. You can image that in some cases, specific customizations are necessary, adjusted to their specific use case. For example, the application requires a different look-and-feel per country. Or some tweaks are needed in a simple user interaction. This lesson How to Create Customized Versions of a Base Application describes the architecture of a product that is meant to be customized in different installations
One of the challenges is applying the styling of the customized product to the base product. In this how-to we give you step by step instructions how to achieve this.
## Implementation steps for Reactive Web Applications
1.	Create the **Base Product Theme** and apply the base styling such as fonts and colors.
2.	Create a Customized Product Instance Theme e.g. ACME Theme and apply the custom styling
3.	Create a Customization Services module that will hold configuration items. See the Application Framework for an example how to create configuration items.
4.	In the Customization Services module create a Configuration Item to hold the full URL path to the “CustomizedProductInstanceTheme” CSS e.g.
<server path>/AcmeTheme/AcmeTheme.css named “CustomCssFileUrl”.
5.	In the CustomizationsServices_CS module create a Server Action CustomCssFileUrlGet which sets the output CustomCssFileUrl to the value of the configuration item
6.	In the BaseProductTheme module create a Client variable CustomCssFileUrl
7.	In the BaseProductTheme module create a Client action ClientCustomCssFileUrlSet that assigns the output of CustomCssFileUrlGet to the client variable   
8.	In the BaseProductTheme create a public client action LoadCssFile with the following logic: :  
Insert the following code in the JS block:
var fileRef=document.createElement("link");
    fileRef.setAttribute("rel", "stylesheet");
    fileRef.setAttribute("type", "text/css");
    fileRef.setAttribute("href", $parameters.filename);
    if (typeof fileRef!="undefined"){
        document.getElementsByTagName("head")[0].appendChild(fileref);
}
9.	In the Template_BaseProduct module add a reference to the client actions ClientCustomCssFileUrlSet and LoadCssFile
10.	Right click the Template_BaseProduct Client Actions and add an OnApplicationReady event
11.	Add the ClientCustomCssFileUrlSet to the logic of the OnApplicationReady. This will ensure that we limit the use of this action to one time per application session
12.	Switch to the interface tab and locate the LayOuts UIFlow. For each layout open the OnReady client action and add the LoadCssFile to the action flow. E.g. LayoutTopMenu:  
13.	Open the Customization Services Configuration items editor and set the value of the CustomCssFileUrl configuration item to the full url path of the customized product theme CSS file.
Now every screen based on the layouts will load the CSS and apply the styling of the customized product instance.
