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
	var $logo = $('#logo');
	var $navWeb = $('#nav_list_web');
	var $revealWeb = $('#nav_reveal_web');
	var $navMobile = $('#nav_list_mobile');
	var $revealMobile = $('#nav_reveal_mobile');

	// Scroll Manipulations
	$(window).scroll(function () {
		// Website Navbar Scroll Animations. Only works if the browser width is > 640px
		if ($(this).width() > 640) {
			// Class Manipulation for the Navbar Logo animations.
			// Scroll Down
			if ( ($(this).width() < 1024 && $(this).scrollTop() < 200 && $logo.hasClass('invisible') == false) ||
					 ($(this).width() > 1024 && $(this).scrollTop() < 240 && $logo.hasClass('invisible') == false) ) {
				$logo.addClass('fadeOutUp');
				$logo.removeClass('fadeInDown');
				setTimeout(function() {
    	  		$logo.addClass('invisible');
				}, 500);
			}
			// Scroll Up
			if ( ($(this).width() < 1024 && $(this).scrollTop() > 200) ||
					 ($(this).width() > 1024 && $(this).scrollTop() > 240) ) {
				$logo.removeClass('invisible fadeOutUp');
				$logo.addClass('fadeInDown');
			}

			// Class Manipulation for Navbar animations
			// Scroll Down
			if ( ($(this).width() < 1024 && $(this).scrollTop() < 340 && $revealWeb.hasClass('hidden') == false) ||
					 ($(this).width() > 1024 && $(this).scrollTop() < 395 && $revealWeb.hasClass('hidden') == false) ) {
				revealNav();
			}
			// Scroll Up
			if ( ($(this).width() < 1024 && $(this).scrollTop() > 400 && $navWeb.hasClass('hidden') == false) ||
					 ($(this).width() > 1024 && $(this).scrollTop() > 450 && $navWeb.hasClass('hidden') == false) ) {
				$revealWeb.removeClass('hidden fadeOutUp');
    		$revealWeb.addClass('fadeInDown');
				$navWeb.addClass('fadeOutUp');
				$navWeb.removeClass('fadeInDown');
				setTimeout(function() {
    			$navWeb.addClass('hidden');
				}, 250);
			}
		}
	});

	// Wrapped this section in a function because it's called again on click of the '$revealWeb' button
	function revealNav() {
		$navWeb.removeClass('hidden fadeOutUp');
		$navWeb.addClass('fadeInDown');
		$revealWeb.addClass('fadeOutUp');
		$revealWeb.removeClass('fadeInDown');
		setTimeout(function() {
     	$revealWeb.addClass('hidden');
		}, 250);
	}

	// Reveals the Navbar again when scrolled down on the page
	$revealWeb.click(function() {
		revealNav();
	});

	// Opens the Mobile Navbar
	$revealMobile.click(function() {
		$revealMobile.removeClass('fadeInLeft');
		$revealMobile.addClass('fadeOutLeft');
		setTimeout(function() {
     	$revealMobile.addClass('hidden');
     	$navMobile.removeClass('hidden fadeOutLeft');
     	$navMobile.addClass('fadeInLeft');
		}, 250);
	})

	// Closes the Mobile Navbar
	$('#nav_mobile_close').click(function() {
		$navMobile.removeClass('fadeInLeft');
		$navMobile.addClass('fadeOutLeft');
		setTimeout(function() {
     	$navMobile.addClass('hidden');
     	$revealMobile.removeClass('hidden fadeOutLeft');
     	$revealMobile.addClass('fadeInLeft');
		}, 250);
	})

});