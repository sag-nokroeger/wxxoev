<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:element name="XmlDocumentInformation">
		<xsl:element name="rootElementName"><xsl:value-of select="local-name(./*[1])"/></xsl:element>
		<xsl:element name="namespace"><xsl:value-of select="namespace-uri(./*[1])"/></xsl:element>
	</xsl:element>
  </xsl:template>
</xsl:stylesheet>