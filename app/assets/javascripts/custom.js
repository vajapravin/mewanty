
$(document).ready(function(){
	$(".chzn-select").chosen({default_multiple_text: 'Choose categories'});
	var container = document.querySelector('.gridalicious');
	var msnry = new Masonry(container, {
		columnWidth: 190,
		itemSelector: '.galcolumn'
	});
	// container.imagesLoaded(function(){
	// 	var masonry = new Masonry(container, {
		// 	columnWidth: 190,
		// 	itemSelector: '.galcolumn'
		// });
	// });
	imagesLoaded(container, function() {
		msnry.layout();
	});
});