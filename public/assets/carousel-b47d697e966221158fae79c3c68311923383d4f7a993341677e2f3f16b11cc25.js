$(document).ready(function(){function a(){n=document.body.clientWidth,s.style.height=n/3+"px",n?(t.$ScaleHeight(Math.min(n/3,640)),t.$ScaleWidth(Math.min(n,1920))):window.setTimeout(a,30)}var i=[];i.L={$Duration:900,x:.6,$Easing:{$Left:$JssorEasing$.$EaseInOutSine},$Opacity:2},i.R={$Duration:900,x:-.6,$Easing:{$Left:$JssorEasing$.$EaseInOutSine},$Opacity:2},i.T={$Duration:900,y:.6,$Easing:{$Top:$JssorEasing$.$EaseInOutSine},$Opacity:2},i.B={$Duration:900,y:-.6,$Easing:{$Top:$JssorEasing$.$EaseInOutSine},$Opacity:2},i["ZMF|10"]={$Duration:900,$Zoom:11,$Easing:{$Zoom:$JssorEasing$.$EaseOutQuad,$Opacity:$JssorEasing$.$EaseLinear},$Opacity:2},i["RTT|10"]={$Duration:900,$Zoom:11,$Rotate:1,$Easing:{$Zoom:$JssorEasing$.$EaseOutQuad,$Opacity:$JssorEasing$.$EaseLinear,$Rotate:$JssorEasing$.$EaseInExpo},$Opacity:2,$Round:{$Rotate:.8}},i["RTT|2"]={$Duration:900,$Zoom:3,$Rotate:1,$Easing:{$Zoom:$JssorEasing$.$EaseInQuad,$Opacity:$JssorEasing$.$EaseLinear,$Rotate:$JssorEasing$.$EaseInQuad},$Opacity:2,$Round:{$Rotate:.5}},i["RTTL|BR"]={$Duration:900,x:-.6,y:-.6,$Zoom:11,$Rotate:1,$Easing:{$Left:$JssorEasing$.$EaseInCubic,$Top:$JssorEasing$.$EaseInCubic,$Zoom:$JssorEasing$.$EaseInCubic,$Opacity:$JssorEasing$.$EaseLinear,$Rotate:$JssorEasing$.$EaseInCubic},$Opacity:2,$Round:{$Rotate:.8}},i["CLIP|LR"]={$Duration:900,$Clip:15,$Easing:{$Clip:$JssorEasing$.$EaseInOutCubic},$Opacity:2},i["MCLIP|L"]={$Duration:900,$Clip:1,$Move:!0,$Easing:{$Clip:$JssorEasing$.$EaseInOutCubic}},i["MCLIP|R"]={$Duration:900,$Clip:2,$Move:!0,$Easing:{$Clip:$JssorEasing$.$EaseInOutCubic}};var s=document.getElementById("header"),n=document.body.clientWidth;s.style.height=n/3+"px";var o={$FillMode:2,$AutoPlay:!0,$AutoPlayInterval:4e3,$PauseOnHover:1,$ArrowKeyNavigation:!0,$SlideEasing:$JssorEasing$.$EaseOutQuint,$SlideDuration:800,$MinDragOffsetToSlide:20,$SlideWidth:n,$SlideHeight:n/3,$SlideSpacing:0,$DisplayPieces:1,$ParkingPosition:0,$UISearchMode:1,$PlayOrientation:1,$DragOrientation:1,$CaptionSliderOptions:{$Class:$JssorCaptionSlider$,$CaptionTransitions:i,$PlayInMode:1,$PlayOutMode:3},$BulletNavigatorOptions:{$Class:$JssorBulletNavigator$,$ChanceToShow:2,$AutoCenter:1,$Steps:1,$Lanes:1,$SpacingX:8,$SpacingY:8,$Orientation:1},$ArrowNavigatorOptions:{$Class:$JssorArrowNavigator$,$ChanceToShow:1,$AutoCenter:2,$Steps:1}},t=new $JssorSlider$("slider1_container",o);a(),$(window).bind("load",a),$(window).bind("resize",a),$(window).bind("orientationchange",a)});