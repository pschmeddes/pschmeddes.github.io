<?xml version="1.0" encoding="UTF-8"?>
 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8" />
    <xsl:template match="@*|node()">
       <xsl:copy>
          <xsl:apply-templates select="@*|node()" />
       </xsl:copy>
    </xsl:template>
    <xsl:template match="/configuration/system.web/httpRuntime">
       <xsl:copy>
          <xsl:apply-templates select="@*|node()" />
          <xsl:attribute name="maxRequestLength">51200</xsl:attribute>
          <!-- 50 MB = 51200 KB-->
       </xsl:copy>
    </xsl:template>
    <!-- If the element "system.webServer/security" does not exist, add it.-->
    <xsl:template match="system.webServer[not(security)]">
       <system.webServer>
          <xsl:apply-templates select="@*|node()" />
          <security>
             <requestFiltering>
                <requestLimits maxAllowedContentLength="52428800" />
                <!-- 50 MB = 52428800 B-->
             </requestFiltering>
          </security>
       </system.webServer>
    </xsl:template>
    <!--If the element "system.webServer/security/requestFiltering" does not exist, add it.-->
    <xsl:template match="system.webServer/security[not(requestFiltering)]">
       <security>
          <xsl:apply-templates select="@*|node()" />
          <requestFiltering>
             <requestLimits maxAllowedContentLength="52428800" />
          </requestFiltering>
       </security>
    </xsl:template>
    <!--If the element "system.webServer/security/requestFiltering/requestLimits" does not exist, add it. -->
    <xsl:template match="system.webServer/security/requestFiltering[not(requestLimits)]">
       <requestFiltering>
          <xsl:apply-templates select="@*|node()" />
          <requestLimits maxAllowedContentLength="52428800" />
       </requestFiltering>
    </xsl:template>
    <!-- If the attribute "system.webServer/security/requestFiltering/requestLimits/@maxAllowedContentLength" does not exist, add it.-->
     <xsl:template match="system.webServer/security/requestFiltering/requestLimits[not(@maxAllowedContentLength)]">
       <xsl:copy>
          <xsl:apply-templates select="@*|node()" />
          <xsl:attribute name="maxAllowedContentLength">52428800</xsl:attribute>
       </xsl:copy>
    </xsl:template>
 </xsl:stylesheet>