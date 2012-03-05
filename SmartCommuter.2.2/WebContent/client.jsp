<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>SmartCommuter.ie</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<script type="text/javascript" src="js/index.js"></script>
</head>
<body>
	<div class="main">
		
		<div class="header">
			<div class="headerholder">
				
				
				<div class="logo">
					<img src="img/logo.png" width="35px"/>
					<span class="title">SmartCommuter.ie</span>
				</div>

				
				<div class="menubar">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li class="active"><a href="client">Client</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
				
			</div>
		</div>


		<div class="content">
			
			<div class="contentholder">
				
				<div id="sitedesc">
					<h1>SmartCommuter Web Client</h1>
					<p>
						Use the application through a web browser which 
						allows you to get up to the minute information
						for public transport systems in Ireland.
					</p>
				</div>
				<div id="sitebanner">
					<img src="img/android.png" alt="Android App" title="SmartCommuter for Android"/>
				</div>
				
				
				<h2>About the Web Client</h2>
				<p>
					The smart commuter web client is an alternative way to get up to minute information
					for public transport systems when your online. 
				</p>
				
				<div id="webclient">
					
					<div class="trail">
						Web Client Home
					</div>
					
					<div class="search">
						<div id="header">Search Stations</div>
						<form method="post" action="search" onsubmit="return validateStationSearch()">
							<fieldset>
								<label for="stationname">Station Name</label>
								<input class="inputtext" type="text" name="stationname" id="stationname" value="Type the Station Name" onfocus="toggleSearchInfoMessage()" onblur="toggleSearchInfoMessage()" />
								
								<label for="busstation">Station Type</label>
								<input class="checks" style="margin-left: 0px" type="checkbox" name="busstation" id="busstation" value="Bus" checked="checked"/>Bus
								<input class="checks" type="checkbox" name="railstation" id="railstation" value="Rail" checked="checked"/>Rail
								<input class="checks" type="checkbox" name="tramstation" id="tramstation" value="Tram" checked="checked"/>Tram
								
								<input id="searchbutton" class="button" type="submit" value="Search"/>
								<input class="button" style="margin-right: 0px" type="button" value="Reset"/>
							</fieldset>
						</form>
					</div>
					
					<div class="results">
						<div id="header">Instructions</div>
						
						Include instructions of how to use the web client here.<br/>
						
						Also include any error messages here!
						
					</div>
					
					<div class="recent">
						<div id="header">Recently Viewed</div>
						
						<div id="scrollable">
							<table class="stationlist">
								<c:forEach items="${recentlyViewedStations}" var="station">
									<tr onclick="viewStation(${station.id})"><td>${station.name}</td></tr>
								</c:forEach>
							</table>
						</div>
					</div>

				</div>
				
				<h2>Disclaimer</h2>
				<p>
					SmartCommuter.ie does not claim responsibility for the real
					time information shown for each public transport station
					and might be times when this information may be not be exactly
					correct.
				</p>
				
			</div>
			
		</div>
		
		
	</div>



	<div class="footer">
		
		<div class="footerholder">
			
			<div class="sitedetails">
			
				<div id="aboutsite">
					<h4>About</h4>
					<p>
						SmartCommuter Android Application and Web Client were developed as part of a 
						fourth year prject in Hons BSc in Software Systems Development at the Waterford 
						Institute of Technology.
					</p>
				</div>
				
				<div id="socialnetworks">
					<h4>Social Networks</h4>
					<p>
						Follow us on your favourite social networks.
					</p>
					<a href="http://www.facebook.com"><img src="img/social_networks/facebook_32.png" title="Facebook" alt="Facebook"/></a>
					<a href="http://www.linkedin.com"><img src="img/social_networks/linkedin_32.png" title="LinkedIn" alt="LinkedIn"/></a>
					<a href="http://www.twitter.com"><img src="img/social_networks/twitter_32.png" title="Twitter" alt="Twitter"/></a>
					<a href="http://www.youtube.com"><img src="img/social_networks/youtube_32.png" title="Youtube" alt="Youtube"/></a>
				</div>
				
				<div id="navsite">
					<h4>Navigation</h4>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="client">Client</a></li>
						<li><a href="contact">Contact</a></li>
						<li><a href="admin">Admin</a></li>
					</ul>
				</div>
			
				<div id="usefullinks">
					<h4>Useful Links</h4>
					<ul>
						<li><a href="http://www.buseireann.ie">Bus &#201;ireann</a></li>
						<li><a href="http://www.dublinbus.ie">Dublin Bus</a></li>
						<li><a href="http://www.irishrail.ie">Irish Rail</a></li>
						<li><a href="http://www.jjkavanagh.ie">JJ Kavanagh &amp; Sons</a></li>
						<li><a href="http://www.luas.ie">Luas</a></li>
						<li><a href="http://www.rtpi.ie/">Transport for Ireland</a></li>
					</ul>
				</div>
				<br/>
			
			</div>
			
			<div class="author">
				Developed by Shane Bryan Doyle (shane@iamcloudy.com)
			</div>

		</div>
		
	</div>
	
	

</body>
</html>
