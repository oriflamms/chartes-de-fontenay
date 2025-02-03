<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:cei="http://www.monasterium.net/NS/cei" xmlns:foo="my.foo.org"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <!--strips all default attributes-->
    
<!--    <xsl:template match="@* | node()" mode="#all">
        <xsl:choose>
            <xsl:when test="matches(name(.), '^(part|instant|anchored|default|full|status)$')"/>
            <xsl:otherwise>
                <xsl:copy>
                    <xsl:apply-templates select="@* | node()" mode="#current"/>
                </xsl:copy>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>-->
    
    
    <xsl:template match="teiCorpus">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="TEI">
        <xsl:variable name="docname" select="concat(@xml:id, '.xml')"/>
        <xsl:result-document method="xml" href="{$docname}">
            <xsl:copy-of select="."/>
        </xsl:result-document>
    </xsl:template>
    
</xsl:stylesheet>