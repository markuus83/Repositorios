<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Exercise 17</title>
                <link rel="stylesheet" href="style.css"/>
            </head>
            
            <body>
                <table border="1">
                    <tr>
                        <th>Identifier</th>
                        <th>Title</th>
                        <th>Description</th>
                    </tr>
                    <tr>
                        <xsl:apply-templates select="iati-activities/iati-activity"/>
                    </tr>
                </table>
            </body>
            
        </html>
        
    </xsl:template>
    
    <xsl:template match="iati-activity[1]">
        <tr>
            <td><xsl:value-of select="iati-identifier"/></td>
            <td><xsl:value-of select="title/narrative"/></td>
            <td><xsl:value-of select="description/narrative"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="iati-activity[3]">
        <tr>
            <td><xsl:value-of select="iati-identifier"/></td>
            <td><xsl:value-of select="title/narrative"/></td>
            <td><xsl:value-of select="description/narrative"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="iati-activity[4]">
        <tr>
            <td><xsl:value-of select="iati-identifier"/></td>
            <td><xsl:value-of select="title/narrative"/></td>
            <td><xsl:value-of select="description/narrative"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>