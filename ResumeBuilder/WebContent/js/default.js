$(function()
{
	jQuery.fn.center = function()
	{
		var wHeight = document.body.clientHeight;
		var cHeight = $('.popup_box').outerHeight();
		
		/*$('#login').css("position", "fixed");
		$('#login').css("z-index", "99999");
		$('#login').css("top", (wHeight - cHeight) / 2);
		$('#login').css("left", ($(window).width() / 2) - (this.outerWidth() / 2));*/
		return this;
	};
});

$(window).load(function()
{
	$('#login').center();
});