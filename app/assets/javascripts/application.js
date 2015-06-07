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
//= require jquery.countdown
//= require_tree .

$(document).ready(function(){

	// HTML Elements
	var $window = $(window);
	var $html = $('html');
	var $body = $('body');
	// var $navMobile = $('#nav-list-mobile');
	// var $revealMobile = $('#nav_reveal');
	var $modal = $('.modal');
	var $openModal = $('#subscribe-btn');
	var $closeModal = $('.modal-exit');
	var $mobileBG = $('#mobile-cover');
	var $webBG = $('#web-cover');

	var curPos;
	var disableScroll = false;

	// Toggles the Mobile Navbar
	// $revealMobile.click(function() {
	// 	if ($revealMobile.hasClass('active')) { scrollUnlock(); }
	// 	else { scrollLock(); }

	// 	$revealMobile.toggleClass('active');
	// 	$navMobile.toggleClass('active');
	// 	$mobileBG.toggleClass('hidden');
	// });

  // Modal Functions
	$openModal.click(function() {
		curPos = Math.floor($window.scrollTop());
		$modal.css('top', (curPos + 100) + 'px');
		$webBG.removeClass('hidden');
		scrollLock();
	});

	$closeModal.click(function() {
		$modal.css('top', '-400px');
		$webBG.addClass('hidden');
		scrollUnlock();
	})

  // Scroll Control Functions
	function scrollLock() {
		var scrollPosition = [ $window.scrollLeft(), $window.scrollTop() ];
		$html.data('scroll-position', scrollPosition);
    $html.data('previous-overflow', $html.css('overflow'));
    $html.css('overflow', 'hidden');
    disableScroll = true;
	};

	function scrollUnlock() {
    $html.css('overflow', $html.data('previous-overflow'));
    disableScroll = false;
	};

	document.ontouchmove = function(e) { if (disableScroll) { e.preventDefault(); } };

});