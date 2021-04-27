<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:text>
</xsl:text>
<body>
    <xsl:text>
    </xsl:text>
    <h1>
    Social Network 2.0
    </h1>
    <xsl:text>
    </xsl:text>
    <h2>
        Aktivni uzivatele:
    </h2>
    <xsl:for-each select="//uzivatel">
        
    <xsl:text>
    </xsl:text>
        <div class="profile">
        <xsl:choose>
            <xsl:when test="aktivni='true'">
                
        <xsl:text>
        </xsl:text>
                <div class="name">
            <xsl:text>
            </xsl:text>
                
                    <h3>
                    <xsl:value-of select="jmeno" />
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="prijmeni" />
                    </h3>
        <xsl:text>
        </xsl:text>
        </div>
        <xsl:text>
        </xsl:text>
                <div class="info">
            <xsl:text>
            </xsl:text>
                    <p>Emailova adresa: <xsl:value-of select="email"/></p>
                    <xsl:if test="telefon">
                        
            <xsl:text>
            </xsl:text>
                        <p>Telefonni cislo: <xsl:value-of select="telefon"/></p>
                    </xsl:if>
                    
        <xsl:text>
        </xsl:text>
                </div>
        <xsl:text>
            
        </xsl:text>
                <div class="prispevky">
            <xsl:text>
            </xsl:text>
            <h4>Prispevky uzivatele:</h4>
                    <xsl:variable name="uid" select="@id"/>
                    <!-- <xsl:value-of select="$uid"></xsl:value-of> -->
                    <xsl:for-each select="//prispevek[@id_uzivatele=$uid]">
                    <xsl:sort select="cas_sdileni" order="ascending" />
            <xsl:text>
            </xsl:text>
                    <div class="prispevek">
                <xsl:text>
                </xsl:text>
                    <p class="casPrispevku">Cas sdileni: <xsl:value-of select="cas_sdileni"/></p>
                <xsl:text>
                </xsl:text>
                    <p class="pocet liku">Pocet lajku:<xsl:value-of select="count(likes/id_uzivatele)"/></p>
                <xsl:text>
                </xsl:text>
                    <p class="textPrispevku"><i><xsl:value-of select="text"/></i></p>
                <xsl:text>
                </xsl:text>
                    <div class="odpovedi">
                    <xsl:text>
                    </xsl:text>
                    <h4>Odpovedi na prispevek:</h4>
                    <xsl:for-each select="odpovedi/odpoved">
                        <xsl:variable name="reply_uid" select="@id_uzivatele"/>
                    <xsl:text>
                    </xsl:text>
                        <div class="odpoved">
                            <xsl:for-each select="//uzivatel[@id=$reply_uid]">
                        <xsl:text>
                        </xsl:text>
                                <p class="jmenoOdpoved"><xsl:value-of select="jmeno"/> 
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="prijmeni"/> </p>
                            </xsl:for-each> 
                        <xsl:text>
                        </xsl:text>
                            <p class="textOdpovedi"><xsl:value-of select="text"/></p>
                    <xsl:text>
                    </xsl:text>
                        </div>  <!-- odpoved-->
                    </xsl:for-each>    
                    
                <xsl:text>
                </xsl:text>
                    </div> <!-- odpovedi-->
                    
            <xsl:text>
            </xsl:text>
                    </div> <!-- prispevek-->
                    </xsl:for-each>
        <xsl:text>
        </xsl:text>
                </div>
            </xsl:when>
            <xsl:otherwise>
        <xsl:text>
        </xsl:text>
                <div class="deleted">
            <xsl:text>
            </xsl:text>
                <p>Tento ucet byl deaktivovan.</p>
        <xsl:text>
        </xsl:text>
                </div>
            </xsl:otherwise>
        </xsl:choose>
        
    <xsl:text>
    </xsl:text>
        </div>
    <xsl:text>    
    </xsl:text>
    </xsl:for-each>
<xsl:text>
</xsl:text>
</body> 
</xsl:template>
</xsl:stylesheet>