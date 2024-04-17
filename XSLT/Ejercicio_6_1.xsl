<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <xsl:apply-templates select="ListaProductos/Producto"/>
        <xsl:apply-templates select="ListaProductos/Auxiliar"/>
      </body>
    </html>
  </xsl:template>
  
   <xsl:template match="/ListaProductos/Producto">
      - Nombre : <xsl:value-of select="Nombre" /><br/>
      - Precio ud. : <xsl:value-of select="PrecioUd" />€<br/>
  </xsl:template>
  
     <xsl:template match="ListaProductos/Producto">
      * Nombre : <xsl:value-of select="Nombre" /><br/>
      * Precio ud. : <xsl:value-of select="PrecioUd" />€<br/>
  </xsl:template>
  
</xsl:stylesheet>
