<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>SmartCommuter.ie</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="galleria/galleria-1.2.6.js"></script>
	<script src="js/gallery.js"></script>
</head>
<body>
	<div class="main">

		<div class="header">
			<div class="headerholder">


				<div class="logo">
					<img src="img/logo.png" width="35px"/>
					<span class="title">SmartCommuter</span>
				</div>


				<div class="menubar">
					<ul>
						<li class="active"><a href="">Home</a></li>
						<li><a href="client">Client</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>

			</div>
		</div>


		<div class="content">

			<div class="contentholder">

				<div id="sitedesc">
					<p>
						SmartCommuter provides up to the minute information on Public Transport Systems.
					</p>
				</div>
				<div id="sitebanner">
					<img src="img/android.png" alt="Android App" title="SmartCommuter for Android"/>
				</div>


				<h2>Why use SmartCommuter</h2>
				
				<div class="infobox">
					<h3>
						<span>E</span>xtensive Info
					</h3>
					<p>
						SmartCommuter provides information for over 3500 Public Transport Stations for 
						five of the largest Transport System in Ireland and is growing everyday.
					</p>
				</div>
				
				<div class="infobox">
					<h3>
						<span>B</span>us, Rail &#38; Tram
					</h3>
					<p>
						SmartCommuter provides information for multiple transportation modes.
					</p>
				</div>
				
				<div class="infobox" style="margin-right: 0%">
					<h3>
						<span>E</span>ase of Access
					</h3>
					<p>
						No more switching between applications to find information for different Public Transport Systems.
					</p>
				</div>
				
				<div class="infobox">
					<h3>
						<span>I</span>nstant Access
					</h3>
					<p>
						SmartCommuter provides instant access to real time information
						for Stations such as next arrival or departure.
					</p>
				</div>
				
				<div class="infobox">
					<h3>
						<span>A</span>wareness
					</h3>
					<p>
						SmartCommuter can direct you to nearby Public Transport Stations, 
						providing you with a sense of awareness for your location.
					</p>
				</div>
				
				<div class="infobox" style="margin-right: 0%">
					<h3>
						<span>F</span>avourites
					</h3>
					<p>
						SmartCommuter allows you to save the your favourite Public Transport Stations 
						so that you can quickly access them at anytime.
					</p>
				</div>
				
				
				<div class="featurebox">
					<h3>Screenshot's</h3>
					
					<div id="screenshots"></div>
				</div>
				
				<div class="downloadbox">
					<h3>Get SmartCommuter</h3>
					<img src="http://placehold.it/290x50"/>
					<h4>Scan this QR Code on your phone</h4>
					<img src="http://placehold.it/128x128"/>
				</div>
				
				<h3>SmartCommuter Provides:</h3>

				<img class="transportlogo" src="img/company_logos/bus_eireann.png" alt="Bus Éireann" title="Information for Bus Éireann"/>
				<img class="transportlogo" src="img/company_logos/dublin_bus.png" alt="Dublin Bus" title="Information for Dublin Bus"/>
				<img class="transportlogo" src="img/company_logos/irish_rail.png" alt="Irish Rail" title="Information for Irish Rail"/>
				<img class="transportlogo" src="img/company_logos/jj_kavanagh.png" alt="JJ Kavanagh & Sons" title="Information for JJ Kavanagh & Sons"/>
				<img class="transportlogo" style="margin-right: 0" src="img/company_logos/luas.png" alt="Luas" title="Information for Luas"/>
				
			</div>

		</div>

	</div>

	<jsp:include page="incFooter.html"/>
</body>
</html>
