<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<li><a href="index.jsp">Home</a></li>
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
							
								<table class="live" width="494px" style='table-layout:fixed'>
									
									<thead>
										<tr>
											<th width="20%">Route</th>
											<th width="60%">Destination</th>
											<th width="20%">Arr. Time</th>
										</tr>
									<thead>
									
									<tbody>
									<c:choose>
										<c:when test="${station.arrivals==null}">
										<tr>
											<td>--</td>
											<td>No Arrivals expected at Station</td>
											<td>00:00</td>
										</tr>	
										</c:when>
										<c:when test="${station.arrivals!=null}">
										
										<c:forEach items="${station.arrivals}" var="data">
										<tr>
											<td title="Route ${data.route}">${data.route}</td>
											<td><b>${data.destination}</b></td>
											<td>${data.expectedTime}</td>
										</tr>
										</c:forEach>
										
										</c:when>
									
									</c:choose>
									</tbody>
								</table>

							</div>
						</div>
						
						<div class="details">
							<div id="header">Station Information</div>
							<c:choose>
								<c:when test="${station.company.name=='Bus Éireann'}">
									<img class="stationlogo" src="img/company_logos/bus_eireann.png"/>
								</c:when>
								<c:when test="${station.company.name=='Dublin Bus'}">
									<img class="stationlogo" src="img/company_logos/dublin_bus.png"/>
								</c:when>
								<c:when test="${station.company.name=='Irish Rail'}">
									<img class="stationlogo" src="img/company_logos/irish_rail.png"/>
								</c:when>
								<c:when test="${station.company.name=='Luas'}">
									<img class="stationlogo" src="img/company_logos/luas.png"/>
								</c:when>
								<c:when test="${station.company.name=='JJ Kavanagh & Sons'}">
									<img class="stationlogo" src="img/company_logos/jj_kavanagh.png"/>
								</c:when>
							</c:choose>
							<span class="stationname">${station.name}</span>
							<span class="stationaddress">${station.address.location}</span>
							<span class="lastupdate">Last Updated: 
								<c:set var="now" value="<%=new java.util.Date()%>"/>
								<fmt:formatDate pattern="dd/MM/yyyy HH:mm" value="${now}"/>
							</span>
						</div>
						
						<div class="location">
							<div id="header">Location</div>
							<div id="mapcanvas"></div>
						</div>
						
						<div class="departures">
							<div id="header">Departures</div>
							<div id="scrollable" style="height: 210px;">
							
								<table class="live" width="494px" style='table-layout:fixed'>
									
									<thead>
										<tr>
											<th width="20%">Route</th>
											<th width="60%">Destination</th>
											<th width="20%">Dep. Time</th>
										</tr>
									<thead>
									
									<tbody>
									<c:choose>
										<c:when test="${station.departures==null}">
										<tr>
											<td>--</td>
											<td>No Depatures expected from Station</td>
											<td>00:00</td>
										</tr>	
										</c:when>
										<c:when test="${station.departures!=null}">
										
										<c:forEach items="${station.departures}" var="data">
										<tr>
											<td title="Route: ${data.route}">${data.route}</td>
											<td><b>${data.destination}</b></td>
											<td>${data.expectedTime}</td>
										</tr>
										</c:forEach>
										
										</c:when>
									
									</c:choose>
									</tbody>
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


	<jsp:include page="incFooter.html"/>

</body>
</html>
