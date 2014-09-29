
$("#content").ready(function(){
	var arrayOfElement = $("#elementsList");
	$("#elementsList").each(function(){
		$(this).append(" index: " + $.inArray("#" + this.id, arrayOfElement));
	})
	
})
		