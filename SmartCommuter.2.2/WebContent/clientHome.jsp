<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>SmartCommuter</title>
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
					<span class="title">SmartCommuter</span>
				</div>

				
				<div class="menubar">
					<ul>
						<li><a href="./">Home</a></li>
						<li class="active"><a href="client">Client</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
				
			</div>
		</div>


		<div class="content">
			
			<div class="contentholder">
				
				<div id="sitedesc">
					<p>
						SmartCommuter Web Client provides up to the 
						minute information on Public Transport Systems.
					</p>
				</div>
				<div id="sitebanner">
					<img src="img/android.png" alt="Android App" title="SmartCommuter for Android"/>
				</div>
				
				
				<h2>The Web Client</h2>
				<p>
					The SmartCommuter Web Client is an alternative 
					way to get up to minute information for public 
					transport systems when your online.
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
								<input class="button" style="margin-right: 0px" type="button" value="Reset" onclick="resetStationSearchForm()"/>
							</fieldset>
						</form>
					</div>
					
					<div class="results">
						<div id="header">Instructions</div>
						
						<img src="img/instructions.png" alt="" title=""/>
				
					</div>
					
					<div class="recent">
						<div id="header">Recently Viewed</div>
						
						<div id="scrollable">
							<table class="stationlist">
						
							<c:choose>
								<c:when test="${recentlyViewedStations==null}">
									<tr>
										<td>
											There are no recently viewed stations.
										</td>
									</tr>	
								</c:when>
								<c:when test="${recentlyViewedStations!=null}">
									<c:forEach items="${recentlyViewedStations}" var="station">
										<tr onclick="viewStation(${station.id})">
											<td>${station.name}</td>
										</tr>
									</c:forEach>
								</c:when>
							
							</c:choose>
							</table>
						</div>
					</div>

				</div>
				
				<h2>Disclaimer</h2>
				<p style="padding-bottom: 60px">
					SmartCommuter does not claim responsibility for 
					the real time information shown for each public 
					transport station and there might be times when 
					this information may  not be exactly correct.
				</p>
				
			</div>
			
		</div>
		
		
	</div>

	<jsp:include page="incFooter.html"/>

</body>
</html>
