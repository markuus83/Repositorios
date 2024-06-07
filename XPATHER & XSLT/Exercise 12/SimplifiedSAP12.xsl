<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>


    <xsl:template match="record">

        <html>

            <head>
                <title>Records</title>
                <style>
                    .red {color: red;}
                </style>
            </head>

            <body>
                <xsl:apply-templates select="root/record"/>
            </body>
        </html>

    </xsl:template>


    <xsl:template match="record">
        <xsl:variable name="recordCount" select="count(/root/record)"/>

        <h1>Number of records found: <xsl:value-of select="$recordCount"/></h1>

        <xsl:apply-templates select="id|city|text/p[1]"/>
    </xsl:template>

    <xsl:template match="id">
        <p class="red"> [<xsl:value-of select="."/>]</p>
    </xsl:template>

    <xsl:template match="city">
        <p> <xsl:value-of select="."/> </p>
    </xsl:template>

    <xsl:template match="text/p[1]">
        <p> <xsl:value-of select="."/> </p>
    </xsl:template>
</xsl:stylesheet>