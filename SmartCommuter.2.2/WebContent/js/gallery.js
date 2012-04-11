/**
 * This file contains the javascript methods
 * that are used to display the Screenshot's
 * gallery on the home page.
 * @author Shane Bryan Doyle
 */

$(document).ready(function() {
	Galleria.loadTheme('galleria/theme/galleria.classic.min.js');
	
	var data = [ {
			image: 'img/gallery/webclient.png',
			title: 'SmartCommuter Web Client Search Stations',
			thumb: 'img/gallery/thumbnails/webclient.png',
			description: 'SmartCommuter Web Client allows you to search for Public Transport Stations.'},
		{
			image: 'img/gallery/webclient-station.png',
			title: 'SmartCommuter Web Client Station Details',
			thumb: 'img/gallery/thumbnails/webclient-station.png',
			description: 'SmartCommuter Web Client allows you to view information such as the arrivals and departures from the station.',},
		{
			image: 'img/gallery/app-home.png',
			title: 'SmartCommuter Android Application Home',
			thumb: 'img/gallery/thumbnails/app-home.png',
			description: 'SmartCommuter Android Application provides up to the minute information on Public Transport Systems.',},
		{
			image: 'img/gallery/app-search.png',
			title: 'SmartCommuter Android Application Search Stations',
			thumb: 'img/gallery/thumbnails/app-search.png',
			description: 'SmartCommuter allows you to search for over 3000 Public Transport Stations from five different Transport Companies and is growing.',},
		{
			image: 'img/gallery/app-nearby.png',
			title: 'SmartCommuter Android Application Nearby Stations',
			thumb: 'img/gallery/thumbnails/app-nearby.png',
			description: 'SmartCommuter allows you to discover what Public Transport Stations are near your location.',},
		{
			image: 'img/gallery/app-favourites.png',
			title: 'SmartCommuter Android Application Favourite Stations',
			thumb: 'img/gallery/thumbnails/app-favourites.png',
			description: 'SmartCommuter allows you to save your Favourite Stations for future quick access.',},
		{
			image: 'img/gallery/app-station.png',
			title: 'SmartCommuter Android Application Station Details',
			thumb: 'img/gallery/thumbnails/app-station.png',
			description: 'SmartCommuter allows you to get directions to Public Transport Stations and get up to the minute real-time information about the station.',}
	];
	
	$('#screenshots').galleria({
		data_source	: data,
		showInfo	: false,
		showCounter : false,
		lightbox	: true,
		imageCrop	: true
	});
});


	