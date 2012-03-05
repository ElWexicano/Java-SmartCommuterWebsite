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
						<li class="active"><a href="adminCompanies">Companies</a></li>
						<li><a href="adminStations">Stations</a></li>
						<li><a href="adminExit">Exit</a></li>
					</ul>
				</div>
				
			</div>
		</div>


		<div class="content">
			
			<div class="contentholder">
				
				<div id="sitedesc">
					<h1>SmartCommuter Administrator</h1>
					<p>
						Use the Administrator to update information for
						Public Transport Companies and their Stations.
					</p>
				</div>
				<div id="sitebanner">
					<img src="img/android.png" alt="Android App" title="SmartCommuter for Android"/>
				</div>
				
				<h2>About the Administrator</h2>
				<p>
					The SmartCommuter Companies Administrator allows you to add, delete and modify Public Transport Companies. 
				</p>
				
				<div id="webclient">
					
					<div class="search">
						<div id="header">Search Companies</div>
						<form method="post" action="adminCompanySearch" onsubmit="return validateCompanySearch()">
							<fieldset>
								<label for="companyname">Company Name</label>
								<input class="inputtext" type="text" name="companyname" id="companyname" value="Type the Company Name" onfocus="toggleSearchInfoMessage()" onblur="toggleSearchInfoMessage()" />
								
								<label for="buscompany">Company Type</label>
								<input class="checks" style="margin-left: 0px" type="checkbox" name="buscompany" id="buscompany" value="Bus" checked="checked"/>Bus
								<input class="checks" type="checkbox" name="railcompany" id="railcompany" value="Rail" checked="checked"/>Rail
								<input class="checks" type="checkbox" name="tramcompany" id="tramcompany" value="Tram" checked="checked"/>Tram
								
								<input id="searchbutton" class="button" type="submit" value="Search"/>
								<input class="button" style="margin-right: 0px" type="button" value="Reset"/>
							</fieldset>
						</form>
					</div>
					
					<div class="results">
						<div id="header">Company Information</div>
						<form class="infoform" method="post" action="updateCompanies" onSubmit="return validateCompanyDetails()">
							<fieldset>
								<label class="label" for="name">Name</label>
								<input class="text" type="text" name="name" id="name"/>
								
								<label class="label" for="transportmode">Mode</label>
								<select class="drop" name="transportmode" id="transportmode">
									<option value="bus">Bus</option>
									<option value="rail">Rail</option>
									<option value="tram">Tram</option>
								</select>
								
								<p>
									Contact Details
								</p>
								
								<label class="label" for="email">Email</label>
								<input class="text" type="text" name="email" id="email"/>
								
								<label class="label" for="website">Website</label>
								<input class="text" type="text" name="website" id="website"/>
								
								<label class="label" for="telephone">Telephone</label>
								<input class="text" type="text" name="telephone" id="telephone"/>
								
								<p>
									Social Networking Details
								</p>
								
								<label class="label" for="facebook">Facebook</label>
								<input class="text" type="text" name="facebook" id="facebook"/>
								
								<label class="label" for="twitter">Twitter</label>
								<input class="text" type="text" name="twitter" id="twitter"/>
								
								<p>
									Before updating ensure that all the above fields are correct.
								</p>
								
								<input class="subbtn" style="margin-right: 20px;" type="submit" value="Remove"/>
								<input class="subbtn" type="submit" value="Cancel"/>
								<input class="subbtn" type="submit" value="Add / Update"/>
							</fieldset>
						</form>
					</div>
					
					<div class="recent">
						<div id="header">Search Results</div>
						<div id="scrollable">
							<table class="companylist">

							</table>
						</div>
					</div>

				</div>
				
				<h2>Warning</h2>
				<p>
					All changes made using the administrator will be represented in the 
					database and the Web Client so use caution when updating or removing
					information.
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
