<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="documento">
        <xsl:apply-templates select="principal"/>
        <xsl:value-of select="autor"/>
    </xsl:template>

    <xsl:template match="principal">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="ref">
        <xsl:value-of select="ancestor::documento/parte[@id=current()/@to]"/>
    </xsl:template>

</xsl:stylesheet>