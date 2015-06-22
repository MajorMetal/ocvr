$(window).scroll(function () {
	var scrollTop = $(window).scrollTop();

	$('[data-scroll-speed]').each(function(){
		var $this = $(this),
		scrollSpeed = parseInt($this.data('scroll-speed')),
		val = scrollTop / scrollSpeed;
		$this.css('transform', 'translateY(' + val + 'px)');
  });
});
