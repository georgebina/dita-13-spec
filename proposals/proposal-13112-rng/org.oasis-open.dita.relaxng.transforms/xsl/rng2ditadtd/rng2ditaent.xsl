<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  xmlns:rng="http://relaxng.org/ns/structure/1.0"
  xmlns:rnga="http://relaxng.org/ns/compatibility/annotations/1.0"
  xmlns:rng2ditadtd="http://dita.org/rng2ditadtd"
  xmlns:relpath="http://dita2indesign/functions/relpath"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
  xmlns:str="http://local/stringfunctions"
  xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:rngfunc="http://dita.oasis-open.org/dita/rngfunctions"
  exclude-result-prefixes="xs xd rng rnga relpath a ditaarch str rngfunc"
  version="2.0">

  <xd:doc scope="stylesheet">
    <xd:desc>
      <xd:p>RNG to DITA DTD Converter</xd:p>
      <xd:p><xd:b>Created on:</xd:b> Feb 16, 2013</xd:p>
      <xd:p><xd:b>Authors:</xd:b> ekimber, pleblanc</xd:p>
      <xd:p>This transform takes as input RNG-format DITA document type
      shells and produces from them the entity file
        that reflect the RNG definitions and conform to the DITA 1.3
        DTD coding requirements.
      </xd:p>
    </xd:desc>
  </xd:doc>

  <!-- ==============================
       .ent file generation mode
       ============================== -->

  <xsl:template mode="entityFile" match="/">
    <xsl:apply-templates mode="#current" select="node()" />
  </xsl:template>

  <xsl:template mode="entityFile" match="rng:grammar">
    
    <xsl:variable name="moduleTitle" 
      select="rngfunc:getModuleTitle(.)" 
      as="xs:string"/>
    <xsl:variable name="moduleShortName" 
      select="rngfunc:getModuleShortName(.)" 
      as="xs:string"/>
    <xsl:variable name="domainValue" as="xs:string?" 
      select="rng:define[@name='domains-att-contribution']/rng:value[1]"/>
    <xsl:variable name="domainPrefix" as="xs:string"
      select="rngfunc:getModuleShortName(.)" 
    />
    <xsl:variable name="moduleType" as="xs:string"
      select="rngfunc:getModuleType(.)"
    />
    
    <xsl:message> + [DEBUG] moduleType="<xsl:sequence select="$moduleType"/>"</xsl:message>

    <xsl:text>&lt;?xml version="1.0" encoding="UTF-8"?>&#x0a;</xsl:text>
    
    <xsl:apply-templates select="dita:moduleDesc" mode="header-comment"/>
    
    <xsl:if test="$moduleShortName = 'commonElements'">
      <xsl:text>
&lt;!-- ============================================================= -->
&lt;!--                    ELEMENT NAME ENTITIES                      -->
&lt;!-- ============================================================= -->&#x0a;</xsl:text>
      
      <xsl:apply-templates  select="rng:define" mode="element-name-entities" />
    </xsl:if>

    <xsl:if test="$moduleType = 'elementdomain'">
      <xsl:text>
&lt;!-- ============================================================= -->
&lt;!--                    ELEMENT EXTENSION ENTITY DECLARATIONS      -->
&lt;!-- ============================================================= -->&#x0a;</xsl:text>
      <xsl:text>&#x0a;</xsl:text>

      <xsl:apply-templates 
        select="/*/rng:define[starts-with(@name, $domainPrefix)]" 
        mode="generate-parment-decl-from-define">
        <xsl:with-param name="indent" as="xs:integer" select="2"/>
      </xsl:apply-templates>
      
    </xsl:if>

    <xsl:if test="$moduleType = 'attributedomain'">

      <xsl:apply-templates 
        select="/*/rng:define[starts-with(@name, $domainPrefix)]" 
        mode="generate-parment-decl-from-define">
        <xsl:with-param name="indent" as="xs:integer" select="2"/>
      </xsl:apply-templates>
      
    </xsl:if>

    <xsl:if test="ends-with($moduleType, 'domain')">
      <xsl:text>
&lt;!-- ============================================================= -->
&lt;!--                    DOMAIN ENTITY DECLARATION                  -->
&lt;!-- ============================================================= -->&#x0a;</xsl:text>
      <xsl:apply-templates mode="domainAttContributeEntityDecl"
        select="rng:define[@name = 'domains-att-contribution']"
        >
        <xsl:with-param name="domainPrefix" select="$domainPrefix" as="xs:string" />
      </xsl:apply-templates>
  
    </xsl:if>

    <xsl:text>
&lt;!-- ================ End of </xsl:text>
    <xsl:sequence select="$moduleTitle"/>
    <xsl:text> ================== -->&#x0a; </xsl:text>    
  </xsl:template>
  
  <xsl:template match="rng:define" mode="domainAttContributeEntityDecl">
    <xsl:param name="domainPrefix" as="xs:string"/>

    <xsl:text>&#x0a;</xsl:text>
    <xsl:text>&lt;!ENTITY </xsl:text>
    <xsl:sequence select="concat($domainPrefix, '-att')"/>
    <xsl:text>&#x0a;</xsl:text>
    <xsl:text>  "</xsl:text><xsl:value-of select="rng:value"/><xsl:text>"&#x0a;</xsl:text>
    <xsl:text>&gt;&#x0a;</xsl:text>    
  </xsl:template>

  <xsl:template match="rnga:documentation" mode="entityFile" />

</xsl:stylesheet>