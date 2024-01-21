<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/carServiceRepository">
      <html>
	    <head>
		  <title>question1</title>
		</head>
		<body>
		<div>
		  <h2 style="text-decoration:underline;">Car service repository</h2>
		  <font size="4" style="font-weight:bolder;font-style:italic">Car Service Station:</font>
		  <font size="4" style="font-style:italic">
		    <xsl:value-of select="@station"/>
		  </font>
		</div>
		
		<div size="3">
		<ul style="list-style-type:none;">
		  <xsl:for-each select="carInfo">
		  <li>
		    <font style="font-weight:bolder;">Car plate:</font>
		    <font><xsl:value-of select="carPlate"/></font>
		  </li>
		  <li>
			<font style="font-weight:bolder;">Model:</font>
		    <font><xsl:value-of select="model"/></font>
		  </li>
          <li>		  
			<font style="font-weight:bolder;">Year:</font>
		    <font><xsl:value-of select="year"/></font>
		  </li>
		  <li>
			<font style="font-weight:bolder;">Service card:</font>
			<ul style="list-style-type:disc;padding-left:100px;">
			  <xsl:for-each select="serviceCard/record">
			    <li>
				  <xsl:value-of select="time"/>
				  <xsl:text>, service </xsl:text>
				  <xsl:value-of select="distance"/>
				</li>
			  </xsl:for-each>
			</ul>
		  </li>
		  <br/>
		  </xsl:for-each>
		</ul>
		</div>
		  
		</body>
      </html>
    </xsl:template>
  </xsl:stylesheet>