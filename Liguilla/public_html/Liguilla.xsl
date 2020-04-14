<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Liguilla.xsl
    Created on : 12 de abril de 2020, 21:11
    Author     : julenmarrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0"
                >
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
                <link rel="stylesheet" src="css/"/>
                <title>Clasification.xsl</title>
            </head>
            <body>
                <div class="container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="1">CLUB</th>
                                <th colspan="4">LOCAL</th>
                                <th colspan="4">VISITANTE</th>
                                <th colspan="5">TOTAL</th>
                            </tr>
                            <th></th>
                            
                            <th>PJ</th>
                            <th>PG</th>
                            <th>PE</th>
                            <th>PP</th>
                            
                            <th>PJ</th>
                            <th>PG</th>
                            <th>PE</th>
                            <th>PP</th>
                            
                            <th>PJ</th>
                            <th>PG</th>
                            <th>PE</th>
                            <th>PP</th>
                            <th>PT</th>
                        </thead>
                        <tbody>
                            <xsl:for-each select="/Liguilla/Jornadas">
                                <tr>
                                    <td>
                                        <xsl:value-of select="//match[local and visitante]"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="local/wins * 3"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="local/wins"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="local/lost"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="local/draws"/>
                                    </td>
                                    <th>Points</th>
                                    <td>
                                        <xsl:value-of select="away/wins"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="away/lost"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="away/draws"/>
                                    </td>
                                    <th>Club</th>
                                    <th>Points</th>
                                    <th>Won</th>
                                    <th>Lost</th>
                                    <th>Drawns</th>
                                </tr>
                            </xsl:for-each>
                                
                                
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
