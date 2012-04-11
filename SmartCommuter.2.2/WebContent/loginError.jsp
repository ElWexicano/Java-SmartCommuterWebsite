<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SmartCommuter - Admin Login Failed</title>
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
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
						<li><a href="client">Client</a></li>
						<li><a href="contact">Contact</a></li>
					</ul>
				</div>
				
			</div>
		</div>

		<div class="content">
			
			<div class="contentholder">
				
				<div id="adminlogin">
					<img src="img/icons/login_64.png" alt="Login Icon" title="Login">
					<h2>Login Failed</h2>
					
					<p>
						Invalid <b>Username</b> and/or <b>Password</b>, please try again or
						go back to the home page.
					</p>
					
					<a class="adminloginbtn" href='<%= response.encodeURL("login.jsp") %>'>Try Again</a>
					<a class="adminloginbtn" href='<%= response.encodeURL("./") %>'>Home Page</a>
				</div>
				
			</div>
		</div>
	</div>
	
	<jsp:include page="incFooter.html"/>
		
</body>
</html>