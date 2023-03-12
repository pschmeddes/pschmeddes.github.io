# How to secure your OutSystems applications

* TOC
{:toc}

## [Security headers](https://owasp.org/www-project-secure-headers/#tab=Headers)

> The OWASP Secure Headers Project (also called OSHP) describes HTTP response headers that your application can use to increase the security of your application. Once set, these HTTP response headers can restrict modern browsers from running into easily preventable vulnerabilities. The OWASP Secure Headers Project intends to raise awareness and use of these headers.

You can add HTTP Security Headers to your OutSystems application using the [Factory Configuration](https://www.outsystems.com/forge/component-overview/25/factory-configuration) forge component. See [\[Factory Configuration\] How to - Setup the web.config file to send HTTP Security Headers to your App](https://www.outsystems.com/forums/discussion/60471/factory-configuration-how-to-setup-the-web-config-file-to-send-http-security/)

OWASP has an overview of available [analysis tools](https://owasp.org/www-project-secure-headers/#analysis-tools) to validate an HTTP security header configuration.

I used [securityheaders.com](https://securityheaders.com) to check the headers of my sample application.

In the following sections we describe each header and how to set it in OutSystems at the server and application level.

### [Strict-Transport-Security](https://owasp.org/www-project-secure-headers/#strict-transport-security)

>HTTP Strict Transport Security (also named HSTS) is a web security policy mechanism which helps to protect websites against protocol downgrade attacks and cookie hijacking. It allows web servers to declare that web browsers (or other complying user agents) should only interact with it using secure HTTPS connections, and never via the insecure HTTP protocol. HSTS is an IETF standards track protocol and is specified in [RFC 6797](https://www.rfc-editor.org/rfc/rfc6797). A server implements an HSTS policy by supplying a header (Strict-Transport-Security) over an HTTPS connection (HSTS headers over HTTP are ignored).

Values:

| Value | Description |
| ----- | ----------- |
| `max-age=SECONDS` | The time, in seconds, that the browser should remember that this site is only to be accessed using HTTPS. |
| `includeSubDomains` | If this optional parameter is specified, this rule applies to all of the site’s subdomains as well. |

Example:

```json
Strict-Transport-Security: max-age=31536000 ; includeSubDomains
```

Follow the steps in this [\[Documentation\] Enforce HTTPS Security](https://success.outsystems.com/Documentation/11/Managing_the_Applications_Lifecycle/Secure_the_Applications/Enforce_HTTPS_Security) page to set the strict transport security settings.

### [X-Frame-Options](https://owasp.org/www-project-secure-headers/#x-frame-options)

>The X-Frame-Options response header (also named XFO) improves the protection of web applications against clickjacking. It instructs the browser whether the content can be displayed within frames.
>The Content-Security-Policy (CSP) frame-ancestors directive obsoletes the X-Frame-Options header. If a resource has both policies, the CSP frame-ancestors policy will be enforced and the X-Frame-Options policy will be ignored.

#### Values

| Value | Description |
| ----- | ----------- |
| `deny` | No rendering within a frame. |
|`sameorigin` | No rendering if origin mismatch. |
| `allow-from: DOMAIN` | Allows rendering if framed by frame loaded from DOMAIN (not supported by modern browsers). |

Example

```json
X-Frame-Options: deny
```

We use CPS therefore there is no need to set the X-Frame-Options header

### [X-Content-Type-Options](https://owasp.org/www-project-secure-headers/#x-content-type-options)

TODO

### [Content-Security-Policy](https://owasp.org/www-project-secure-headers/#content-security-policy)

**Content Security Policy** ([CSP](https://developer.mozilla.org/en-US/docs/Glossary/CSP)) is an added layer of security that helps to detect and mitigate certain types of attacks, including Cross-Site Scripting ([XSS](https://developer.mozilla.org/en-US/docs/Glossary/Cross-site_scripting)) and data injection attacks. These attacks are used for everything from data theft, to site defacement, to malware distribution. <[mdn csp]>

It is advisable that you configure the CSP in every environment. Start with the allowed sources in an environment, for all its applications. Then, specify the sources per application, as needed, to override the general configuration.

Follow this [\[Documentation\] Apply Content Security Policy](https://success.outsystems.com/Documentation/10/Managing_the_Applications_Lifecycle/Secure_the_Applications/Apply_Content_Security_Policy) guide to apply csp to your environments and applications.

#### Allow google fonts imports

When you import a google font e.g.: `@import url('https://fonts.googleapis.com/css?family=Roboto:400,700');` then we must add two directives. One fore the import and one for the actual fonts as these are loaded from a different location.

| directive | value |
| --------- | ----- |
| **Style-src** | `https://fonts.googleapis.com`|
| **Font-src** | `https://fonts.gstatic.com` |

#### Other directives

Consider requiring Trusted Types for scripts to lock down DOM XSS injection sinks. You can do this by adding "require-trusted-types-for 'script'" to your policy.
In the Other directives input add the following:

`require-trusted-types-for 'script'`

#### High Security Findings

At runtime the following values are added to the 'script' directive:

* 'unsafe-inline' : 'unsafe-inline' allows the execution of unsafe in-page scripts and event handlers.
* 'unsafe-eval' : 'unsafe-eval' allows the execution of code injected into DOM APIs such as eval().

These are reported as a 'High Severity Finding'
TODO explain why they are inserted and how the risk is mitigated.

#### CSP Evaluator

You can validate your csp with this [csp evaluator](<https://csp-evaluator.withgoogle.com/>)

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

### Configuration proposal

Please note the best practices below suggest methods to change web server configuration to add headers. Security headers can also be successfully added to your application at the software level as well in almost every web language. Many web frameworks add some of these headers automatically.

The following section proposes a configuration for the actively supported and working draft security headers.
Proposed values

⚠️ The Pragma header is only specified for backwards compatibility with the HTTP/1.0 caches.

💡 Content of the table below is also provided, as JSON, via [this](https://owasp.org/www-project-secure-headers/ci/headers_add.json) file (automatically updated).

| Header name | Proposed value |
| ----------- | -------------- |
| Strict-Transport-Security | max-age=31536000 ; includeSubDomains |
| X-Frame-Options | deny |
| X-Content-Type-Options | nosniff |
| Content-Security-Policy | default-src 'self'; object-src 'none'; |
| frame-ancestors | 'none'; upgrade-insecure-requests; block-all-mixed-content |
| X-Permitted-Cross-Domain-Policies | none |
| Referrer-Policy | no-referrer |
| Clear-Site-Data | "cache","cookies","storage" |
| Cross-Origin-Embedder-Policy | require-corp |
| Cross-Origin-Opener-Policy | same-origin |
| Cross-Origin-Resource-Policy | same-origin |
| Permissions-Policy | accelerometer=(),ambient-light-sensor=(),autoplay=(), battery=(),camera=(),display-capture=(),document-domain=(),encrypted-media=(),fullscreen=(),gamepad=(),geolocation=(),gyroscope=(),layout-animations=(self),legacy-image-formats=(self),magnetometer=(),microphone=(),midi=(),oversized-images=(self),payment=(),picture-in-picture=(),publickey-credentials-get=(),speaker-selection=(),sync-xhr=(self),unoptimized-images=(self),unsized-media=(self),usb=(),screen-wake-lock=(),web-share=(),xr-spatial-tracking=() |
|Cache-Control | no-store, max-age=0 |
|Pragma | no-cache |

## Secure Cookies

* [\[Documentation\] Secure Cookies](https://success.outsystems.com/Documentation/11/Developing_an_Application/Secure_the_Application/)

## Example security headers

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

```json
{
  "last_update_utc": "2023-01-12 21:19:59",
  "headers": [
    {
      "name": "Cache-Control",
      "value": "no-store, max-age=0"
    },
    {
      "name": "Clear-Site-Data",
      "value": "\"cache\",\"cookies\",\"storage\""
    },
    {
      "name": "Content-Security-Policy",
      "value": "default-src 'self'; object-src 'none'; frame-ancestors 'none'; upgrade-insecure-requests; block-all-mixed-content"
    },
    {
      "name": "Cross-Origin-Embedder-Policy",
      "value": "require-corp"
    },
    {
      "name": "Cross-Origin-Opener-Policy",
      "value": "same-origin"
    },
    {
      "name": "Cross-Origin-Resource-Policy",
      "value": "same-origin"
    },
    {
      "name": "Permissions-Policy",
      "value": "accelerometer=(),ambient-light-sensor=(),autoplay=(),battery=(),camera=(),display-capture=(),document-domain=(),encrypted-media=(),fullscreen=(),gamepad=(),geolocation=(),gyroscope=(),layout-animations=(self),legacy-image-formats=(self),magnetometer=(),microphone=(),midi=(),oversized-images=(self),payment=(),picture-in-picture=(),publickey-credentials-get=(),speaker-selection=(),sync-xhr=(self),unoptimized-images=(self),unsized-media=(self),usb=(),screen-wake-lock=(),web-share=(),xr-spatial-tracking=()"
    },
    {
      "name": "Pragma",
      "value": "no-cache"
    },
    {
      "name": "Referrer-Policy",
      "value": "no-referrer"
    },
    {
      "name": "Strict-Transport-Security",
      "value": "max-age=31536000 ; includeSubDomains"
    },
    {
      "name": "X-Content-Type-Options",
      "value": "nosniff"
    },
    {
      "name": "X-Frame-Options",
      "value": "deny"
    },
    {
      "name": "X-Permitted-Cross-Domain-Policies",
      "value": "none"
    }
  ]
}
```

[mdn csp]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP
