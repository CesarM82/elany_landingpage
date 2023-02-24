<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="//root/L">
        <ol class="toggle-list toggle-list-embed" >
            <xsl:apply-templates/>
        </ol>
    </xsl:template>

    <xsl:template match="*">
      
        <li>
            <xsl:attribute name="data-id"><xsl:value-of select="@ltid" disable-output-escaping="yes" /></xsl:attribute>
             <xsl:choose>
                <xsl:when test="*"><!--i already know it has children-->
                    <xsl:choose>
                        <xsl:when test="count(ancestor::node())-2=1">
                            <!--this is the alphabet letter-->
                            <b>
                                <xsl:value-of select="@term" disable-output-escaping="yes" />                                
                            </b>
                        </xsl:when>
                        <xsl:when test="count(ancestor::node())-2=2">
                            <!--this is the firtst term in the alphabet-->
                            <xsl:variable name="header" select="@ltid" />
                            
                            <h6 class="toggle-list-group-heading">
                                     <xsl:value-of select="@term" disable-output-escaping="yes" />
                            </h6>  
                       
                           
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="class">hidesalot</xsl:attribute>
                            <b>
                                <xsl:value-of select="@term" disable-output-escaping="yes" />
                            </b>
                          
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <ol>
                        <xsl:if test="count(ancestor::node())-2>1">
                            <xsl:attribute name="class">hidesalot</xsl:attribute>
                        </xsl:if>
            

                            <xsl:attribute name="id">List_<xsl:value-of select="@ltid" disable-output-escaping="yes" />_<xsl:value-of select="count(ancestor::node())-2" disable-output-escaping="yes" /></xsl:attribute>
                        <xsl:apply-templates />
                     
                    </ol>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="@pid=231">
                            <xsl:attribute name="style">display:none;</xsl:attribute>
                            
                            <!--It's a letter with no children :(-->
                        </xsl:when>
                        <xsl:otherwise>             
                                                                          <xsl:choose>
                                            <xsl:when test="@type=3">
                                                - <a href="javascript:void(0);" onclick="poptastic('player.aspx?vID={@u}')"><xsl:value-of select="@term" disable-output-escaping="yes" /></a>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:choose>
                                                <xsl:when test="count(ancestor::node())=4">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=5">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=6">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../../@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=7">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../../../@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=8">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../../../../@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=9">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../../../../../@ltid}&#38;T={@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=10">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../../../../../../@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:when test="count(ancestor::node())=11">
                                                  - <a class="lexicon-click" href="javascript:;" id="a_{@ltid}"  data-type="{@type}" data-termid="{@ltid}" data-headerid="{../../../../../../../@ltid}" >
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                  - <a href="lexicon-click.aspx?LT={@type}&#38;H={../../../../../../@ltid}&#38;T={@ltid}">
                                                    <xsl:value-of select="@term" disable-output-escaping="yes" />
                                                  </a>

                                                </xsl:otherwise>

                                              </xsl:choose>
                                           
                                            </xsl:otherwise>
                                            
                                            
                                        </xsl:choose>
                                        
                                        
                                        
                            
                        </xsl:otherwise>
                    </xsl:choose>                
                </xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>
</xsl:stylesheet>
