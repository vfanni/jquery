$(document).ready(function(){
	$("body").on("click",".submenuitem",function(){
		var index = $(this).attr("class").split(" ");
		$(".active").removeClass("active");
		$("#"+index[1]).addClass("active");
	});
});
$(document).ready(function(){
	var submenu = window.location.href.toString().split("/")[4].split("#")[1];
	if(submenu === undefined){
		submenu = 1;
	}
	var index = $(".sub-menu ul li:nth-child(" + submenu + ")").attr("class").split(" ");
	$(".active").removeClass("active");
	$("#" + index[1]).addClass("active");
	
});