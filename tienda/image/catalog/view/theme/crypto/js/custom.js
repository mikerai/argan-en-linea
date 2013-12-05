
		
			jQuery(document).ready(function($){

	/* prepend menu icon */
	$('#menu-mobile').prepend('<div id="menu-mobile-icon">Menu<img src="catalog/view/theme/crypto/image/nav-icon.png"/></div>');
	
	/* toggle nav */
	$("#menu-mobile-icon").on("click", function(){
		$("#menu-mobile-nav").slideToggle();
		$(this).toggleClass("active");
	});

});
		
                
(function(TVB){
TVB(document).ready(function(){
var $dur = "medium"; // Duration of Animation
TVB("#Facebookplikebox").css({right: -251, "top" : 230 })
TVB("#Facebookplikebox").hover(function () {
TVB(this).stop().animate({
right: 0
}, $dur);
}, function () {
TVB(this).stop().animate({
right: -251
}, $dur);
});
TVB("#Facebookplikebox").show();
});
})(jQuery);
(function(TVC){
TVC(document).ready(function(){
var $dur = "medium"; // Duration of Animation
TVC("#twiiterbox").css({right: -251, "top" : 290 })
TVC("#twiiterbox").hover(function () {
TVC(this).stop().animate({
right: 0
}, $dur);
}, function () {
TVC(this).stop().animate({
right: -251
}, $dur);
});
TVC("#twiiterbox").show();
});
})(jQuery);
(function(TVR){
TVR(document).ready(function(){
var $dur = "medium"; // Duration of Animation
TVR("#contactbox").css({right: -251, "top" : 350 })
TVR("#contactbox").hover(function () {
TVR(this).stop().animate({
right: 0
}, $dur);
}, function () {
TVR(this).stop().animate({
right: -251
}, $dur);
});
TVR("#contactbox").show();
});
})(jQuery);
(function(TVW){
TVW(document).ready(function(){
var $dur = "medium"; // Duration of Animation
TVW("#youtubebox").css({left:-421, "top" : 230 })
TVW("#youtubebox").hover(function () {
TVW(this).stop().animate({
left: 0
}, $dur);
}, function () {
TVW(this).stop().animate({
left: -421
}, $dur);
});
TVW("#youtubebox").show();
});
})(jQuery);
(function(TVA){
TVA(document).ready(function(){
var $dur = "medium"; // Duration of Animation
TVA("#custombox").css({left:-251, "top" : 316 })
TVA("#custombox").hover(function () {
TVA(this).stop().animate({
left: 0
}, $dur);
}, function () {
TVA(this).stop().animate({
left: -251
}, $dur);
});
TVA("#custombox").show();
});
})(jQuery);