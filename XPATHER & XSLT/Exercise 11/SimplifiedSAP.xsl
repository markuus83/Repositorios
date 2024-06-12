<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="record">

        <xsl:text>ID: </xsl:text>
        <xsl:value-of select="id"/>

        <xsl:text>; TITLE: </xsl:text>
        <xsl:value-of select="title"/>

        <xsl:text>; DATE: </xsl:text>
        <xsl:value-of select="date"/>

    </xsl:template>

</xsl:stylesheet>