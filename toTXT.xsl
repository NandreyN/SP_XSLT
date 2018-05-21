<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>Client collection:&#xA;</xsl:text>

        <xsl:variable name="totalRecords" select="count(Collection/Client)"/>
        <xsl:variable name="ageSum" select="sum(Collection/Client/@age)"/>

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

        <xsl:text>Average age :  </xsl:text>
        <xsl:value-of select="$ageSum div $totalRecords"/><xsl:text>&#xA;</xsl:text>
        <xsl:text>Total records: </xsl:text><xsl:value-of select="$totalRecords"/><xsl:text>&#xA;</xsl:text>

        <xsl:for-each select="Collection/Client">
            <xsl:sort select="string-length(Email)" data-type="number" order="ascending"/>
            <xsl:if test="position()=last()">
                <xsl:text> Longest E-mail:</xsl:text>
                <xsl:copy-of select="Email"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:if>
        </xsl:for-each>


    </xsl:template>
</xsl:stylesheet>