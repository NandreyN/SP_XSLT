<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Index</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
                      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                      crossorigin="anonymous"/>
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                        crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                        crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                        crossorigin="anonymous"></script>

            </head>
            <body>

                <div class="container">

                    <xsl:variable name="totalRecords" select="count(Collection/Client)"/>
                    <xsl:variable name="ageSum" select="sum(Collection/Client/@age)"/>

                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Surname</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Age</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>

                        <tbody>
                            <xsl:for-each select="Collection/Client">
                                <tr>
                                    <td>
                                        <xsl:value-of select="./@id"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Surname"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Email"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Phone"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="./@age"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="./@status"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>


                    <ul class="list-group">
                        <li class="list-group-item list-group-item-info">
                            Average age:<xsl:value-of select="$ageSum div $totalRecords"/>
                        </li>

                        <li class="list-group-item list-group-item-warning">
                            Total records:<xsl:value-of select="$totalRecords"/>
                        </li>

                        <xsl:for-each select="Collection/Client">
                            <xsl:sort select="string-length(Email)" data-type="number" order="ascending"/>
                            <xsl:if test="position()=last()">
                                <li class="list-group-item list-group-item-success">
                                    Longest E-mail:
                                    <xsl:copy-of select="Email"/>
                                </li>
                            </xsl:if>
                        </xsl:for-each>
                    </ul>
                </div>

                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                        crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                        crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                        crossorigin="anonymous"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>