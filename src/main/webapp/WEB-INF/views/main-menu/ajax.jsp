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
<link rel="stylesheet" href="<c:url value="/resources/css/ajax.css" />">
<script type="text/javascript"
	src="<c:url value="/resources/js/ajax.js" />"></script>
</head>
<body>
	<div id="header"><%@include file="/WEB-INF/views/header.jsp"%></div>
	<div id="main">
		<div class="sub-menu">
			<ul>
				<li class="submenuitem methods"><a href="#">Ajax-Related
						Methods</a></li>
				<li class="submenuitem ajax-from"><a href="#">Ajax
						and Forms</a></li>
				<li class="submenuitem ajax-event"><a href="#">Ajax
						Events</a></li>
			</ul>
		</div>

		<div class="content">
			<div id="methods" class="sub-content active">
				<h3>$.ajax()</h3>
				<p>jQuery's core $.ajax() method is a powerful and straightforward way of creating Ajax requests. It takes a configuration object that contains all the instructions jQuery requires to complete the request. The $.ajax() method is particularly valuable because it offers the ability to specify both success and failure callbacks.</p>
				<div class="javascript">
				<pre>
	$.ajax({
		url: "/jquery/ajax",
		data: {
			id: 234
		},
		type: "GET",
		dataType: "json",
		async: false,
		timeout: 1000,
		success: function(json) {
			$("#results").append(json.html);
		},
		error: function(xhr, status, errorThrown) {
			alert("Sorry, there was a problem!");
			console.log( "Error: " + errorThrown );
	        console.log( "Status: " + status );
	        console.dir( xhr );
	    },
	    complete: function(xhr, status) {
	    	alert("The request is complete!");
	    }
	});</pre>
				</div>
				<p>Options</p>
				<ul>
					<li><p class="hoverList">async<span>Set to false if the request should be sent synchronously. Defaults to true. Note that if you set this option to false, your request will block execution of other code until the response is received.</span></p></li>
					<li><p class="hoverList">data<span>The data to be sent to the server. This can either be an object or a query string, such as ?foo=bar.</span></p></li>
					<li><p class="hoverList">dataType<span>The type of data you expect back from the server. By default, jQuery will look at the MIME type of the response if no dataType is specified.</span></p></li>
					<li><p class="hoverList">timeout<span>The time in milliseconds to wait before considering the request a failure.</span></p></li>
					<li><p class="hoverList">type<span>The type of the request, "POST" or "GET". Defaults to "GET". Other request types, such as "PUT" and "DELETE" can be used, but they may not be supported by all browsers.</span></p></li>
					<li><p class="hoverList">url<span>The URL for the request. (Required property)</span></p></li>
				</ul>
				<p><a href="http://jsbin.com/gemeco/1/edit?html,js,output" target="_blank">Example</a></p>
				<h3>Convenience methods</h3>
				<ul>
					<li><p class="hoverList">$.get()<span>Perform a GET request to the provided URL.</span></p></li>
					<li><p class="hoverList">$.post()<span>Perform a POST request to the provided URL.</span></p></li>
					<li><p class="hoverList">$.getScript()<span>Add a script to the page.</span></p></li>
					<li><p class="hoverList">$.getJSON()<span>Perform a GET request, and expect JSON to be returned.</span></p></li>
				</ul>
				<h3>.load()</h3>
				<p>The .load() method is unique among jQuery's Ajax methods in that it is called on a selection. The .load() method fetches HTML from a URL, and uses the returned HTML to populate the selected element(s). In addition to providing a URL to the method, you can optionally provide a selector; jQuery will fetch only the matching content from the returned HTML.</p>
				<div class="javascript">
				<pre>
	$("#content").load("http://jquery.com", function(html){
		alert("content updated");
	});
				</pre>
				</div>
				<p>
			</div>
			<div id="ajax-from" class="sub-content">
				<h3>Serialization</h3>
				<p> Two methods come supported natively: .serialize() and .serializeArray(). While the names are fairly self-explanatory, there are many advantages to using them.</p>
				<p>The .serialize() method serializes a form's data into a query string. For the element's value to be serialized, it must have a name attribute. Please note that values from inputs with a type of checkbox or radio are included only if they are checked.</p>
				<div class="javascript">
				<pre>
	$( "#myForm" ).serialize();
				</pre>
				</div>
				<p>While plain old serialization is great, sometimes your application would work better if you sent over an array of objects, instead of just the query string. For that, jQuery has the .serializeArray() method. It's very similar to the .serialize() method listed above, except it produces an array of objects, instead of a string.</p>
								<div class="javascript">
				<pre>
	$( "#myForm" ).serializeArray();
				</pre>
				</div>
				<p><a href="http://jsbin.com/wotok/1/edit?html,js,console,output" target="_blank">Example</a></p>
				<h3>Client-side validation</h3>
				<p>While there are several cases developers can test for, some of the most common ones are: presence of a required input, valid usernames/emails/phone numbers/etc..., or checking an "I agree..." box.</p>
				<div class="javascript">
				<pre>
	$("form").submit(function(event){
		if($(".required").val().length === 0){
			return false;
		} else {
			console.log("validation okay");
			//$.ajax here
		}
	});
				</pre>
				</div>
				<p><a href="http://jsbin.com/roqiya/1/edit?html,js,console,output" target="_blank">Example</a></p>
				<h3>Prefiltering</h3>
				<p>A prefilter is a way to modify the ajax options before each request is sent.</p>
				<div class="javascript">
				<pre>
	$.ajaxPrefilter(function( options, originalOptions, jqXHR ) {
	    if ( options.crossDomain ) {
	        options.url = "http://mydomain.net/proxy/" + encodeURIComponent( options.url );
	        options.crossDomain = false;
	    }
	});
				</pre>
				</div>
			</div>
			<div id="ajax-event" class="sub-content">
				<p>Often, you'll want to perform an operation whenever an Ajax requests starts or stops, such as showing or hiding a loading indicator. Rather than defining this behavior inside every Ajax request, you can bind Ajax events to elements just like you'd bind other events.</p>
				<div class="javascript">
				<pre>
	$( "#loading_indicator" ).ajaxStart(function() {
	    $( this ).show();
	}).ajaxStop(function() {
	    $( this ).hide();
	});
				</pre>
				</div>
			<h3>Global ajax event handlers</h3>
			<ul>
				<li><p class="hoverList">.ajaxComplete()<span>Register a handler to be called when Ajax requests complete. This is an AjaxEvent.</span></p></li>
				<li><p class="hoverList">.ajaxError()<span>Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.</span></p></li>
				<li><p class="hoverList">.ajaxSend()<span>Attach a function to be executed before an Ajax request is sent. This is an Ajax Event.</span></p></li>
				<li><p class="hoverList">.ajaxStart()<span>Register a handler to be called when the first Ajax request begins. This is an Ajax Event.</span></p></li>
				<li><p class="hoverList">.ajaxStop()<span>Register a handler to be called when all Ajax requests have completed. This is an Ajax Event.</span></p></li>
				<li><p class="hoverList">.ajaxSuccess()<span>Attach a function to be executed whenever an Ajax request completes successfully. This is an Ajax Event.</span></p></li>
			</ul>
			</div>
		</div>
	</div>
	<div id="footer">@2014 EPAM</div>
</body>
</html>