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
<link rel="stylesheet"
	href="<c:url value="/resources/css/effects.css" />">
</head>
<body>
	<div id="header"><%@include file="/WEB-INF/views/header.jsp"%></div>
	<div id="main">
		<div class="sub-menu">
			<ul>
				<li class="submenuitem effects-list"><a href="#1">List of
						effects</a></li>
				<li class="submenuitem custom"><a href="#2">Custom Events</a></li>
				<li class="submenuitem queue-dequeue"><a href="#3">Queue and
						Dequeue Explained</a></li>
			</ul>
		</div>

		<div class="content">
			<div id="effects-list" class="sub-content active" style="margin-left:50px">
				<h3>Basic effects</h3>
				<p>
				<ul class="hoverList">
					<li><p class="hoverList">
							.hide()<span>Hide the matched elements.</span>
						</p></li>
					<li><p class="hoverList">
							.show()<span>Display the matched elements.</span>
						</p></li>
					<li><p class="hoverList">
							.toggle()<span>Display or hide the matched elements.</span>
						</p></li>
				</ul>
				<h3>Custom effects</h3>
				<p>
				<ul class="hoverList">
					<li><p class="hoverList">
							.animate()<span>Perform a custom animation of a set of CSS
								properties.</span>
						</p></li>
					<li><p class="hoverList">
							.clearQueue()<span>Remove from the queue all items that
								have not yet been run.</span>
						</p></li>
					<li><p class="hoverList">
							.delay()<span>Set a timer to delay execution of subsequent
								items in the queue.</span>
						</p></li>
					<li><p class="hoverList">
							.dequeue()<span>Execute the next function on the queue for
								the matched elements.</span>
						</p></li>
					<li><p class="hoverList">
							.finish()<span>Stop the currently-running animation,
								remove all queued animations, and complete all animations for
								the matched elements.</span>
						</p></li>
					<li><p class="hoverList">
							.queue()<span>Show or manipulate the queue of functions to
								be executed on the matched elements.</span>
						</p></li>
					<li><p class="hoverList">
							.stop()<span>Stop the currently-running animation on the
								matched elements.</span>
						</p></li>
				</ul>
				<h3>Fading effects</h3>
				<ul class="hoverList">
					<li><p class="hoverList">
							.fadeIn()<span>Display the matched elements by fading them
								to opaque.</span>
						</p></li>
					<li><p class="hoverList">
							.fadeOut()<span>Hide the matched elements by fading them
								to transparent.</span>
						</p></li>
					<li><p class="hoverList">
							.fadeTo()<span>Adjust the opacity of the matched elements.</span>
						</p></li>
					<li><p class="hoverList">
							.fadeToggle()<span>Display or hide the matched elements by
								animating their opacity.</span>
						</p></li>
				</ul>
				<h3>Sliding effects</h3>
				<ul class="hoverList">
					<li><p class="hoverList">
							.slideDown()<span>Display the matched elements with a
								sliding motion.</span>
						</p></li>
					<li><p class="hoverList">
							.slideToggle()<span>Display or hide the matched elements
								with a sliding motion.</span>
						</p></li>
					<li><p class="hoverList">
							.slideUp()<span>Hide the matched elements with a sliding
								motion.</span>
						</p></li>
				</ul>
			</div>
			<div id="custom" class="sub-content">
				<p>jQuery makes it possible to animate arbitrary CSS properties
					via the .animate() method. The .animate() method lets you animate
					to a set value, or to a value relative to the current value.</p>
				<div class="javascript">
					<pre>
	$("div").animate({
			left: ["+=50", "swing"],
			opacity: 0.25
		},
		300, //duration
		function(){  //after animation
			console.log("done");
		}
	);
					</pre>
				</div>
				<p>
					<a href="http://jsbin.com/gosuma/1/edit?html,js,console,output" target="_blank">Example</a>
				</p>
			</div>
			<div id="queue-dequeue" class="sub-content">
				<p>When you use the animate, and show, hide, slideUp, etc.
					effect methods, you're adding a job to the effects queue. By
					default, using queue() and passing a function, will add it to the
					effects queue. So we're creating our own bespoke animation step:</p>
				<div class="javascript">
					<pre>
	$( "div" ).animate({
	    height: 20
	}, "slow" ).queue(function() {
	    $( "#title" ).html( "We're in the animation, baby!" );
	});
				</pre>
				</div>
				<p>Anything you add using queue(), you need to dequeue to allow
					the process to continue. In the code above, if I chained more
					animations on, until I call $( this ).dequeue(), the subsequent
					animations wouldn't run:</p>
				<div class="javascript">
					<pre>
	$( "div" ).animate({
	    height: 20
	}, "slow" ).queue(function() {
	    $( "#title" ).html( "We're in the animation, baby!" );
	    $( this ).dequeue();
	}).animate({
	    height: 150
	});
				</pre>
				</div>
				<p>Keeping in mind that the animation won't continue until we've
					explicitly called dequeue(), we can easily create a pausing plugin,
					by adding a step in the queue that sets a timer and triggers after
					n milliseconds, at which time, it dequeues the element:</p>
				<div class="javascript">
					<pre>
	$.fn.pause = function( n ) {
	    return this.queue(function() {
	        var el = this;
	        setTimeout(function() {
	            return $( el ).dequeue();
	        }, n );
	    });
	};
	 
	$( "div" ).animate({
	    height: 20
	}, "slow" ).pause( 1000 ).animate({
	    height: 150
	});
				</pre>
				</div>
				<p>
					<a href="http://jsbin.com/dunoze/1/edit?html,js,output" target="_blank">Example</a>
				</p>
			</div>

		</div>
	</div>
	<div id="footer">@2014 EPAM</div>
</body>
</html>