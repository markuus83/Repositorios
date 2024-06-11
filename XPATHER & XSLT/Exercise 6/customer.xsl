<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Exercise 6</title>
            </head>
            
            <body>
                <header>
                    <h1> <xsl:value-of select="customer/name/first/text()"/></h1>
                </header>
            </body>
            
        </html>
    </xsl:template>
    
</xsl:stylesheet>