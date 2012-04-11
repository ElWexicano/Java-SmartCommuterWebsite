/**
 * This file contains the javascript methods
 * used throughout the SmartCommuter Web Client
 * and Site.
 * @author Shane Bryan Doyle
 */


/**
 * This method is used to display the 
 * "Type the Station Name" message in
 * the Station Name textbox in Search
 * Stations.
 */
function toggleSearchInfoMessage() {
	var textbox = document.getElementById('stationname');

	if(textbox.value == "Type the Station Name") {
		textbox.value = "";
	} else if (textbox.value == ""){
		textbox.value = "Type the Station Name";
	}
}

/**
 * This method is used to validate the
 * Search Stations has at least a station
 * name and one of the station types is 
 * checked otherwise the form will not submit.
 */
function validateStationSearch() {
	var busCheck = document.getElementById('busstation');
	var railCheck = document.getElementById('railstation');
	var tramCheck = document.getElementById('tramstation');
	var stationName = document.getElementById('stationname');
	
	if(stationName.value == "Type the Station Name") {
		alert("You must enter a Station Name!");
		return false;
	}
	
	if(busCheck.checked||railCheck.checked||tramCheck.checked){
		return true;
	} else {
		alert("You must select a Station Type!");
		return false;
	}
}

/**
 * This method is used to validate the
 * Contact Us form fields.
 */
function validateContactForm() {
	
	var email = document.getElementById('email');
	var name = document.getElementById('name');
	var captcha = document.getElementById('captcha');
	var message = document.getElementById('message');
	
	var emailError = document.getElementById("emailerror");
	var nameError = document.getElementById("nameerror");
	var messageError = document.getElementById("messageerror");
	var captchaError = document.getElementById("captchaerror");
	
	var returnValue = true;
	
	if(!validateEmail(email.value)){
		email.style.marginRight = "10px";
		emailError.style.display="block";
		returnValue = false;
	} else {
		emailError.style.display="none";
		email.style.marginRight = "500px";
	}
	
	if(!validateName(name.value)){
		name.style.marginRight = "10px";
		nameError.style.display="block";
		returnValue = false;
	} else {
		nameError.style.display="none";
		name.style.marginRight = "500px";
	}
	
	if(!validateMessage(message.value)) {
		message.style.marginRight = "10px";
		messageError.style.display="block";
		returnValue = false;
	} else {
		messageError.style.display="none";
		message.style.marginRight = "300px";
	}
	
	if(!validateNumber(captcha.value)) {
		captcha.style.marginRight = "10px";
		captchaError.style.display="block";
		returnValue = false;
	} else {
		captchaError.style.display="none";
		captcha.style.marginRight = "500px";
	}
	
	return returnValue;
}

/**
 * This method is used to reset the Web Client search form.
 */
function resetStationSearchForm() {
	document.getElementById('busstation').checked = true;
	document.getElementById('railstation').checked = true;
	document.getElementById('tramstation').checked = true;
	document.getElementById('stationname').value = "Type the Station Name";
}

/**
 * This method is used to reset the contact us
 * form.
 */
function resetContactForm() {
	
	var email = document.getElementById('email');
	var name = document.getElementById('name');
	var captcha = document.getElementById('captcha');
	var message = document.getElementById('message');
	
	var emailError = document.getElementById("emailerror");
	var nameError = document.getElementById("nameerror");
	var messageError = document.getElementById("messageerror");
	var captchaError = document.getElementById("captchaerror");
	
	emailError.style.display="none";
	email.style.marginRight = "500px";
	email.value = "";
	nameError.style.display="none";
	name.style.marginRight = "500px";
	name.value = "";
	messageError.style.display="none";
	message.style.marginRight = "300px";
	message.value = "";
	captchaError.style.display="none";
	captcha.style.marginRight = "500px";
	captcha.value = "";
}

/**
 * This method is used to validate
 * an email address.
 * @param email
 * @returns
 */
function validateEmail(email) {
	var pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	return pattern.test(email);
}

/**
 * This method is used to validate 
 * an Full Name.
 * @param name
 * @returns
 */
function validateName(name) {
	var pattern = /^[A-Za-z0-9 ]{3,20}$/;
	return pattern.test(name);
}

/**
 * This method is used to validate
 * a whole number.
 * @param number
 * @returns
 */
function validateNumber(number) {
	var pattern = /^\s*(\+|-)?\d+\s*$/;
	return pattern.test(number);
}

/**
 * This method is used to validate
 * a message in its basic form.
 * @param message
 * @returns
 */
function validateMessage(message) {
	var pattern = /\S/;
	return pattern.test(message);
}

/**
 * This method will direct the user to 
 * the station details page for a 
 * particular station.
 * @param stationId
 */
function viewStation(stationId) {
	
	var form = document.createElement("form");
	form.setAttribute("method", "post");
    form.setAttribute("action", "station");
    
    var hiddenField = document.createElement("input");
    hiddenField.setAttribute("type", "hidden");
    hiddenField.setAttribute("name", "stationid");
    hiddenField.setAttribute("value", stationId);

    form.appendChild(hiddenField);
    
    document.body.appendChild(form);
    form.submit();
}

/**
 * This method is used to open the google map
 * with the stations location.
 * @param lat
 * @param lon
 */
function initialize(lat,lon) {
	var coOrds = new google.maps.LatLng(lat, lon);
	
	var myOptions = {
      center: coOrds,
      zoom: 15,
      disableDefaultUI: true,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("mapcanvas"),myOptions);
    
    var image = new google.maps.MarkerImage(getStationMarker());
    
    var marker = new google.maps.Marker({
        position: coOrds,
        map: map,
        icon: image,
        title:"Station Location"
    });
    
    console.log(marker);
  }

/**
 * This method is used to get the station
 * marker image for the google map.
 * @returns {String}
 */
function getStationMarker() {
	
	var stationType = (document.getElementById('stationType').value).toLowerCase();
	
	var imageLocation = "./img/icons/";
	
	switch (stationType) {
	case "bus":
		imageLocation += "map_ic_bus.png";
		break;
	case "rail":
		imageLocation += "map_ic_train.png";
		break;
	case "tram":
		imageLocation += "map_ic_tram.png";
		break;
	}
	
	return imageLocation;
}
