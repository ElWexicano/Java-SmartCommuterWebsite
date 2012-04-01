

$(document).ready(function() {
	Galleria.loadTheme('galleria/theme/galleria.classic.min.js');
	
	var data = [ {
			image: 'http://placehold.it/380x170',
			title: 'my first image',
			description: 'Lorem ipsum caption'},
		{
			image: 'http://placehold.it/380x170',
			title: 'my second image',
			description: 'Another caption',},
		{
			image: 'http://placehold.it/380x170',
			title: 'my second image',
			description: 'Another caption',},
		{
			image: 'http://placehold.it/380x170',
			title: 'my second image',
			description: 'Another caption',},
		{
			image: 'http://placehold.it/380x170',
			title: 'my second image',
			description: 'Another caption',}
	];
	
	$('#screenshots').galleria({
		data_source	: data,
		showInfo	: false,
		imageCrop	: true
	});
});


	