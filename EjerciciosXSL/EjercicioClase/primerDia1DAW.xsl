﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/primerDia1DAW">
    <html>
      <head>
        <xsl:call-template name="css"/>
      </head>
      <body>
        <table border="1" width="100%">
          <tr>
            <td></td>
            <td> 8:30 - 9:30</td>
            <td> 9:30 - 10:30</td>
            <td> 10:30 - 11:30</td>
            <td> 12:00 - 13:00</td>
            <td> 13:00 - 14:00</td>
            <td> 14:00 - 15:00</td>
          </tr>
            <xsl:for-each select="horario/dia">
              <tr>
                <td> <xsl:value-of select="@desc"/></td>
                 <xsl:for-each select="hora">
                   <xsl:sort select="@orden" order="ascending"/>
                    <td>
                      <xsl:attribute name="style">background:
                        <xsl:if test="position() mod 2 = 1">
                          #9cdeff;  
                        </xsl:if>
                        white;
                      </xsl:attribute>
                    <xsl:value-of select="."/>
                    </td>  
                 </xsl:for-each> 
              </tr>                
            </xsl:for-each>      
        </table>
        <table border="1">
          <xsl:call-template name="bucleForFila">
            <xsl:with-param name="i" select="1"></xsl:with-param>
          </xsl:call-template>
        </table>
      </body>
    </html>
  </xsl:template>


  <xsl:template name="bucleForFila">
    <xsl:param name="i"/>
    <xsl:if test="$i &lt;= 11">
      <tr>
        <xsl:call-template name="bucleForColumna">
          <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
          <xsl:with-param name="j">1</xsl:with-param>
        </xsl:call-template>
      </tr>
      <xsl:call-template name="bucleForFila">
        <xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template name="bucleForColumna">
    <xsl:param name="i"/>
    <xsl:param name="j"/> 
    <xsl:if test="$j &lt;= 8">
      <xsl:call-template name="celda">
        <xsl:with-param name="x"><xsl:value-of select="$j"/></xsl:with-param>
        <xsl:with-param name="y"><xsl:value-of select="$i"/></xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="bucleForColumna">
        <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
        <xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  
  <xsl:template name="celda">
    <xsl:param name="x"/>
    <xsl:param name="y"/>
    <td>
      <xsl:for-each select="estructuraAula/bloque">
        <xsl:if test="$x = @x and $y = @y">
          <xsl:choose>
            <xsl:when test="@tipo = 'puerta'">
              <xsl:attribute name="style">background: #<xsl:value-of select="/primerDia1DAW/estructuraAula/color[@tipo='puerta']"/>;</xsl:attribute>
              <xsl:value-of select="@tipo"/>
            </xsl:when>
            <xsl:when test="@tipo = 'pared'">
              <xsl:attribute name="style">background: #<xsl:value-of select="/primerDia1DAW/estructuraAula/color[@tipo='pared']"/>;</xsl:attribute>
              <xsl:value-of select="@tipo"/>
              
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="style">background: #<xsl:value-of select="/primerDia1DAW/estructuraAula/color[@tipo='ventana']"/>;</xsl:attribute>
              
              <xsl:value-of select="@tipo"/>
              
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </xsl:for-each>
      <xsl:for-each select="alumnado/alumno">
        <xsl:if test="$x = @x and $y = @y">
          <xsl:choose>
           <xsl:when test="@sexo = 'H'">
             
             <xsl:attribute name="style">background: brown;</xsl:attribute>
             <xsl:value-of select="."/>
             <img src="{/primerDia1DAW/alumnado/imagen[@sexo='H']}"></img>
           </xsl:when>
            <xsl:otherwise>            
              <xsl:attribute name="style">background: purple;</xsl:attribute>
              <xsl:value-of select="."/>
              <img src="{/primerDia1DAW/alumnado/imagen[@sexo='M']}"></img>
              
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>
  

  <xsl:template name="css">
    <style>
      td {
        text-align: center;
        width: 70px;
        height: 40px;
      }
      img {
        width:50px;
      }
      th {
        color: white;
        background: blue;
      }
    </style>
  </xsl:template>
</xsl:stylesheet>
