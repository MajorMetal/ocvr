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
	var $nav = $('#nav_list');
	var $reveal = $('#nav_reveal_cont');

	// Scroll Manipulations
	$(window).scroll(function () {
		// Class Manipulation for the logo animations.
		// Scroll Down
		if ($(this).scrollTop() < 285 && $logo.hasClass('invisible') == false) {
			$logo.addClass('fadeOutUp');
			$logo.removeClass('fadeInDown');
			setTimeout(function() {
      		$logo.addClass('invisible');
			}, 500);
		}
		// Scroll Up
		if ($(this).scrollTop() > 285) {
			$logo.removeClass('invisible fadeOutUp');
			$logo.addClass('fadeInDown');
		}

		// Class Manipulation for navbar animations
		// Scroll Down
		console.log($(this).scrollTop());
		if ($(this).scrollTop() < 440 && $reveal.hasClass('hidden') == false) {
			revealNav();
		}
		// Scroll Up
		if ($(this).scrollTop() > 440 && $nav.hasClass('hidden') == false) {
			$reveal.removeClass('hidden fadeOutUp');
    	$reveal.addClass('fadeInDown');
			$nav.addClass('fadeOutUp');
			$nav.removeClass('fadeInDown');
			setTimeout(function() {
    		$nav.addClass('hidden');
			}, 250);
		}
	});

	// Wrapped this section in a function because it's called again on click of the 'reveal_nav' button
	function revealNav() {
		$nav.removeClass('hidden fadeOutUp');
		$nav.addClass('fadeInDown');
		$reveal.addClass('fadeOutUp');
		$reveal.removeClass('fadeInDown');
		setTimeout(function() {
     	$reveal.addClass('hidden');
		}, 250);
	}

	// Reveals the NavBar again when scrolled down on the page
	$('#nav_reveal').click(function() {
		revealNav();
	});

	// NavBar button hover effects. Didn't put them on the CSS because needed to grab the parent and
	// child node of the hovered element.
	$('.nav_btn_body').mouseenter(function() {
		$(this).css('background-color', '#FFF');
		$($(this).children()[0]).css('color', '#511616');
		$($(this).children()[0]).css('font-weight', 700);
		$($(this).parent()[0]).css('border', '1px solid #FFF');
	});
	
	$('.nav_btn_body').mouseleave(function() {
		$(this).css('background-color', '#FF8933');
		$($(this).children()[0]).css('color', '#FFF');
		$($(this).children()[0]).css('font-weight', 400);
		$($(this).parent()[0]).css('border', '1px solid #FF8933');
	});

});