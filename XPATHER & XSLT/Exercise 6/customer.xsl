<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/" >

    <html>
        <header>
            <title/>
        </header>

        <body>
            <h1> <xsl:value-of select="customer/name/first/text()"/> </h1>
        </body>
    </html>

    </xsl:template>

    

</xsl:stylesheet>