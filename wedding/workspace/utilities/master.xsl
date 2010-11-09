<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
<xsl:import href="../utilities/date-time.xsl"/>

<xsl:output method="html" omit-xml-declaration="yes" indent="no" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">
	<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
	<html lang="en">
		<head>
			<!-- Start Page Data -->
			<meta charset="utf-8" />
			<meta name="title" content="{$page-title}" />
			<meta name="description" content="" />
			<meta name="tags" content="" />
			<title><xsl:call-template name="page-title"/></title>
			<!-- End Page Data -->
			<!-- Start Fav Icons -->
			<link rel="shortcut icon" href="/favicon.ico" />
			<link rel="icon" type="images/png" href="/favicon.png" />
			<!-- End Fav Icons -->
			<!-- Start CSS Links -->
			<link rel="stylesheet" media="screen" href="{$workspace}/css/style.css" />
			<!-- End CSS Links -->
			<!-- Start In-Page JavaScript -->
			<script>
				document.documentElement.className = "js";
			</script>
			<!-- End In-Page JavaScript -->
		</head>
		<body id="{$current-page}-page">
			<!-- Start Container -->
			<div id="container">
				<header>

			    </header>
				<!-- Start Header -->
				<div id="main">
					<img src="{$workspace}/images/main-image.gif" />
					<div class="text">
						<div class="text-box">
							<p>Greenwich Baths is located on the corner of Albert and O’Connell St in the Suburb of Greenwich on the North Shore of Sydney (see the location on Google Maps). Ferries are available from Circular Quay and many other places.</p>
						</div>
						<div class="text-box">
							<p>Greenwich Baths is located on the corner of Albert and O’Connell St in the Suburb of Greenwich on the North Shore of Sydney (see the location on Google Maps). Ferries are available from Circular Quay and many other places.</p>
						</div>
						<div class="text-box last">
							<p>Greenwich Baths is located on the corner of Albert and O’Connell St in the Suburb of Greenwich on the North Shore of Sydney (see the location on Google Maps). Ferries are available from Circular Quay and many other places.</p>
						</div>
					</div>
					<div class="yes-no">
						<a href="#" id="yes">Yes, I&#x27;m coming</a>
						<a href="#" id="no">No I can't make it</a>
					</div>
					<form id="coming">
						<input id="name" type="text" value="Full name"/>
						<a href="#" id="add">I'm bringing someone else</a>
						<div class="field-wrapper">
							<input type="checkbox" name="taxi" value="yes"/><span>I'm happy to pay $10 per head for a water taxi to Circular Quay at the end of the night.</span>
						</div>
						<div class="field-wrapper">
							<input type="checkbox" name="taxi" value="yes"/><span>I'm happy to pay $10 per head for a bus through North Sydney and Chatswood at the end of the night.</span>
						</div>
						<input type="submit" value="See you at the wedding" />
					</form>
					<form id="not-coming">
						<input id="name" type="text" value="Full name"/>
						<input type="submit" value="See you in San Francisco" />
					</form>
			    </div>

			    <footer>

			    </footer>
			</div>
			<!-- End Container -->
			<!-- Start Javascript Links -->
			<script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.js"></script>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			
			<!-- scripts concatenated and minified via ant build script-->
			<script src="{$workspace}/js/plugins.js"></script>
			<script src="{$workspace}/js/script.js"></script>
			<!-- end concatenated and minified scripts-->


			<!--[if lt IE 7 ]>
			  <script src="js/libs/dd_belatedpng.js"></script>
			  <script> DD_belatedPNG.fix('img, .png_bg'); </script>
			<![endif]-->

			<!-- yui profiler and profileviewer - remove for production -->
			<script src="js/profiling/yahoo-profiling.min.js"></script>
			<script src="js/profiling/config.js"></script>
			<!-- end profiling code -->
			<!-- End Javascript Links -->
		</body>
	</html>
</xsl:template>

<xsl:strip-space elements="*"/>

</xsl:stylesheet>