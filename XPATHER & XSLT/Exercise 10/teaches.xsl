<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/" >
        
        <html>
            <head>
                <title>Exercise 10</title>
            </head>
            
            <body>
                <h1>Teaches table</h1>
                <table border="1">
                    <tr>
                        <th>Course</th>
                        <th>Lecturer</th>
                    </tr>
                    <xsl:apply-templates select="teaches/teaches-tuple"/>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="teaches-tuple">
        <tr>
            <td><xsl:value-of select="@course"/></td>
            <td><xsl:value-of select="@lecturer"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>