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
				<xsl:if test="$current-path = '/?success'">
					<h1>Thankyou for your RSVP</h1>
					
				</xsl:if>
				<header>

			    </header>
				<!-- Start Header -->
				<div id="main">

					
					<img src="{$workspace}/images/main-image.gif" />
					<div class="text">
						<div class="text-box">
							<p>Greenwich Baths is located on the corner of Albert and O’Connell St in the Suburb of Greenwich on the North Shore of Sydney (<a href="http://bit.ly/bqA9Zd">see the location on Google Maps</a>). <a href="http://www.sydneyferries.info/uploads/library/timetables/SFC117-Balmain-TT-January2010-REVISED-v2-WEB-VERSION.pdf">Ferries are available</a> from Circular Quay to Greenwich Point.</p>
						</div>
						<div class="text-box">
							<p>After the ceremony we&#x27;ll have drinks, light snacks and celebrate at the baths. Dress in your finest summer cocktail outfit, and we'll dance the night away. Call Nathan <small>(0404 430 719)</small> or Alinta <small>(0421 726 320)</small> if you have any questions. Please RSVP below as soon as possible.</p>
						</div>
						<div class="text-box last">
							<p>If and how you choose to gift is up to you. Some family are buying Amazon gift cards to help us set-up house in San Francisco. <a href="https://www.amazon.com/gp/gc/order-email?ie=UTF8&ref_=gc_lp_4ways_email">You can attach gift vouchers to Nathan's email.</a><br/> <small>(nathanmcginness@gmail.com)</small></p>
						</div>
					</div>
					<div class="yes-no">
						<a href="#" id="yes">Yes, I&#x27;m coming</a>
						<a href="#" id="no">No I can't make it</a>
					</div>
					<form id="coming" method="post" action="" enctype="multipart/form-data">
						<label for="name">Names of people attending</label>
						<textarea name="fields[names]"></textarea>
						<div class="field-wrapper">
							<input type="checkbox" name="fields[taxi]" value="yes"/><span>Happy to pay $10 per head for a water taxi to Circular Quay at the end of the night.</span>
						</div>
						<div class="field-wrapper">
							<input type="checkbox" name="fields[bus]" value="yes"/><span>Happy to pay $10 per head for a bus to North Sydney hotels.</span>
						</div>
						<input name="action[save-attendee]" type="submit" value="Send your RSVP" />
						<input name="redirect" type="hidden" value="{$root}/?success" />
					</form>
					<form method="post" action="" enctype="multipart/form-data" id="not-coming">
					  <input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
					  <label>Names of people not attending</label>
					    <textarea name="fields[names]"></textarea>
					  
					  	<input name="action[save-non-attendee]" type="submit" value="Send your RSVP" />
						<input name="redirect" type="hidden" value="{$root}/?success" />
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
			  <script src="{$workspace}/js/libs/dd_belatedpng.js"></script>
			  <script> DD_belatedPNG.fix('img, .png_bg'); </script>
			<![endif]-->

			<!-- yui profiler and profileviewer - remove for production -->
			<script src="{$workspace}/js/profiling/yahoo-profiling.min.js"></script>
			<script src="{$workspace}/js/profiling/config.js"></script>
			<!-- end profiling code -->
			<!-- End Javascript Links -->
		</body>
	</html>
</xsl:template>

<xsl:strip-space elements="*"/>

</xsl:stylesheet>