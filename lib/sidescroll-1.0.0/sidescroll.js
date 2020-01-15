
var isMobile;

function doResize(event, el, ui) {

    var scale;
    var translationY = 50;
    var topPerc = 50;


    scale =   Math.min(
      ui.body.height / 1000 ,
      ui.body.width / 1700
      );
      
    // Mobile vs Desktop and vertically alligned
    if( isMobile & ui.body.height > ui.body.width){
      topPerc = 0;
      translationY = 100;
    }
    
    el.css({
     top: topPerc + "%",
     transform: "translateY(-" + translationY + "%) " + "scale(" + scale + ") ",
     position: "relative"
    });

}

function set_slide_container_size(event,el,ui){
  el.css({
    height: ui.body.height * 0.98, /* make a scoche smaller than the body */
    width: ui.body.width * 0.98,
    margin: "auto"
  });
}


$(document).ready(function(){
  
    // make swipable if mobile/touch screen
    // from https://stackoverflow.com/questions/11381673/detecting-a-mobile-browser
    var touchDevice = (navigator.maxTouchPoints || 'ontouchstart' in document.documentElement);
    isMobile = /iPhone|iPod|Android/i.test(navigator.userAgent);

		$('.slide_master').slick({
			accessibility: true,
			dots: true,
			infinite: false,
			speed: 250,
			slidesToShow: 1,
			centerMode: true,
			variableWidth: true,
			swipe: touchDevice,
			arrows: !touchDevice,
			touchThreshold: 8
			});

		var $slide_wrapper = $(".slide_master_wrapper");
		var $slide_master = $(".slide_master");
	  var $wrapper = $("body");

	  set_slide_container_size(null,
		  $slide_wrapper,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		});

		doResize(null,
		  $slide_master,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		  });


	$('.slide_master').on('afterChange', function(event, slick, currentSlide, nextSlide){
    var generic_slide = $(".slick-current").find(".slide_container").find(".generic");
    generic_slide.css('visibility','visible');
  });
  
  $(this).on('wheel', (function(e) {
    e.preventDefault();
  
    if (e.originalEvent.deltaY < 0) {
      $('.slide_master').slick('slickPrev');
    } else {
      $('.slide_master').slick('slickNext');
    }
  }));
  
 $(this).keydown(function(e) {
   
    var code = (e.keyCode ? e.keyCode : e.which);
    console.log(e.which);
   
    if (code === 32 | code === 39 | code === 40) {
      $('.slide_master').slick('slickNext');
    }
    if (code === 37 | code === 38){
      $('.slide_master').slick("slickPrev");
    }
  });
  
});



$(window).resize(function() {
  	var $slide_wrapper = $(".slide_master_wrapper");
		var $slide_master = $(".slide_master");
	  var $wrapper = $("body");

		doResize(null,
		  $slide_master,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		  });
		set_slide_container_size(null,
		  $slide_wrapper,
		  { body: {
		      height: window.innerHeight,
		      width: window.innerWidth
		    }
		});
});






