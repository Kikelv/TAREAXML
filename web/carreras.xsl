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
                    <a href="excursiones.xml">Excursiones</a>
                    <a href="carreras.xml">Carreras</a>
                    <a href="noticias.html">Noticias</a>
                    <a href="contacto.html">Contacto</a>
                </header>
                <section class="carreras">
                    <h1>Carreras hasta 15 km</h1>
                    
                    <xsl:apply-templates select="carrera" mode="menos15"/>	
                    
                </section>
                
                <section class="carreras">
                    <h1>Carreras de más de 15 km</h1>
                    <xsl:apply-templates select="carrera" mode="mas15"/>					
                </section>	
                
                
                <footer>
                    <address>&#169; 2020 desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>
    
    
    
    <xsl:template match="carrera" mode="mas15">
        <xsl:if test="kilometros>15">
            <article>
                <a href="{informacion}">
                    <img src="../img/{img}" alt="Negu Trail" />
                    <p class="texto"><xsl:value-of select="nombre"/></p>
                </a>
            </article>
            
        </xsl:if>
        
        
    </xsl:template>
    <xsl:template match="carrera" mode="menos15">
        <xsl:if test="kilometros&lt;15">
            <article>
                <a href="{informacion}">
                    <img src="../img/{img}" alt="Negu Trail" />
                    <p class="texto"><xsl:value-of select="nombre"/></p>
                </a>
            </article>
            
        </xsl:if>
        
        
    </xsl:template>
    
    
    
</xsl:stylesheet>