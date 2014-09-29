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
	href="<c:url value="/resources/css/events.css" />">
</head>
<body>
	<div id="header"><%@include file="/WEB-INF/views/header.jsp"%></div>
	<div id="main">
		<div class="sub-menu">
			<ul>
				<li class="submenuitem event-basic"><a href="#1">jQuery
						Event Basics</a></li>
				<li class="submenuitem events-list"><a href="#2">List of
						events</a></li>
				<li class="submenuitem handling"><a href="#3">Handling
						Events</a></li>
				<li class="submenuitem delegation"><a href="#4">Event
						Delegation</a></li>
			</ul>
		</div>


		<div class="content">
			<div id="event-basic" class="sub-content active">
				<h2>jQuery Event Basics</h2>
				<p>jQuery offers convenience methods for most native browser
					events. These methods are shorthand for jQuery's .on() method. The
					on method is useful for binding the same handler function to
					multiple events, when you want to provide data to the event
					handler, when you are working with custom events, or when you want
					to pass an object of multiple events and handlers.</p>

				<p>Every event handling function receives an event object, which
					contains many properties and methods, including:</p>
				<h3>pageX, pageY</h3>
				<p>The mouse position at the time the event occurred, relative
					to the top left corner of the page display area (not the entire
					browser window).</p>
				<h3>type</h3>
				<p>The type of the event (e.g. "click").</p>
				<h3>which</h3>
				<p>The button or key that was pressed.</p>
				<h3>data</h3>
				<p>Any data that was passed in when the event was bound.</p>
				<h3>link timeStamp</h3>
				<p>The difference in milliseconds between the time the event
					occurred in the browser and January 1, 1970.</p>
				<h3>preventDefault()</h3>
				<p>Prevent the default action of the event (e.g. following a
					link).</p>
				<h2>Setting up events to run only once</h2>
				<div class="javascript">
					<pre>
	$( "p" ).one( "click", firstClick );
 
	function firstClick() {
	    console.log( "You just clicked this for the first time!" );
	    $( this ).click( function() { console.log( "You have clicked this before!" ); } );
	}
	</pre>
				</div>
				<p>
					<a href="http://jsbin.com/sesoco/1/edit?html,js,output" target="_blank">Example</a>
				</p>
				<p>Note that in the code snippet above, the firstClick function
					will be executed for the first click on each paragraph element
					rather than the function being removed from all paragraphs when any
					paragraph is clicked for the first time.</p>
				<p>.one() can also be used to bind multiple events:</p>
				<div class="javascript">
					<pre>
	$( "input[id]" ).one( "focus mouseover keydown", firstEvent);
 
	function firstEvent( event ) {
	    console.log( "A " + event.type + " event occurred for the first time on the input with id " + this.id );
	}
	</pre>
				</div>
				<p>
					<a href="http://jsbin.com/tituzu/1/edit?html,js,output" target="blank">Example</a>
				</p>
				<p>In this case, the firstEvent function will be executed once
					for each event. For the snippet above, this means that once an
					input element gains focus, the handler function will still execute
					for the first keydown event on that element.</p>

			</div>
			<div id="events-list" class="sub-content" style="margin-left: 50px">
				<h2>List of events</h2>
				<h3>Mouse Events</h3>
				<div id="event-list-container">
					<ul>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'click' JavaScript
									event, or trigger that event on an element.</span>.click()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'dblclick' JavaScript
									event, or trigger that event on an element.</span>.dblclick()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'focusout' JavaScript
									event.</span>.focusout()
							</p></li>
						<li><p class="hoverList">
								<span>Bind one or two handlers to the matched elements,
									to be executed when the mouse pointer enters and leaves the
									elements.</span>.hover()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'mousedown' JavaScript
									event, or trigger that event on an element.</span>.mousedown()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to be fired when the mouse
									enters an element, or trigger that handler on an element.</span>.mouseenter()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to be fired when the mouse
									leaves an element, or trigger that handler on an element.</span>.mouseleave()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'mousemove' JavaScript
									event, or trigger that event on an element.</span>.mousemove()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'mouseout' JavaScript
									event, or trigger that event on an element.</span>.mouseout()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'mouseover' JavaScript
									event, or trigger that event on an element.</span>.mouseover()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'mouseup' JavaScript
									event, or trigger that event on an element.</span>.mouseup()
							</p></li>
					</ul>
					<h3>Form Events</h3>
					<ul>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'blur' JavaScript
									event, or trigger that event on an element.</span>.blur()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'change' JavaScript
									event, or trigger that event on an element.</span>.change()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'focus' JavaScript
									event, or trigger that event on an element.</span>.focus()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'focusin' event.</span>.focusin()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'select' JavaScript
									event, or trigger that event on an element.</span>.select()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'submit' JavaScript
									event, or trigger that event on an element.</span>.submit()
							</p></li>
					</ul>
					<h3>Keyboard Events</h3>
					<ul>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'focusout' JavaScript
									event.</span>.focusout()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'keydown' JavaScript
									event, or trigger that event on an element.</span>.keydown()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'keypress' JavaScript
									event, or trigger that event on an element.</span>.keypress()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'keyup' JavaScript
									event, or trigger that event on an element.</span>.keyup()
							</p></li>
					</ul>
					<h3>Browser Events</h3>
					<ul>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'error' JavaScript
									event.</span>.error()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'resize' JavaScript
									event, or trigger that event on an element.</span>.resize()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'scroll' JavaScript
									event, or trigger that event on an element.</span>.scroll()
							</p></li>
					</ul>
					<h3>Document Loading</h3>
					<ul>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'load' JavaScript
									event.</span>.load()
							</p></li>
						<li><p class="hoverList">
								<span>Specify a function to execute when the DOM is fully
									loaded.</span>.ready()
							</p></li>
						<li><p class="hoverList">
								<span>Bind an event handler to the 'unload' JavaScript
									event.</span>.unload()
							</p></li>
					</ul>
				</div>
			</div>
			<div id="handling" class="sub-content">
				<h3>Simple event handling</h3>
				<div class="javascript">
					<pre>
	$( "p" ).click(function() {
    	console.log( "You clicked a paragraph!" );
	});
	</pre>
				</div>
				<h3>Simple event binding</h3>
				<div class="javascript">
					<pre>
	$( "p" ).on( "click", function() {
    	console.log( "You clicked somewhere inside the paragraph!" );
	});
	</pre>
				</div>
				<h3>Binding events to elements that don't exist yet</h3>
				<div class="javascript">
					<pre>
	$( "p" ).on( "click","a", function() {
    	console.log( "You clicked a link inside the paragraph!" );
	});
	</pre>
				</div>
				<div class="javascript">
					<pre>
	$( "div" ).on({
	    mouseenter: function() {
	        console.log( "hovered over a div" );
	    },
	    mouseleave: function() {
	        console.log( "mouse left a div" );
	    },
	    click: function() {
	        console.log( "clicked on a div" );
	    }
	});
	</pre>
				</div>
				<h3>Disconnecting events</h3>
				<div class="javascript">
					<pre>
	var foo = function() {
	    console.log( "foo" );
	};
	 
	var bar = function() {
	    console.log( "bar" );
	};
	 
	$( "p" ).on( "click", foo ).on( "click", bar );
	
	$( "p" ).off( "click", bar );
	</pre>
				</div>
			</div>
			<div id="delegation" class="sub-content">
				<p>Event delegation allows us to attach a single event listener,
					to a parent element, that will fire for all descendants matching a
					selector, whether those descendants exist now or are added in the
					future.</p>
				<div class="javascript">
					<pre>
	$( "#list a" ).on( "click", function( event ) {
	    event.preventDefault();
	    console.log( $( this ).text() );
	});
					</pre>
				</div>
				<div class="javascript">
					<pre>
	$( "#list" ).on( "click", "a", function( event ) {
	    event.preventDefault();
	    console.log( $( this ).text() );
	});
					</pre>
				</div>
				<p><a href="http://jsbin.com/gahuyu/1/edit?html,js,console,output" target="_blank">Example</a></p>
			</div>
		</div>
	</div>
	<div id="footer">@2014 EPAM</div>
</body>
</html>