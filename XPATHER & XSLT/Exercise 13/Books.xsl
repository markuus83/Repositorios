<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">

        <ol>
          <xsl:apply-templates select="books/book[price > 10]"/>
        </ol>
   </xsl:template>

  <xsl:template match="book">
    <li>
      <xsl:value-of select="title"/>, <xsl:value-of select="author"/>: <xsl:value-of select="price"/>€
    </li>
  </xsl:template>
</xsl:stylesheet>
