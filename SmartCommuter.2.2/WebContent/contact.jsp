<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
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
						<li><a href="client">Client</a></li>
						<li class="active"><a href="contact">Contact</a></li>
					</ul>
				</div>
				
			</div>
		</div>


		<div class="content">
			
			<div class="contentholder">
				
				<div id="sitedesc">
					<h1>Get in Touch</h1>
					<p>
						If you have a question or something that you would
						like to share with SmartCommuter, then please get 
						in touch and remember <b>your feedback is important</b> to us!
					</p>
				</div>
				<div id="sitebanner">
					<img src="img/android.png" alt="Android App" title="SmartCommuter for Android"/>
				</div>
				
				
				<h2>How to get in touch</h2>
				<p>
					To get in touch you can fill in the form below or see the alternative
					ways to get in touch, either way we will pleased to hear from you.
				</p>
				

				<form id="contactus" method="post" action="contactUs" onsubmit="return validateContactForm()">
					<fieldset>
						<label class="label" for="name">Name</label>
						<input class="text"  type="text" name="name" id="name" value="${param.name}"/>
						<span id="nameerror">* Name Required!</span>
						
						<label class="label" for="email">Email</label>
						<input class="text"  type="text" name="email" id="email" value="${param.email}"/>
						<span id="emailerror">* Email Required!</span>
						
						<label class="label" for="subject">Subject</label>
						<select class="drop" name="subject">
							<option value="subject">Subject 1</option>
							<option value="subject">Subject 2</option>
							<option value="subject">Subject 3</option>
						</select>
						
						<label class="label" for="message">Message</label>
						<textarea style="resize: none;" name="message" id="message" rows="5" cols="30">
							${param.message}
						</textarea>
						<span id="messageerror">* Message Required!</span>
						
						<label class="label" for="captcha">${captcha.question} =</label>
						<input class="text"  type="text" name="captcha" id="captcha"/>
						<span id="captchaerror">* Captcha Error! Are you really a human?</span>
						
						<input class="button" style="margin-left: 100px; margin-top: 0px" type="submit" value="Submit"/>
						<input class="button" style="margin-top: 0px" type="button" value="Reset" onclick="resetContactForm()"/>
					</fieldset>
				</form>
				
				
				<h2>Alternative ways to get in touch</h2>
				<p>
					If you do not wish to use the form above to get in touch
					you can drop us an email using the this address.<br/>
					Otherwise you can get in touch with using your Facebook or
					Twitter account. See the bottom of the page for our social
					network accounts.
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
