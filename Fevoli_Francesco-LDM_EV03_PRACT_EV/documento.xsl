<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Identity template to copy all nodes and attributes -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Template to match 'principal' element -->
    <xsl:template match="principal">
        <!-- Output the concatenated text of child nodes -->
        <xsl:value-of select="concat(text(), ' ', autor, '.')"/>
    </xsl:template>

    <!-- Template to match 'ref' element -->
    <xsl:template match="ref">
        <!-- Output the text content of the 'parte' element with matching id -->
        <xsl:value-of select="ancestor::documento/parte[@id=current()/@to]/text()"/>
    </xsl:template>

</xsl:stylesheet>