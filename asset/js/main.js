$(function() {

	var wow = new WOW({animateClass:'animated',offset:300}).init();
	
	var bodyh = $('body').height();
	
	$(window).scroll(function() {
		
		if($(this).scrollTop() > 10) {
			$('.todown').slideUp();
		}
		
		if ($(this).scrollTop() > (bodyh*3)) {
			$('.totop').slideDown();
		} else {
			$('.totop').slideUp();
		}
	});
	
	
	$('.todown').click(function(){
		$('body,html').animate({scrollTop: bodyh}, 300);
	});
	
	$('.totop').click(function(){
		$('body,html').animate({scrollTop: 0}, 300);
	});

});