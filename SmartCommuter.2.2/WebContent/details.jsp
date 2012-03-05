<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>SmartCommuter.ie</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBB2-peGFqfk-cr17FqyN6zRJ_Fb6dfIY8&sensor=true">
    </script>
	<script type="text/javascript" src="js/index.js"></script>

</head>
<body onload="initialize(${station.address.latitude},${station.address.longitude})">
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
						<a href="client">Web Client Home</a> &gt; Station Information
					</div>
					
						<div class="arrivals">
							<div id="header">Arrivals</div>
							<div id="scrollable" style="height: 212px;">
								<table class="live">
								<c:forEach items="${station.arrivals}" var="data">
									<tr>
										<td width="30%">${data.route}</td>
										<td width="60%">${data.destination}</td>
										<td width="15%">${data.expectedTime}</td>
									</tr>
								</c:forEach>
								</table>
							</div>
						</div>
						
						<div class="details">
							<div id="header">Station Information</div>
							<table>
								<tr>
									<td class="lbl">Name</td>
									<td class="data">${station.name}</td>
								<tr>
								<tr>
									<td class="lbl">Company</td>
									<td class="data">${station.company.name}</td>
								<tr>
								<tr>
									<td class="lbl">Address</td>
									<td class="data">${station.address.location}</td>
								<tr>
							</table>
						</div>
						
						<div class="location">
							<div id="header">Location</div>
							<div id="mapcanvas"></div>
						</div>
						
						<div class="departures">
							<div id="header">Departures</div>
							<div id="scrollable" style="height: 210px;">
								<table class="live">
								<c:forEach items="${station.departures}" var="data">
									<tr>
										<td width="30%">${data.route}</td>
										<td width="60%">${data.destination}</td>
										<td width="15%">${data.expectedTime}</td>
									</tr>
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
						<li><a href="#">Site Map</a></li>
						<li><a href="#">Admin</a></li>
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
