<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/biblioteca">
        <html>
            <body>
                <h1>Nuestra Biblioteca</h1>
                <ul>
                <xsl:for-each select="libro">       
                    
                        <li>
                           <xsl:value-of select="titulo"/>
                            -<xsl:value-of select="autor"/>
                            -<xsl:value-of select="fechaPublicacion/@año"/>(<xsl:value-of select="autor/@fechaNacimiento"></xsl:value-of>)
                        </li>
                </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>