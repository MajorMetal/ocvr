// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){
	// HTML Elements
	var $html = $('html');
	var $navMobile = $('#nav_list_mobile');
	var $revealMobile = $('#nav_reveal');
	var $modal = $('.modal');
	var $openModal = $('#sub_nav_btn');
	var $closeModal = $('.modal_exit');
	var $mobileBG = $('#mobile_cover');
	var $webBG = $('#web_cover');

	var curPos;

	// Scroll Manipulations
	$(window).scroll(function () {
		// Website Navbar Scroll Animations. Only works if the browser width is > 640px
		if ($(this).width() > 640) {
			if ($(this).scrollTop() >= 400) {
				$('#title_web').addClass('hidden');
				$('#title_bar_fixed').removeClass('hidden');
			}
			if ($(this).scrollTop() < 400) {
				$('#title_bar_fixed').addClass('hidden');
				$('#title_web').removeClass('hidden');
			}
		}
	});

	// Toggles the Mobile Navbar
	$revealMobile.click(function() {
		if ($revealMobile.hasClass('active')) { scrollUnlock(); }
		else { scrollLock(); }
		$revealMobile.toggleClass('active');
		$navMobile.toggleClass('active');
		$mobileBG.toggleClass('hidden');
	});

	$openModal.click(function() {
		curPos = Math.floor($(window).scrollTop());
		$modal.css('top', (curPos + 100) + 'px');
		$modal.addClass('active');
		$webBG.removeClass('hidden');
		scrollLock();
	});

	$closeModal.click(function() {
		$modal.removeClass('active');
		$modal.css('top', '-350px');
		$webBG.addClass('hidden');
		scrollUnlock();
	})

	function scrollLock() {
		// self.pageXOffset || document.documentElement.scrollLeft || document.body.scrollLeft ||
		var scrollPosition = [ $(window).scrollLeft(), $(window).scrollTop() ];
		$html.data('scroll-position', scrollPosition);
    $html.data('previous-overflow', $html.css('overflow'));
    $html.css('overflow', 'hidden');
    // $(window).scrollTo({left: scrollPosition[0] + 'px', top: scrollPosition[1] + 'px'}, 800);
	};

	function scrollUnlock() {
    // var scrollPosition = $html.data('scroll-position');
    $html.css('overflow', $html.data('previous-overflow'));
    // $(window).scrollTo({left: scrollPosition[0] + 'px', top: scrollPosition[1]+ 'px'}, 800);
	};

	// var disableScroll = false;
	// function disableScrolling() {
	//     disableScroll = true;
	// }
	// function enableScrolling() {
	//     disableScroll = false;
	// }
	// document.ontouchmove = function(e){
	//    if(disableScroll){
	//      e.preventDefault();
	//    } 
	// }

});