<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="*">

        <div>
            <ol class="breadcrumb col-lg-12">
               
                        <li>
                            <a>
                                <xsl:attribute name="href">                                   
                                    <xsl:for-each select="ancestor::L">
                                        <xsl:choose>
                                            <xsl:when test="count(ancestor::node())=4">
                                                lexicon.aspx?H=[header]#fkbm<xsl:value-of select="@ltid" disable-output-escaping="yes" />
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </xsl:attribute>Lexicon

                            </a>
                        </li>
                <li>...
                </li>
                  
                <li class="active">
                   <xsl:value-of select="@term" disable-output-escaping="yes" />
                </li>
                </ol>
        </div>
    </xsl:template>
  
</xsl:stylesheet>
