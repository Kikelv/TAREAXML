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
					<a href="asamblea.html">Asamblea</a>
					<a href="excursiones.xml">Excursiones</a>
					<a href="carreras.xml">Carreras</a>
					<a href="noticias.html">Noticias</a>
					<a href="contacto.html">Contacto</a>
				</header>
				
				<main class="principal">
					<section class="asamblea">
						<h1>ASAMBLEA</h1>
						<p>El <xsl:value-of select="/eventos/asamblea/convocatoria/fecha" /> celebraremos una asamblea <xsl:value-of select="/eventos/asamblea/convocatoria/@tipo" />.</p>
						<p>Los temas a tratar serán:</p>
						<ol>
						
				<xsl:apply-templates select="orden_dia" />			
							
				
						</ol>
						<p>Te esperamos</p>
					</section>
				</main>
				
				<footer>
					<address>&#169; 2020 desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>
	
	<!-- ASAMBLEA -->
	
	<xsl:template match="orden_dia" >
	<xsl:for-each select="tema">
		<li><xsl:value-of select="tema"/>ff</li>
	</xsl:for-each>
	
			
	</xsl:template>

	<xsl:template match="tema" >
		<li><xsl:value-of select="tema"/>ff</li>
	</xsl:template>

	<xsl:template match="asamblea/convocatoria" >
		
			
	</xsl:template>
	<!-- CARRERA -->
	
	<xsl:template match="carrera" >
		
		
		
		
	</xsl:template>
	<!-- EXCURIÓN -->
	
	<xsl:template match="excursion" >
		
		
		
		
	</xsl:template>
	
	
	
</xsl:stylesheet>