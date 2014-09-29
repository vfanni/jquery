<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="shortcut icon"
	href="<c:url value="/resources/JQuery_icon.png"/>" />
<title>jQuery tutorial site</title>
<link rel="stylesheet" href="<c:url value="/resources/css/reset.css" />">
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/home.js" />"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/home.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/ui.css" />">
</head>
<body>
	<div id="header"><%@include file="/WEB-INF/views/header.jsp"%></div>
	<div id="main">
		<div class="sub-menu">
			<ul>
				<li class="submenuitem theming"><a href="#1">Theming
						jQuery UI</a></li>
			</ul>
		</div>

		<div class="content">
			<div id="theming" class="sub-content active">
				<object data="http://jqueryui.com/themeroller/" title="ThemeRoller" ></object>
			</div>
		</div>
	</div>
	<div id="footer">@2014 EPAM</div>
</body>
</html>
