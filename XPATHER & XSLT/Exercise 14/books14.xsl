<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Books Colours</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                    }
                    th {
                        background-color: dodgerblue;
                        color: white;
                    }
                    td, th {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    .price-low {
                        background-color: aquamarine;
                    }
                    .price-medium {
                        background-color: gold;
                    }
                    .price-high {
                        background-color: crimson;
                        color: white;
                    }
                </style>
            </head>
            <body>
                <xsl:variable name="rowCount" select="count(/books/book)" />
                <table>
                    <caption>Number of rows: <xsl:value-of select="$rowCount" /></caption>
                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                    </tr>
                    <xsl:for-each select="/books/book">
                        <xsl:variable name="price" select="price" />
                        <tr>
                            <xsl:attribute name="class">
                                <xsl:choose>
                                    <xsl:when test="$price &lt;= 10">price-low</xsl:when>
                                    <xsl:when test="$price &gt; 10 and $price &lt;= 15">price-medium</xsl:when>
                                    <xsl:otherwise>price-high</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <td><xsl:value-of select="author" /></td>
                            <td><xsl:value-of select="title" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
