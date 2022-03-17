<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/navidad/almuerzo">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <td>Primer Plato: <xsl:value-of select="primerPlato"/></td>
                    </tr>
                    <tr>
                        <td>Segundo Plato: <xsl:value-of select="segundoPlato"/></td>
                    </tr>
                    <tr>
                        <td>Pastro: <xsl:value-of select="postre"/></td>
                    </tr>
                    <tr>
                        <td>Bebida: <xsl:value-of select="bebida"/></td>
                    </tr>
                    <tr>
                        <td>Sobremesa</td>
                    </tr>
                    <tr>
                        <td>Primera copa: <xsl:value-of select="sobremesa/primeraCopa"/></td>
                    </tr>
                    <tr>
                        <td>Segunda copa: <xsl:value-of select="sobremesa/segundaCopa"/></td>
                    </tr>
                    <tr>
                        <td>Tercera copa: <xsl:value-of select="sobremesa/terceraCopa"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>