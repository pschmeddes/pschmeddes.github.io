---
title: How to create an Enterprise Front End Architecture
subtitle: -
keywords: OutSystems
    HowTo
    Style Guide
    Architecture
autor: Paul Schmeddes
abstract: todo
...
---
# How to create the Enterprise Front End Architecture

This how to is based on [How to Build a Front-End Architecture in OutSystems][os-1]

![Patterns in Front-End Architecture](img\patterns-in-front-end-architecture.png)

1. External Apps
1. Internal Apps
1. Partner Apps

// Deprecated.

## Internal applcications Front-End Architecture

![Store App front end architecture](img\outsystems-ui-store-app-front-end-architecture.png)

The Front-End architecure consist of the following applications and modules:

|Application | Module | Desription |
|------------|--------|------------|
| Store | `Store` | App created with the `Template_Internal` |
| Store Style Guide | `Store_StyleGuide` | - |
|  | `Store_Theme` | Based on the `Corporate_Theme` |
|  | `Template_Store` | Internal application reactive template |
| Corporate Style Guide | `Corporate_Theme` | Library module with the corporate style |
|  | `Corporate_Patterns` | Corporate widgets |
|  | `Corporate_Resources` | Library with reusable resources |

## Install Style Guide assets from the forge

We will use the OutSystems UI Style Guide applications to jumpstart the creation of the frond-end architecture.

