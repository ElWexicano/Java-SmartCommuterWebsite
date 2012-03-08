<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SmartCommuter.ie - Admin Login</title>
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
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
						<li><a href="index.jsp">Home</a></li>
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

					<h2>Login Required</h2>
					
					<p>
						To use the administrator feature use must first login
						using a valid username and password.
					</p>
						
					<form method="POST" action='<%= response.encodeURL("j_security_check") %>'>
						<fieldset>
							<label for="j_username">Username:</label>
							<input class="text" type="text" name="j_username">
							<label for="j_password">Password:</label>
							<input class="text" type="password" name="j_password">
							
							<input class="adminloginbtn" type="submit" value="Log In">
							<input class="adminloginbtn" type="reset">
						</fieldset>
					</form>
				</div>
				
				
			</div>
		</div>
	</div>
	
	<jsp:include page="incFooter.html"/>
		
</body>
</html>