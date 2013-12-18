if (Meteor.isClient) {
	Meteor.startup( function() {
		Reveal.initialize({
			loop: true,
			controls: false,
			progress: false,
			autoSlide: 2800	
		});
	});
}
