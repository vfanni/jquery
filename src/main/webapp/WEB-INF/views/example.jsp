<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Example</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
	
</head>
<body>
	<h1>This text will appear before $(document).ready ran, but the background image not loaded! </h1></h1>
	<img src="<c:url value="/resources/fight.jpg"/>" style="width: 100%">
	<script>
		window.onload = function() {
			alert("Welcome (onload)!");
		}
		$(document).ready(function() {
			alert("Welcome (ready)!");
		});
	</script>
</body>
</html>