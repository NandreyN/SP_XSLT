<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>Client collection:&#xA;</xsl:text>

        <xsl:for-each select="Collection/Client">
            <xsl:text>-------------------------------------------------------------------------------------&#xA;</xsl:text>
            <xsl:text>&#x9;ID : </xsl:text><xsl:value-of select="./@id"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>&#x9;Name : </xsl:text><xsl:value-of select="Surname"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>&#x9;Email : </xsl:text><xsl:value-of select="Email"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>&#x9;Phone : </xsl:text><xsl:value-of select="Phone"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>&#x9;Age : </xsl:text><xsl:value-of select="./@age"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>&#x9;Status : </xsl:text><xsl:value-of select="./@status"/><xsl:text>&#xA;</xsl:text>
            <xsl:text>-------------------------------------------------------------------------------------&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>