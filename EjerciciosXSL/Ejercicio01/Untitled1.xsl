<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    
    <xsl:template match="/disfraces">
        <html>
            <body>
                <h1><xsl:value-of select="leon"/></h1>
                <h1><xsl:value-of select="pepapig"/></h1>
                <h1><xsl:value-of select="caballitomar"/></h1>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>