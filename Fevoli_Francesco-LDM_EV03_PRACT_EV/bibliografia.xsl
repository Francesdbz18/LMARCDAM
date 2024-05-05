<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="bibliografia">
        <estadisticas>
            <xsl:apply-templates select=".//articulo"/>
        </estadisticas>
    </xsl:template>

    <xsl:template match="articulo">
        <xsl:element name="{@id}">
            <autores>
                <xsl:value-of select="count(autor)"/>
            </autores>
            <referencias>
                <xsl:value-of select="count(ref)"/>
            </referencias>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>