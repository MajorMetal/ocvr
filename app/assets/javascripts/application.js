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
	var $navMobile = $('#nav-list-mobile');
	var $revealMobile = $('#nav-reveal');

	// Toggles the Mobile Navbar
	$revealMobile.click(function() {
		$revealMobile.toggleClass('active');
		$navMobile.toggleClass('active');
		$mobileBG.toggleClass('hidden');
	});

	function mobileMenu () {
		var list = document.getElementsByClassName('mobile-btn');
		var height = $window.height();
		var width = $window.width();

		if(height <= 360) {
			for (var i=0; i < list.length; i++){
				if (list[i].className != 'mobile-btn small') { list[i].className = 'mobile-btn small'; }
			}
		}
		else {
			for (var i=0; i < list.length; i++) { list[i].className = 'mobile-btn'; }
		}
	}

	mobileMenu();
	$window.bind("load", mobileMenu);
  $window.bind("resize", mobileMenu);
  $window.bind("orientationchange", mobileMenu);

});