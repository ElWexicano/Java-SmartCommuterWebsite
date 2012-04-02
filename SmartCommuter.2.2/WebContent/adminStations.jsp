<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>SmartCommuter.ie - Admin</title>
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
						<li><a href="adminCompanies">Companies</a></li>
						<li class="active"><a href="adminStations">Stations</a></li>
						<li><a href="#">History</a></li>
						<li><a href="adminExit">Exit</a></li>
					</ul>
				</div>
				
			</div>
		</div>


		<div class="content">
			
			<div class="contentholder">
				
				<div id="sitedesc">
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
						<div id="header">Search Stations</div>
						<form method="post" action="adminStationSearch" onsubmit="return validateStationSearch()">
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
						<div id="header">Station Information</div>
						<form class="infoform" method="post" action="updateStations" onSubmit="return validateStationDetails()">
							<fieldset>
								<label class="label" for="name">Name</label>
								<input class="text" type="text" name="name" id="name"/>
								
								<label class="label" for="address">Address</label>
								<input class="text" style="width: 450px; margin-right: 0px;" type="text" name="address" id="address"/>
								
								<input class="coordsbtn1" type="button" onclick="" value="Find Address"/>
								<input class="coordsbtn2" type="button" onclick="" value="Find CoOrds."/>
								
								<label class="label" for="latitude">Latitude</label>
								<input class="text" type="text" name="latitude" id="latitude"/>
								
								<label class="label" for="longitude">Longitude</label>
								<input class="text" type="text" name="longitude" id="longitude"/>
								
								<label class="label" for="company">Company</label>
								<select class="drop" name="company" id="company">
								<c:forEach items="${companies}" var="company">
									<option>${company.name}</option>
								</c:forEach>
								</select>
								
								<label class="label" for="apicode">API Code</label>
								<input class="text" style="margin-right: 0px;" type="text" name="apicode" id="apicode"/>
								<input class="apibtn" type="button" onclick="" value="Test API Code"/>
							
								<label class="label" for="testresults">Test Result</label>
								<textarea name="testresults" id="testresults" rows="5" cols="30" disabled="disabled">
								</textarea>
								
								<p>
									Make sure to test the API Code before adding any new stations.
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
							<table class="stationlist">
								<c:forEach items="${adminSearchStations}" var="station">
									<tr onclick="editStation(${station.id})"><td>${station.name}</td></tr>
								</c:forEach>
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
	

	<jsp:include page="incFooter.html"/>

</body>
</html>
