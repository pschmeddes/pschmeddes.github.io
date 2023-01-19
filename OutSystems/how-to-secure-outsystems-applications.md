# How to secure your OutSystems applications

1. general
1. web app settings
1. Mobile app settings

## Environment security settings

## [Security headers](https://owasp.org/www-project-secure-headers/#tab=Headers)

You can add HTTP Security Headers to your app using the [Factory Configuration](https://www.outsystems.com/forge/component-overview/25/factory-configuration) application. See [\[Factory Configuration\] How to - Setup the web.config file to send HTTP Security Headers to your App](https://www.outsystems.com/forums/discussion/60471/factory-configuration-how-to-setup-the-web-config-file-to-send-http-security/)

You can check your security headers at [securityheaders.com](https://securityheaders.com)

### [Strict-Transport-Security](https://owasp.org/www-project-secure-headers/#strict-transport-security)

This [\[Documentation\] Enforce HTTPS Security](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Secure_the_Applications/Enforce_HTTPS_Security) page describes how to set the strict transport security settings.

### [X-Frame-Options](https://owasp.org/www-project-secure-headers/#x-frame-options)

TODO

### [X-Content-Type-Options](https://owasp.org/www-project-secure-headers/#x-content-type-options)

TODO

### [Content-Security-Policy](https://owasp.org/www-project-secure-headers/#content-security-policy)

[/[Documentation/] Apply Content Security Policy](https://success.outsystems.com/Documentation/10/Managing_the_Applications_Lifecycle/Secure_the_Applications/Apply_Content_Security_Policy)

### [X-Permitted-Cross-Domain-Policies](https://owasp.org/www-project-secure-headers/#x-permitted-cross-domain-policies)

TODO

### [Referrer-Policy](https://owasp.org/www-project-secure-headers/#referrer-policy)

The Referrer-Policy HTTP header governs which referrer information, sent in the `Referer` header, should be included with requests made.

```xml
<add name="Referrer-Policy" value="no-referrer" />
```

### [Clear-Site-Data](https://owasp.org/www-project-secure-headers/#clear-site-data)

### [Cross-Origin-Embedder-Policy](https://owasp.org/www-project-secure-headers/#cross-origin-embedder-policy)

### [Cross-Origin-Opener-Policy](https://owasp.org/www-project-secure-headers/#cross-origin-opener-policy)

### [Cross-Origin-Resource-Policy](https://owasp.org/www-project-secure-headers/#cross-origin-resource-policy)

### [Cache-Control](https://owasp.org/www-project-secure-headers/#cache-control)

## Restrict Access to an Internal Network

[Restrict Access to an Internal Network](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/Restrict_Access_to_an_Internal_Network
)

## Secure Cookies

* [\[Documentation\] Secure Cookies](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/)

## References

Daarnaast misschien een tool om 1 en ander te checken:
[scan](https://securityheaders.com/?q=https%3A%2F%2Fgssb-dev.outsystemsenterprise.com%2FVandenBan%2FLogin&followRedirects=on)

### Security specialisation online resources

* [\[Online Course\] Role based Security](https://www.outsystems.com/training/courses/131/role-based-security/)
* [\[Online Course\] Authentication](https://www.outsystems.com/training/courses/120/authentication/)
* [\[Documentation\] Reactive web security best practices](https://success.outsystems.com/Documentation/Best_Practices/Security/Reactive_web_security_best_practices)
* [\[Documentation\] Develop Secure OutSystems Apps](https://success.outsystems.com/Support/Security/Develop_secure_OutSystems_apps)
* [\[Video\] Implementing Password Recovery in OutSystems](https://www.youtube.com/watch?v=QKqXKJdqBuY)
* [\[Documentation\] Secure Cookies](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/Enable_secure_session_cookies_and_set_application_cookies_as_secure)
* [\[Documentation\] End-Users and related articles in the section](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/End_Users)
    * [\[Documentation\] End-User Authentication and related articles in the section](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/End_Users/End_Users_Authentication)
* [\[Documentation\] User Roles and related articles in the section](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/User_Roles)
* [\[Documentation\] Protection Against Brute Force Attack](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Secure_the_Applications/Protection_against_Brute_Force_Attacks)
* [\[Documentation\] How the OutSystems Platform Helps You Develop Secure Applications](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications)
    * [Protecting OutSystems apps from access control / permissions vulnerabilities](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications/Protecting_OutSystems_apps_from_access_control_/_permissions_vulnerabilities)
    * [Protecting OutSystems Apps From Authentication Vulnerabilities](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications/Protecting_OutSystems_Apps_From_Authentication_Vulnerabilities)
    * [Protecting OutSystems apps from code injection / Cross Site Scripting attacks](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications/Protecting_OutSystems_apps_from_code_injection_/_Cross_Site_Scripting_attacks)
    * [Protecting OutSystems apps using encryption and SSL/TLS](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications/Protecting_OutSystems_apps_using_encryption_and_SSL/TLS)
    * [Protecting OutSystems apps from Cross Site Request Forgery attacks](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications/Protecting_OutSystems_apps_from_Cross_Site_Request_Forgery_attacks)
    * [Protecting OutSystems Apps From Redirects / Forwarders Vulnerabilities](https://success.outsystems.com/Support/Security/How_the_OutSystems_Platform_Helps_You_Develop_Secure_Applications/Protecting_OutSystems_Apps_From_Redirects_/_Forwarders_Vulnerabilities)
* [\[Documentation\] Injection and Cross Site Script (XSS)](https://success.outsystems.com/Documentation/Best_Practices/Security/Injection_and_Cross_Site_Script_\(XSS\))
    * [SQL Injection Warning](https://success.outsystems.com/Documentation/10/Reference/Errors_and_Warnings/Warnings/SQL_Injection_Warning)
    * [HTML Injection Warning](https://success.outsystems.com/Documentation/11/Reference/Errors_and_Warnings/Warnings/HTML_Injection_Warning)
    * [JavaScript Injection Warning](https://success.outsystems.com/Documentation/11/Reference/Errors_and_Warnings/Warnings/JavaScript_Injection_Warning)
* [\[Documentation\] Apply Content Security Policy](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Secure_the_Applications/Apply_Content_Security_Policy)
* [\[Documentation\] OutSystems Platform Server hardening](https://success.outsystems.com/Support/Security/OutSystems_Platform_Server_hardening)
* [\[Documentation\] HIPAA compliance - how OutSystems can help](https://success.outsystems.com/Support/Security/HIPAA_compliance_-_how_OutSystems_can_help)
    * [Checklist of HIPAA safeguards](https://success.outsystems.com/Support/Security/HIPAA_compliance_-_how_OutSystems_can_help/Checklist_of_HIPAA_safeguards)

Example security headers

```xml
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes" encoding="UTF-8"/> 

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
 
    <xsl:template match="/configuration/system.webServer/httpProtocol/customHeaders">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
            <add name="X-Frame-Options" value="SAMEORIGIN" />
            <add name="X-XSS-Protection" value="1; mode=block" />
            <add name="Referrer-Policy" value="no-referrer" />
           <add name="Permissions-Policy" value="accelerometer=(), ambient-light-sensor=(), autoplay=(), battery=(), camera=(), cross-origin-isolated=(), display-capture=(), document-domain=(), encrypted-media=(), execution-while-not-rendered=(), execution-while-out-of-viewport=(), fullscreen=(), geolocation=(), gyroscope=(), keyboard-map=(), magnetometer=(), microphone=(), midi=(), navigation-override=(), payment=(), picture-in-picture=(), publickey-credentials-get=(), screen-wake-lock=(), sync-xhr=(), usb=(), web-share=(), xr-spatial-tracking=(), clipboard-read=(), clipboard-write=(), gamepad=(), speaker-selection=(), conversion-measurement=(), focus-without-user-activation=(), hid=(), idle-detection=(), interest-cohort=(), serial=(), sync-script=(), trust-token-redemption=(), window-placement=(), vertical-scroll=()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
```
