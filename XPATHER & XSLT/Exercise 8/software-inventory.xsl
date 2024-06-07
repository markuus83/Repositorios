<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        
        <ul>
            <xsl:apply-templates select="inventory/product/text()"/>
        </ul>

    </xsl:template>
    
    <xsl:template match="product">
        <li>
            <xsl:value-of select="name"/>
            <ul>
                <li>Name: <xsl:value-of select="name"/></li>
                <li> Weight: <xsl:value-of select="weight"/></li>
            </ul>
        </li>
    </xsl:template>
</xsl:stylesheet>