<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : change.xsl
    Created on : 12 de abril de 2020, 22:36
    Author     : julenmarrero
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:exsl="http://exslt.org/common" 
                version="1.0">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/Liguilla">
        
        <records>
            <xsl:for-each select="//Jornada">
                <Jornada num="{@numero}">
                 
                    <ganadores_locales>
                        <xsl:for-each select="matches/match">
                            <xsl:if test="local/@goles &gt; visitante/@goles">
                                <player goles="{local/@goles}">
                                    <xsl:value-of select="local"/>
                                </player>     
                            </xsl:if>
                        </xsl:for-each>
                    </ganadores_locales>
                
                    <perdedores_locales>
                        <xsl:for-each select="matches/match">
                            <xsl:if test="local/@goles &lt; visitante/@goles">
                                <player goles="{local/@goles}">
                                    <xsl:value-of select="local"/>
                                </player>  
                            </xsl:if>
                        </xsl:for-each>  
                    </perdedores_locales>
                    
                    <empate_local>
                        <xsl:for-each select="matches/match">
                            <xsl:if test="local/@goles = visitante/@goles">
                                <player goles="{local/@goles}">
                                    <xsl:value-of select="local"/>
                                </player>  
                            </xsl:if>
                        </xsl:for-each>     
                    </empate_local>
                    <empate_visitante>
                        <xsl:for-each select="matches/match">
                            <xsl:if test="local/@goles = visitante/@goles">
                                <player goles="{local/@goles}">
                                    <xsl:value-of select="visitante"/>
                                </player>  
                            </xsl:if>
                        </xsl:for-each>     
                    </empate_visitante>
                    
                    <ganadores_away>
                        <xsl:for-each select="matches/match">
                            <xsl:if test="local/@goles &lt; visitante/@goles">
                                <player goles="{visitante/@goles}">
                                    <xsl:value-of select="visitante"/>
                                </player>  
                            </xsl:if>
                        </xsl:for-each> 
                    </ganadores_away>
                    <perdedores_away>
                        <xsl:for-each select="matches/match">
                            <xsl:if test="local/@goles &gt; visitante/@goles">
                                <player goles="{visitante/@goles}">
                                    <xsl:value-of select="visitante"/>
                                </player>  
                            </xsl:if>
                        </xsl:for-each> 
                    </perdedores_away>
                </Jornada>
            </xsl:for-each>
        </records>
    </xsl:template>
</xsl:stylesheet>