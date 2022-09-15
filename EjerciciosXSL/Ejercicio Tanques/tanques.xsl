<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/juegoTanques">
    <html>
      <head>
        <xsl:call-template name="css"/>
      </head>
      <body>
        <table width="100%">
          <tr>
            <th>Jugada</th>
            <th>Jugador</th>
            <th>Tanque</th>
            <th>Jugada</th>
          </tr>
          <xsl:for-each select="jugadasDescritas/jugada">
            <tr>
              <xsl:attribute name="style">background:
                <xsl:if test="position() mod 2 = 1">
                  #9cdeff;  
                </xsl:if>
                #d4f1ff;
              </xsl:attribute>
              <td><xsl:value-of select="position()"/></td>
              <td><xsl:value-of select="@jugador"/></td>
              
              <td>
              <xsl:if test="position() mod 2 = 1">
                <img src="{/juegoTanques/tanques/imagenTanque[@jugador=1]}"/>               
              </xsl:if>
                <xsl:if test="position() mod 2 = 0">
                  <img src="{/juegoTanques/tanques/imagenTanque[@jugador=2]}"/>               
                </xsl:if>
              </td>
              <td><xsl:value-of select="@desc"/></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <br/>
        <xsl:for-each select="/juegoTanques/jugadasGraficas/jugadaGrafica">
        
          <table border="1">
          <tr>
           <td/>
            <td> 1</td>
            <td> 2</td>
            <td> 3</td>
            <td> 4</td>
            <td> 5</td>
            <td> 6</td>
            <td> 7</td>
            <td> 8</td>
            
           
          </tr>
          <tr>
           <td> 1</td>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>     
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="1"/>
            </xsl:call-template>      
          </tr>
          <tr>
            <td>2 </td>    
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="2"/>
            </xsl:call-template>      
          </tr>
          <tr>
            <td>3 </td>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template> 
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="3"/>
            </xsl:call-template>  
          </tr>
          <tr>
            <td>4</td>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="4"/>
            </xsl:call-template>  
          </tr>
          <tr>
            <td>5 </td>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="5"/>
            </xsl:call-template>  
          </tr>
          <tr>
            <td>6</td>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template> 
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="6"/>
            </xsl:call-template>  
          </tr>
          <tr>
            <td>7 </td>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="7"/>
            </xsl:call-template>  
          </tr>
          <tr>
            <td>8 </td>
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="1"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="2"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="3"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="4"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="5"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="6"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="7"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
            <xsl:call-template name="casilla">
              <xsl:with-param name="x" select="8"/>
              <xsl:with-param name="y" select="8"/>
            </xsl:call-template>  
          </tr>
        </table>
          <br></br>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>


  
  <xsl:template name="casilla">
    <xsl:param name="x"/>
    <xsl:param name="y"/>
       
    <td>
      <xsl:for-each select="posicion">
        <xsl:if test="($x = @x and $y = @y) and (@tipo = 'tanque')">
          <xsl:attribute name="style">background: #ff0000</xsl:attribute>
        </xsl:if>
        <xsl:if test="($x = @x and $y = @y) and (@tipo = 'pared')">
          <xsl:attribute name="style">background: #000000</xsl:attribute>
        </xsl:if>
      </xsl:for-each>
    </td>
  </xsl:template>


  <xsl:template name="css">
    <style>
      td {
        text-align: center;
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
