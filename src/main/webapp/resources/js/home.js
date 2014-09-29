//$(document).ready(function() {
//	$("#main").on("click", ".submenuitem", function() {
//		$(".content").load("/jquery/sub/" + this.id);
//		$("#sub-menu .submenuitem.active").removeClass("active");
//		$(this).addClass("active");
//	});
//});
//$(document).ready(function() {
//	$("#main-menu ul").on("click", ".mainmenuitem", function() {
//		$("#main").load("/jquery/" + this.id, function( response, status, xhr ) {
//			  if ( status != "error" ) {
//				  $(".content").load("/jquery/sub/" + $(".submenuitem.active:first").attr("id"));
//			  }
//		});
//		$("#main-menu .mainmenuitem.current").removeClass("current");
//		$(this).addClass("current");
//	});
//});
//$(document).ready(function() {
//	if ($("#main").children().length === 0) {
//		$("#main").load("/jquery/"+ $(".mainmenuitem.current:first").attr("id"), function(response,status,xhr){
//			if ( status != "error" ) {
//			$(".content").load("/jquery/sub/" + $(".submenuitem.active:first").attr("id"));
//			}
//		});
//	};
//
//});
//
//$(document).ready(function(){
//	$("#header").load("header #header > *");
//});

$(document).ready(function(){
	$("body").on("click",".submenuitem",function(){
		var index = $(this).attr("class").split(" ");
		$(".active").removeClass("active");
		$("#"+index[1]).addClass("active");
//		var height = $(this).height();
//		$("#main").height($(this).height());
	});
});
