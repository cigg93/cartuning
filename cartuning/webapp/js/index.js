$(document).ready(function(){
	
	$('.menu-title').mouseover(function() {
		var submenu = $(this).children(".submenu");
		submenu.css({"width":"650px"});;
		submenu.children("li").css("width","32%");
		var display = submenu.css("display")
		if (display == 'none') {
			$(".submenu").css("display", "none");
			submenu.fadeIn(500);
		}
	});
	$('.menu-title').mouseleave(function() {
		$(".submenu").css("display", "none");
	});
	$(".nav-tabs [data-toggle='tab']").click(function() {
		$('.nav-tabs').children('li').removeClass('active');
		$(this).parent('li').addClass('active');
		var name = $(this).attr('data-href');
		console.log(name);
		$('.tab-pane').removeClass('active');
		$('#' + name).addClass('active');
	});
	$(".search-block").mouseover(function() {
		var child = $(".sub-search").css("display");
		if (child == 'none') {
			$(".sub-search").fadeIn(500);
		}
	});
	$(".search-block").mouseleave(function() {
		$(".sub-search").css("display", "none");
	});
	$(".icon-footer").mouseover(function() {
		$(".icon-qrcode").css("display", "none");
		$(this).parent(".qrcode").children(".icon-qrcode").fadeIn(500);
	});
	$(".icon-footer").mouseleave(function() {
		$(".icon-qrcode").css("display", "none");
	});
	$(".accordion-btn").click(function() {
		var display = $(this).parent().parent(".accordion").children(".accordion-detail").css('display');
		$(".accordion-detail").slideUp(300);
		$('.accordion').children('.head').removeClass('active');
		if (display == 'none') {
			$(this).parent('.head').addClass('active');
			$(this).parent().parent(".accordion").children(".accordion-detail").slideDown(500);
		}
	});
});
