<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="//root/L"> 
          <div class="col-md-6 col-12">
            <ol class="toggle-list">
              <xsl:apply-templates select="//L[@term = 'A' or @term = 'B' or @term = 'C' or @term = 'D' or @term = 'E' or @term = 'F' or @term = 'G' or @term = 'H'  ]"/>
            </ol>
          </div>
      <div class="col-md-6 col-12">
        <ol class="toggle-list">
          <xsl:apply-templates select="//L[@term = 'I' or  @term = 'J' or @term = 'K' or @term = 'L' or @term = 'M' or @term = 'N' or @term = 'O' or @term = 'P' or @term = 'Q' or @term = 'R' or @term = 'S' or @term = 'T' or @term = 'U' or @term = 'V' or @term = 'W' or @term = 'X' or @term = 'Y' or @term = 'Z' ]"/>
        </ol>
      </div>
    </xsl:template>

    <xsl:template match="*">
      <xsl:text>&#xa;</xsl:text>
        <li class="toggle-list-group-heading">
            <xsl:attribute name="id">T<xsl:value-of select="@ltid" disable-output-escaping="yes" /></xsl:attribute> 
            <xsl:attribute name="data-id"><xsl:value-of select="@ltid" disable-output-escaping="yes" /></xsl:attribute>
             <xsl:choose>
                <xsl:when test="*"><!--i already know it has children-->
                    <xsl:choose>
                        <xsl:when test="count(ancestor::node())-2=1">
                            <!--this is the alphabet letter-->
                          <xsl:attribute name="style">
                            <xsl:text>margin-top:.75em;color:#3ca23b;</xsl:text>
                          </xsl:attribute>

                          <b>
                                <xsl:value-of select="@term" disable-output-escaping="yes" />                                
                            </b>
                        </xsl:when>
                        <xsl:when test="count(ancestor::node())-2=2">
                            <span class="anchor" id="bk{@ltid}" name="bk{@ltid}"></span>
                            <!--this is the firtst term levelin the alphabet-->
                            <xsl:variable name="header" select="@ltid" />
                            <a href="javascript:;" class="toggle-list-main-group-item collapsed" data-toggle="collapse" style="color:#fff" >
                              <xsl:attribute name="data-target">#group<xsl:value-of select="@ltid" disable-output-escaping="yes" /></xsl:attribute>
                              <xsl:attribute name="id">
                                group<xsl:value-of select="@ltid" disable-output-escaping="yes" />
                              </xsl:attribute>

                              <xsl:value-of select="@term" disable-output-escaping="yes" />
                            
                                 
                            </a>                           
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="class">hidesalot</xsl:attribute>
                            <b>
                                <xsl:value-of select="@term" disable-output-escaping="yes" />
                            </b>
                          
                        </xsl:otherwise>
                    </xsl:choose>
                  <xsl:text>&#xa;</xsl:text>
                    <ol style="margin-left:.25em;">
                        <xsl:if test="count(ancestor::node())-2=2">
                            <xsl:attribute name="class">collapse</xsl:attribute>                     
                        </xsl:if>
                        <xsl:attribute name="id">group<xsl:value-of select="@ltid" disable-output-escaping="yes" /> </xsl:attribute>
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
                                                - <a href="javascript:void(0);" onclick="poptastic('player.aspx?ttl=123&amp;vID={@u}')"><xsl:value-of select="@term" disable-output-escaping="yes" /></a>
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
