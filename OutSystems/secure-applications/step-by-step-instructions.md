# Step by step instructions to secure your Applications.

Before applying the settings we check the headers of your application at [securityheaders.com](https://securityheaders.com).
This are the initial results:

![Initial security report](img/Initial%20Security%20Report.png)

Ample room for improvement here!

## Configure secure connections for an Environment

Do the following in the infrastructure management console (LifeTime):

1. Select the "Environments" section to see all environments.
1. Select the environment that you want to configure by clicking on it.
1. Click the "More Security Settings" link on the bottom section of the page.
1. Configure the security settings.
1. Switch **Enable HTTP Strict Transport Security (HSTS)** On
1. Switch **Force HTTPS for exposed integrations in Web Applications** On
1. In the Cookies section switch **Secure** On
1. Switch **Enable Content Security Policy** On
1. Save, this will create the default csp directives
1. Edit the CSP Directives to add values below:

| Directive | Value(s) |
| --------- | -------- |
| Font-src | self<br>data:<br>`https://fonts.gstatic.com` |
| Object-src | `none` |
| Style-src | self<br>`https://fonts.googleapis.com` |
| Other Directives | `require-trusted-types-for 'script';` |

11. Save the settings (We now have to republishe the apps to apply the changes.)
1. Go to the enviroments service center
1. There will be a message "Environment settings are pending. [Apply Settings to the Factory]()"
1. Click on "Apply settings to the factory.
1. Go to Factory > Solutions
1. Create and publish a new solution "All"
    1. Name: `All'
    1. Go to tab components and click on "Associate All Modules/Extensions"
    1. Click on Save to save the solution
    1. Go the versions tab
    1. Select the current running version and click on "Publish"
    1. Click on Ok to confirm the action.
1. Check the headers of your application at [securityheaders.com](https://securityheaders.com). ![security report summary](img/HeadersApplied1.png) 
1. Validate the CSP at [csp evaluator](<https://csp-evaluator.withgoogle.com/>) ![csp scan result](img/CSP%20Scanresults.png)  (We ignore the 'unsafe-inline' error as it is inserted by the platform)

## Adding headers with the Factory Configuration

:warning: **Warning:** Do use this in Personal Environments.

We now have to add the reported **Referrer-Policy** and **Permissions-Policy**. For this we will use the Factory Configuration forge component.

1. Install the [Factory Configuration](https://www.outsystems.com/forge/component-overview/25/factory-configuration) component from the forge.
1. Create a shared configuration.
1. todo

## Additional CSP settings on application level

We created an application with a product entity that contains an url to an external resource for the product picture. To be able to show the image we must add this resource domain in the Apps csp settings.

First we check the Error logs to see what's blocked:

1. Open Service Center
1. Go to monitoring
1. Select Errors
1. Enter "CSPReport" in the source filter field and click on filter
1. You will now see the CSP errors e.g,: `Content Security Policy blocked 'https://i.ibb.co/xDXpRt6/Automaticant.jpg'.`

We will now add `https://i.ibb.co` to the applications CSP directives:

1. Open LifeTime
1. Go to Applications
1. Select \<your application\>
1. Click on \<your application\>
1. Click on "Settings"
1. Turn **Enable Content Security Policy** On
1. Add `https://i.ibb.co` to directuve **Img-src**
1. Click on Apply and confirm the action. You will now see a message : `Changes saved. The application needs to be published to use the new settings.`
1. Open to Service Center
1. Go to Factory > Applications
1. Select \<your application\>
1. Click on \<your application\>
1. Click on [Publish] to republish the application and apply the new settings.
1. Open the application to verify that there are no more errors
