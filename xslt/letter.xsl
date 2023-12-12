<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei" version="2.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="tei:TEI">

        <p>
            <xsl:apply-templates select="tei:text/tei:body/tei:div/tei:opener"/>
        </p>
        <p><xsl:apply-templates select="tei:text/tei:body/tei:div/tei:p"/></p>
    </xsl:template>

    <xsl:template match="tei:del[@rend = 'overstrike']">
        <del>
            <xsl:apply-templates/>
        </del>
    </xsl:template>

    <xsl:template match="tei:hi[@rend = 'underline']">
        <u>
            <xsl:apply-templates/>
        </u>
    </xsl:template>

    <xsl:template match="tei:lb">
            <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:pb">
    <p style="margin-top: 16px;">[New page]</p>
            <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>
