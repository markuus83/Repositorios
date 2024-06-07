<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="record">

        <xsl:text>&#x20;id</xsl:text>
        <xsl:value-of select="id"/>

        <xsl:text>&#x20;title</xsl:text>
        <xsl:value-of select="title"/>

        <xsl:text>&#x20;date</xsl:text>
        <xsl:value-of select="date"/>
    </xsl:template>

</xsl:stylesheet>