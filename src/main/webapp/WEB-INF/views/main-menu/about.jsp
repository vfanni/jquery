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
<link rel="stylesheet" href="<c:url value="/resources/css/about.css" />">
</head>
<body>
	<div id="header"><%@include file="/WEB-INF/views/header.jsp"%></div>
	<div id="main">
		<div class="sub-menu">
			<ul>
				<li class="submenuitem what"><a href="#1">What is jQuery?</a></li>
				<li class="submenuitem history"><a href="#2">History</a></li>
				<li class="submenuitem license"><a href="#3">License</a></li>
			</ul>
		</div>
		<div class="content">
			<div id="what" class="sub-content active">
				<h3>What is jQuery?</h3>
				<p>jQuery is a fast, small, and feature-rich JavaScript library.
					It makes things like HTML document traversal and manipulation,
					event handling, animation, and Ajax much simpler with an
					easy-to-use API that works across a multitude of browsers. With a
					combination of versatility and extensibility, jQuery has changed
					the way that millions of people write JavaScript.</p>

			</div>
			<div id="history" class="sub-content">
				<h3>History</h3>
				<p>
					jQuery was originally released in January 2006 at BarCamp NYC by
					John Resig and was influenced by Dean Edwards' earlier cssQuery
					library. It is currently maintained by a team of developers led by
					Dave Methvin. Click <a href="https://jquery.org/history/"
						target="_blank" title="History">here</a> to read more.</p>
				<table class="jqueryHistory">
					<thead>
						<tr>
							<th title="Sort ascending">Version</th>
							<th title="Sort ascending">Release</th>
							<th title="Sort ascending">Latest update</th>
							<th title="Sort ascending">Additional notes</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1.0</td>
							<td nowrap="nowrap">2006-08-26</td>
							<td></td>
							<td>First stable release</td>
						</tr>
						<tr>
							<td>1.3</td>
							<td>2009-01-14</td>
							<td></td>
							<td>Sizzle Selector Engine introduced into core</td>
						</tr>
						<tr>
							<td>1.5</td>
							<td>2011-01-31</td>
							<td></td>
							<td>Deferred callback management, ajax module rewrite</td>
						</tr>
						<tr>
							<td>1.6</td>
							<td>2011-05-03</td>
							<td></td>
							<td>Significant performance improvements to the attr() and
								val() functions</td>
						</tr>
						<tr>
							<td>1.7</td>
							<td>2011-11-03</td>
							<td></td>
							<td>New Event APIs: .on() and .off(), while the old APIs are
								still supported.</td>
						</tr>
						<tr>
							<td>1.8</td>
							<td>2012-08-09</td>
							<td></td>
							<td>Sizzle Selector Engine rewritten, improved animations
								and $(html, props) flexibility.</td>
						</tr>
						<tr>
							<td>1.9</td>
							<td>2013-01-15</td>
							<td>1.9.1 <br>2013-02-04</td>
							<td>Removal of deprecated interfaces and code cleanup</td>
						</tr>
						<tr>
							<td>1.10</td>
							<td>2013-05-24</td>
							<td>1.10.2 <br>2013-07-03</td>
							<td>Incorporated bug fixes and differences reported from
								both the 1.9 and 2.0 beta cycles</td>
						</tr>
						<tr>
							<td>2.0</td>
							<td>2013-04-18</td>
							<td>2.0.3 <br>2013-07-03</td>
							<td>Dropped IE 6-8 support for performance improvements and
								reduction in filesize</td>
						</tr>
					</tbody>
					<tfoot></tfoot>
				</table>
			</div>
			<div id="license" class="sub-content">
				<object data="https://jquery.org/license/" title="License"></object>
			</div>
		</div>
	</div>
	<div id="footer">@2014 EPAM</div>
</body>
</html>