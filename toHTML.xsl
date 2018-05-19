<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>ID</th>
                        <th>Surname</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Age</th>
                        <th>Status</th>
                    </tr>
                    <xsl:for-each select="Collection/Client">
                        <tr>
                            <td><xsl:value-of select="./@id"/></td>
                            <td><xsl:value-of select="Surname"/></td>
                            <td><xsl:value-of select="Email"/></td>
                            <td><xsl:value-of select="Phone"/></td>
                            <td><xsl:value-of select="./@age"/></td>
                            <td><xsl:value-of select="./@status"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>