Asset | Description
---------|----------
 [OutSystems UI Style Guide Theme](https://www.outsystems.com/forge/component-overview/8240/outsystems-ui-style-guide-theme) | This component enables you to create your own Style Guide theme for Reactive and Mobile apps.
 [OutSystems UI Reactive Style Guide Template](https://www.outsystems.com/forge/component-overview/7526/outsystems-ui-reactive-style-guide-template) | Create new Reactive applications based on the Style Guide |
 [OutSystems UI Mobile Style Guide Template](https://www.outsystems.com/forge/component-overview/8241/outsystems-ui-mobile-style-guide-template) | Create new Mobile applications based on the Style Guide |
 [Style Guide Preview](https://www.outsystems.com/forge/component-overview/7527/outsystems-ui-style-guide-preview)| Application to preview Styles, UI Patterns, Widgets and Screen Templates

## Create the Corporate Style Guide Application

This application contains the rules to customize your Corporate Styles. These are based on the OutSystems UI and new Corporate Styles patterns.

### Create the theme application

1. Open Service Studio and click on New Application
1. Select from scratch
1. Select Reactive Web App (This app will be based on OutSystemsUI)
   1. Name: Corporate Style Guide
   1. Description: Corporate styles and patterns
   1. Upload logo: your corporate logo
1. Create the application

### Create the corporate style theme

We clone the OutSystems UI Style Guide Theme modules

1. Open module `StyleGuideTheme` (Ctrl+o)
1. Clone the module (Module > Clone)
1. Close module `StyleGuideTheme`
1. Rename `CloneOfStyleGuideTheme` to `Corporate_Theme`
1. Go to the interface tab (Ctrl+2)
1. Rename theme `StyleGuideTheme` to `CorporateTheme` and change the description to *Corporate Theme*
1. Convert the module to a library module: Module > Convert > Convert to library module
1. Confirm the conversion and publish the module
1. Close the module
1. Open application Independent modules and move the `Corporate_Theme` to application 'Corporate Style Guide'

### Add style rules to the theme using the Theme Editor

The theme editor is used to customize the base look and feel of the application. It will affect pretty much every Screen of your application. Themes are a powerful tool that can be used in multiple applications to keep a cohesive appearance.

So, let's use the Theme Editor to implement a dark mode look and feel on your
application and add a custom background to the Login Screen.

1. Open module `Corporate_Theme`
1. Go to the interface tab (Ctrl+2)
1. Open theme CorporateTheme
1. Click on the **Open Theme Editor** icon in the on the Style Sheet editor window
1. In the **Theme colors area**, expand the dropdown with the 18 available palettes and select the **Blue** one.
1. Keep the **Primary** color as the first blue (the light one) and select the third color (darkest one) as the **Background**.
1. In the **Typography** area, set the **Font** dropdown to **Open Sans**
1. In the **Structure** area click on the **Apply shadow effect** checkbox.
1. In the **Login and splash background**, select the second image in the
**Background color gradient** property.
1. Click on **Done** to save the changes and close the Theme Editor.

You can now edit the css to add any addional style rules to overide the OutSystemsUI classes or add your own.

### Theme's Style Sheet

Another way of modifying the look and feel of the app is directly through the Style Sheets. You can edit the CSS code in the Style Sheet Editor and you can choose to add new CSS classes to a theme or Screen, or override existing ones.

In this particular case, we want the Popup to have the same look and feel as the rest of the app. You will need to add extra CSS to achieve that.

1. Open the CorporateTheme style sheet.
1. Add the following CSS code to it:

```css
/* ===================================================================== */
/*  Pop-up                                                        */
/* ===================================================================== */
[data-popup] { background-color: var(--color-background-body); }
.popup-backdrop { background-color: rgba(0, 0, 0, 0.85); }

/* ===================================================================== */
/*  list-link                                                         */
/* ===================================================================== */
.list-link {
    font-size: 16px;
    font-weight: bold;
    text-decoration: underline;
}
```

1. Close the style sheet editor
1. Publish the module

### Create a Corporate assets library

Create a corporate asset library to be reusable in your applications.

1. Open module `StyleGuideThemeAssets`
1. Clone the module (Module > Clone)
1. Close module `StyleGuideThemeAssets`
1. Rename the cloned module to `Corporate_Patterns`
1. Open **Manage Dependencies** (Ctrl+Q)
1. Add a dependency to theme `CorporateTheme` in module `CorporateTheme`
1. Locate the `StyleGuideTheme` and Find Usages (F12)
1. **Replace all usages** with `CorporateTheme`
1. Remove the dependency to `StyleGuideTheme`
1. Publish the module
1. Close the module
1. Open application `Independent Modules`
1. Move module `Corporate_Patterns` to application `Corporate Style Guide`

### Create Corporate Resources module

We now add a Corporate Resources module.

1. Open application `Corporate Style Guide`
1. Click **Add Module**
   * Name: `Corporate_Resources`
   * In the **Choose module type** dropdown select **Library**
   * **Create Module**
1. Set the module description to **Reusable corporate resources**
1. Publish the module

Your **Corporate style** application is now complete

// TODO continue here

## Create the Store Style Guide application

Implementation steps

1. Create Module `Store_Theme`
1. Create module `Template_Store`
1. Create the application `Store Style Guide` from the template
1. Create the `Store_Styleguide` module
1. Refactor the `Template_Store`

### Create Module Store_Theme

We clone the OutSystems UI Style Guide Theme modules and base it on the corporate style guide theme

1. Open module `StyleGuideTheme` (Ctrl+o)
1. Clone the module (Module > Clone)
1. Close module `StyleGuideTheme`
1. Rename `CloneOfStyleGuideTheme` to `Store_Theme`
1. Go to the interface tab (Ctrl+2)
1. Rename theme `StyleGuideTheme` to `StoreTheme` and change the description to *Store Theme*
1. Convert the module to a library module: Module > Convert > Convert to library module
1. Confirm the conversion and publish the module
1. Open manage dependencies (Ctr+Q)
1. Add a dependency to theme `CorporateTheme` from module `Corporate_Theme`
1. In the themes folder select `StoreTheme`
1. Set **Base Theme** to `CorporateTheme`
1. For now we don't change the `StoreTheme` styles
1. Publish the module
1. Close the module
1. For now leave it in `Independent modules` we will move it later.

### Create module Template_Store

1. Open module `Template_ReactiveStyleGuide`
1. Clone the module (Module > Clone)
1. Close module `Template_ReactiveStyleGuide`
1. Rename the cloned module to `Template_Store`
1. Publish the module
1. Open manage dependencies (Ctrl+Q)
1. Add a dependency to theme `CorporateTheme` from module `Corporate_Theme`
1. In the themes folder select theme `StyleGuideTheme`
1. Find usages (F12)
1. **Replace all usages** with `Store_Theme`
1. Remove the depency to `StyleGuideTheme`
1. Change the module **Icon** to *store icon*
1. Change the module default theme to `StoreTheme`
1. Delete the module's theme `Template_ReactiveStyleGuide`. This prevents the creation of style sheets per application. In this case all styling is consolidated.
1. Publish the module
1. Close the module
1. For now leave it in `Independent modules` we will move it later.

### Create the application Store Style Guide from the template

1. In service studio click on **New Application**
1. Select from scratch and click **Next**
1. Select **Store** and click **Next**
1. Fill in your app's basic info"
   * **Name** Store Style Guide
   * **Description** Store applications style guide
   * **Upload Icon**: select a store icon
   * **Create App**

### Create the Store_StyleGuide module

1. In application `Store Style Guide` create a new module:
   * **Name**: Store_StyleGuide
   * **Module type**: `Store`
   * **Create Module**
1. Rename UI Flow Common to Store_Common
1. Delete UI Flow Main (We won't be creating screens in this module)
1. Publish the module
1. xxx

### Refactor the Template_Store

// DEPRECATED

Because we want to share common elements we need to customize the template and set the home screen destination.

### Create the Corporate Reactive Style Guide Template Module

1. Open module Template_ReactiveStyleGuide
1. Clone the module (Module, clone)
1. Close module Template_ReactiveStyleGuide
1. Rename the cloned module to Template_SCCReactiveStyleGuide
1. Set the descriptio to ....
1. Open manage dependecies and add a dependency to SCCCorporateStyleTheme_Th/SCCCorporateStyle theme
1. In the theme folder select the StyleGuideTheme and Find Usages (F12)
1. Replace all usagages with your corporate thene (SCCCorporateStyleTheme)
1. Remove the StyleGuideTheme\StyleGuideTheme (Theme) dependency
1. Select the module properties (Template_SCCReactiveStyleGuide)
1. Set the default theme to SCCCorporateStyleTheme
1. Delete Themes/Template_ReactiveStyleGuide theme (This will ensure that applcations not have local styles)
1. Set the module's icon to your corporate logo. (SiriusCyberneticsCorp.png)
1. Verify that the template is available in the New Aplpication selection screen
1. Delete OutSystems UI Reactive Style Guide Template as we no longer need it.

### Create Create the Corporate Reactive Style Guide Template Application

1. In service stutio click on create new application
1. Select from scratch
1. Select SCC Reactive Style Guide
    1. Name:  SCC Corporate Reactive Style Guide Template
    1. Description: SCC Corporare templates to start creating Reactive Web applications and screens.
    1. Upload logo: A logo that represents the app.
    1. Create the application
    1. Do **not** create a module
1. Open application Independent modules
1. Move module Template_SCCReactiveStyleGuide to application SCC Corporate Reactive Style Guide Template

## Create SCC Corporate Theme

We want to establish a shared layout and login experience therefore we must move some components to a shared ui module

### Create SCC Internal Apps application

1. Create a new application
   1. Name SCC Internal Theme
   1. Description: TODO
   1. Upload icon: An icon that represents the app.
   1. Create App

### Create Create SCC Internal Theme module

1. Create Module
   * Name: SCCCorporateTheme
   * Module type"recative web app
1. Publish the module
1. Rename UI Flow Commmon to SCCThemeCommon
1. Make the following elements Public
   UI Flow SCCThemeCommon:
   * Invalid Permissions
   * Login
1. Delete Ui Flow MainFlow - We won't be creating screens inside this module
1. Publish the module

### Reference the theme from the Template

1. Open module Template_SCCReactiveStyleGuide
1. Manage Dependencies
1. Add a dependency to all elements of SCCCorporateTheme
1. Replace Layouts/LayOutTopMenu with Layouts2/TopMenu
1. Delete Layouts/Topmenu
1. Replace Layouts/LayoutBlank with Layouts2/LayoutBlank
1. Delete Layouts/LayoutBlank
1. Delete UI Flow Layouts
1. Rename Layouts2 to Layouts
1. Replace Common/InvalidPermissions with SCCCorporateCommon/InvalidPermissions
1. Delete Common/InvalidPermissions
1. Replace Common/Logion with SCCCorporateCommon/Login
1. Delete Common/Login
1. Delete Common/Menu
1. Delete Common/ApplicationTitle
1. Delete Common/MenuIcon
1. Delete Common/UserInfo
1. Delete Client Variable Username
1. Delete Server Actions folder Authentication
1. Publish the module

## References

* [Course - Style Guide Architectures][os-2]
* [How to Build a Front-End Architecture in OutSystems][os-1]

[os-1]: https://success.outsystems.com/Documentation/How-to_Guides/Front-End/How_to_Build_a_Front-End_Architecture_in_OutSystems
[os-2]: https://www.outsystems.com/training/courses/71/style-guide-architectures/
