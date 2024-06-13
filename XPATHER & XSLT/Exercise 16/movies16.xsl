<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title> Exercise 16</title>
                
                <style>
                    th {
                    background-color: dodgerblue;
                    color: white;
                    padding: 20px;
                    }
                    tr:nth-child(even) {
                    background-color: #FF1E90;
                    color: white;
                    padding: 20px
                    }
                    tr:nth-child(odd) {
                    background-color: #90FF1E;
                    padding: 20px
                    }
                    td {
                    color: white;
                    padding: 20px
                    }
                </style>
            </head>
            
            <body>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Director</th>
                        <th>Year</th>
                    </tr>
                    
                    <tr>
                        <xsl:apply-templates select="movies/movie"/>
                    </tr>
                </table>
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="movie">
        <tr>
            <td> <xsl:value-of select="title"/> </td>
            <td> <xsl:value-of select="director"/> </td>
            <td> <xsl:value-of select="@year"/> </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>