<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
<xsl:template match="/">
<html>
<head>
    <title>Bogowie olimpijscy</title>
    <link rel="stylesheet" href="K02_Klatka_Artur.css" type="text/css"/>
</head>
<body>
<h3>Bogowie olimpijscy</h3>
    <div class="kontener">
        <div class="div1">
            <xsl:for-each select="olimp/bogowie">
                <div class="div5">
                    <div class="div2">
                        <p>Imię:</p>
                        <p>Występowanie:</p>
                        <p>Atrybuty:</p>
                        <p>Odpowiednik:</p>
                        <p>Małżonek:</p>
                        <p>Dzieci:</p>
                    </div>
                    <div class="div3">
                        <p><xsl:value-of select="imię"/></p>
                        <p><xsl:value-of select="wystepowanie"/></p>
                        <p><xsl:value-of select="atrybuty"/></p>
                        <p><xsl:value-of select="odpowiednik"/></p>
                        <p><xsl:value-of select="rodzina/małżonek"/></p>
                        <p><xsl:value-of select="rodzina/dzieci"/></p>
                    </div>
                    <div class="div4">
                    <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="zdjecie"/>
                            </xsl:attribute>
                        </img>
                        </div>
                </div>
            </xsl:for-each>
        </div>
    </div>
    <h3>Łącznie jest ich <xsl:value-of select="count(olimp/bogowie)"/></h3>
    
</body>
</html>
</xsl:template>
</xsl:stylesheet>