<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output encoding="UTF-8" />
    <xsl:template match="/eventos" >
        <html lang="es">
            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta charset="utf-8"/>
                <meta name="description" content="Página principal" />
                <title>titulo de la web</title>
            </head>
            <body>	
                <header>
                    <img src= "../img/logotipo.png" alt= "Club de montaña" />
                    <a href="asamblea.xml">Asamblea</a>
                    <a href="excursiones.html">Excursiones</a>
                    <a href="carreras.xml">Carreras</a>
                    <a href="noticias.html">Noticias</a>
                    <a href="contacto.html">Contacto</a>
                </header>
                <section class="excursiones">
                    
                    <h1>Excursiones</h1>
                    <table>
                        <tr>
                            <th>RUTA</th>
                            <th>FECHA</th>
                            <th>PRECIO</th>
                            <th>DIFICULTAD</th>
                        </tr>
                        
                        <xsl:apply-templates select="excursion" />	
                        
                    </table>			
                </section>	
                
                
                <footer>
                    <address>&#169; 2020 desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    
    
    <xsl:template match="excursion" >
        
        <tr style="text-align: center">
            <td><xsl:value-of select="ruta"/></td>
            <td><xsl:value-of select="salida/@dia"/></td>
            
            <td><xsl:value-of select="precio*1.21"/></td>
            
            <xsl:if test="@dificultad='media'">
                <td><span class="dificultad naranja"><xsl:value-of select="@dificultad"/></span></td>
            </xsl:if>
            <xsl:if test="@dificultad='baja'">
                <td><span class="dificultad verde"><xsl:value-of select="@dificultad"/></span></td>
            </xsl:if>
            <xsl:if test="@dificultad='alta'">
                <td><span class="dificultad rojo"><xsl:value-of select="@dificultad"/></span></td>
            </xsl:if>
        </tr>
        
        
    </xsl:template>
    
    
    
</xsl:stylesheet>