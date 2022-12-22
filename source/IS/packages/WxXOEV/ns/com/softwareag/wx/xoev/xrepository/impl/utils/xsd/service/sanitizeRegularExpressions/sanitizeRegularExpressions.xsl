<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"
  version="2.0">
  
	<xsl:template match="@*|node()">
    	<xsl:copy>
      		<xsl:apply-templates select="@*|node()"/>
   		</xsl:copy>
 	</xsl:template>

  	<xsl:template match="xs:pattern/@value">
		<xsl:variable name="sanitizedRegex"><xsl:value-of select="fn:replace(., '&#xA;', '\\n')"/></xsl:variable>
		<xsl:variable name="sanitizedRegex"><xsl:value-of select="fn:replace($sanitizedRegex, '&#xD;', '\\r')"/></xsl:variable>
		<xsl:variable name="sanitizedRegex"><xsl:value-of select="fn:replace($sanitizedRegex, '&#x9;', '\\t')"/></xsl:variable>
		<xsl:attribute name="value"><xsl:value-of select="$sanitizedRegex"/></xsl:attribute>
	</xsl:template> 
  
</xsl:stylesheet>
