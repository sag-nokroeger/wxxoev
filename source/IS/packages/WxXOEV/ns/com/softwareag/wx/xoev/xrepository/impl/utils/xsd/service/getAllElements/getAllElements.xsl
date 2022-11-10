<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">

  <xsl:output method="xml"/>

  <xsl:template match="/">
	<xsl:element name="ElementList">
    <xsl:for-each select="/xs:schema/xs:element">
		<xsl:element name="elementName"><xsl:value-of select="@name"/></xsl:element>
	</xsl:for-each>
	</xsl:element>
  </xsl:template>

</xsl:stylesheet>
