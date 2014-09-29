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
<link rel="stylesheet" href="<c:url value="/resources/css/core.css" />">
</head>
<body>
	<div id="header"><%@include file="/WEB-INF/views/header.jsp"%></div>
	<div id="main">
		<div class="sub-menu">
			<ul>
				<li class="submenuitem onload-ready"><a href="#1">Onload vs
						Ready</a></li>
				<li class="submenuitem object-utility"><a href="#2">$ vs $()</a></li>
				<li class="submenuitem conflict"><a href="#3">Conflict
						handling</a></li>
				<li class="submenuitem attributes"><a href="#4">Attributes</a></li>
				<li class="submenuitem element"><a href="#5">Element select</a></li>
				<li class="submenuitem manipulating"><a href="#6">Manipulating
						elements</a></li>
				<li class="submenuitem iterating"><a href="#7">Iterating</a>
			</ul>
		</div>

		<div class="content">
			<div id="onload-ready" class="sub-content active">
				<table>
					<tr>
						<th><h3>Onload</h3></th>
						<th><h3>Ready</h3></th>
					</tr>
					<tr>
						<td>
							<div class="javascript">
								<pre>
			window.onload = function() {
				alert( "Welcome (onload)!" );
		 	}</pre>
							</div>
						</td>
						<td>
							<div class="javascript">
								<pre>
			$( document ).ready(function() {
		 		alert( "Welcome (ready)!" );
		 	});</pre>
							</div>
						</td>
					</tr>
				</table>
				<p>
					<a href="/jquery/example" target="_blank" >Lets check it!</a>
				<p>
			</div>
			<div id="object-utility" class="sub-content">
				<h3>$ vs $()</h3>
				<p>Most jQuery methods are called on jQuery objects like in the
					example. These methods are said to be part of the $.fn namespace,
					or the "jQuery prototype," and are best thought of as jQuery object
					methods.</p>
				<div class="javascript">
					<pre>
	$("#myElement").css("color","blue");</pre>
				</div>
				<p>However, there are several methods that do not act on a
					selection; these methods are said to be part of the jQuery
					namespace, and are best thought of as core jQuery methods.</p>
				<div class="javascript">
					<pre>
	$.each(obj,function(index, value){
		...
	});
		
	JQuery.each(obj,function(index,value){
		...
	});</pre>
				</div>
				
				<p>Remember this:</p>
				<ul>
					<li>Methods called on jQuery selections are in the $.fn
						namespace, and automatically receive and return the selection as
						this.</li>
					<li>Methods in the $ namespace are generally utility-type
						methods, and do not work with selections; they are not
						automatically passed any arguments, and their return value will
						vary.</li>
				</ul>
				<h3>Some examples of the utility methods:</h3>
				<p>Removes leading and trailing whitespace:</p>
				<div class="javascript">
					<pre>
	$.trim( "      lots of extra whitespace      " );</pre>
				</div>
				<p>Iterates over arrays or objects:</p>
				<div class="javascript">
					<pre>
	$.each([ "foo", "bar", "baz" ], function( index, value ) {
	  		console.log( "element " + index + " is " + value );
	});

	$.each({ foo: "bar", baz: "bim" }, function( key, value) {
	  		console.log( key + " : " + value);
	});</pre>
				</div>
				<p>Get value on the specific index in an array:</p>
				<div class="javascript">
					<pre>
	var arrayOfElement = ".elementsList";
	console.log($.inArray("li", arrayOfElement));</pre>
				</div>
				<p><a href="http://jsbin.com/sapit/2/edit?html,js,output" target="_blank">Example</a></p>
				<p>Changes the properties of the first object using the
					properties of subsequent objects:
				<p></p>
				<div class="javascript">
					<pre>
	var first = { a: "1", b: "2"};
	var second = {a: "5", b: "6"};
	
	$.extend(first,second);</pre>
				</div>
			<p><a href="http://jsbin.com/kacoma/5/edit?html,js,output" target="_blank">Example</a></p>
			</div>
			<div id="conflict" class="sub-content">
				<h3>Conflict handling</h3>
				<p>Using new variable name to replace the $ alias:</p>
				<div class="javascript">
					<pre>
	var $j = jQuery.noConflict();
	$j(document).ready(function() {
   		$j( "div" ).hide();
	});
	</pre>
				</div>
				<p>Using jQuery function name:</p>
				<div class="javascript">
					<pre>
	jQuery.noConflict();

	jQuery( document ).ready(function( $ ) {
   		$( "div" ).hide();
	});
	</pre>
				</div>
				<p>Immediately invoked function:</p>
				<div class="javascript">
					<pre>
	jQuery.noConflict();

	(function( $ ) {
		$("main").append("Appending...");
	})( jQuery );
	</pre>
				</div>
				<p>When you use 2 different jQuery libs</p>
				<ul>
					<li>original page loads his "jquery.versionX.js"</li>
					<li>$ and jQuery belong to versionX</li>
					<li>you call your "jquery.versionY.js"</li>
					<li>now $ and jQuery belong to versionY, _$ and _jQuery
						that belongs to versionX</li>
					<li>var myjQuery = jQuery.noConflict(true);</li>
					<li>now $ and jQuery belong to versionX, _$ and _jQuery are
						probably null, and myjQuery is versionY</li>
				</ul>
				<p><a href="http://jsbin.com/dosicu/4/edit?html,js,output" target="_blank">Example</a></p>
			</div>
			<div id="attributes" class="sub-content">
				<h2>General Attributes</h2>
				<!-- 	kevesebb szöveg több példa plusz vmi gyakorlat -->
				<h3>.attr()</h3>
				<p>The .attr() method acts as both a getter and a setter. As a
					setter, .attr() can accept either a key and a value, or an object
					containing one or more key/value pairs.</p>
				<div class="javascript">
					<pre>
	$( "a" ).attr( "href", "notFound.html" );
	</pre>
				</div>
				<div class="javascript">
					<pre>
	$( "a" ).attr({
   		title: "all titles are the same too!",
   		href: "somethingNew.html"
	});
	</pre>
				</div>
				<p>As a getter, .attr() returns the value of the attribute.</p>
				<div class="javascript">
					<pre>
	$( "a" ).attr( "href" );
	</pre>
				</div>
				<p><a href="http://jsbin.com/womicu/1/edit?html,js,output" target="_blank">Example</a></p>
				<p>Most common attribute's which set or get with .attr().</p>
				<ul>

					<li>src</li>
					<li>alt</li>
					<li>title</li>
					<li>id</li>
					<li>class</li>
				</ul>
				<h3>.removeAttr()</h3>
				<p>Remove an attribute from each element in the set of matched
					elements.</p>
				<div class="javascript">
					<pre>
	$( "input" ).removeAttr( "some title" );
	</pre>
				</div>
				<h3>.prop()</h3>
				<p>Get the value of a property for the first element in the set of matched elements or set one or more properties for every matched element.</p>
				<p><a href="http://jsbin.com/pomehe/1/edit?html,js,output" target="_blank">Example</a></p>
				<p>Most common properties which set or get with .prop().</p>
				<ul>
					<li>disabled</li>
					<li>checked</li>
					<li>style</li>
					<li>size</li>
				</ul>
				<h3>.removeProp()</h3>
				<p>Remove a property for the set of matched elements.</p>
				<p>Do not use this method to remove native properties such as
					checked, disabled, or selected. This will remove the property
					completely and, once removed, cannot be added again to element. Use
					.prop() to set these properties to false instead.</p>
				<div class="javascript">
					<pre>
	$("p").prop("code",123);
	$("p").removeProp("code");
	</pre>
				</div>
				<h3>.val()</h3>
				<p>Get the current value of the first element in the set of
					matched elements or set the value of every matched element.</p>
				<div class="javascript">
					<pre>
	var singleValue = $("#single").val();
	</pre>
				</div>
				<div class="javascript">
					<pre>
	var multipleValues = $( ".multiple" ).val() || [];
	</pre>
				</div>
				<div class="javascript">
					<pre>
	$( "input" ).val( text );
	</pre>
				</div>
				<p><a href="http://jsbin.com/kajodu/1/edit?html,js,output" target="_blank">Example</a></p>
			</div>
			<div id="element" class="sub-content">
				<h2>Selecting elements</h2>
				<!-- 	vmi kinézet kéne -->
				<h3>By id</h3>
				<div class="javascript">
					<pre>
	$("#id");
	</pre>
				</div>
				<h3>By class name</h3>
				<div class="javascript">
					<pre>
	$(".class");
	</pre>
				</div>
				<h3>By attribute</h3>
				<div class="javascript">
					<pre>
	$("img[src='image.jpg']");
	</pre>
				</div>
				<h3>By compound css selector</h3>
				<div class="javascript">
					<pre>
	$("#content .main-menu li");
	</pre>
				</div>
				<h3>Pseudo-selectors</h3>
				<div class="javascript">
					<pre>
	$("div:first");
	
	$("form :input");
	$("div:visible");
	
	$("div:gt(2)"); //first three divs
	</pre>
				</div>
				<p>When using the :visible and :hidden pseudo-selectors, jQuery
					tests the actual visibility of the element, not its CSS visibility
					or display properties. jQuery looks to see if the element's
					physical height and width on the page are both greater than zero.</p>
				<h3>Regular expressions</h3>
				<p>An argument starts with "item"</p>
				<div class="javascript">
					<pre>
	$("div[class^='item']");
	</pre>
				</div>
				<p>An argument ends with "item"</p>
				<div class="javascript">
					<pre>
	$("div[class$='item']");
	</pre>
				</div>
				<p>An argument contains "item"</p>
				<div class="javascript">
					<pre>
	$("div[class*='item']");
	</pre>
				</div>
				<h3>Testing whether a selection contains elements:</h3>
				<div class="javascript">
					<pre>
	if($("div.class").length){
		...
	}
	</pre>
				</div>
				<h3>Saving selectors</h3>
				<div class="javascript">
					<pre>
	var divs = $("div");
	</pre>
				</div>
				<h3>Refining and Filtering Selections</h3>
				<div class="javascript">
					<pre>
	$("div.class").has("p"); 		// div.class elements wich contains p tag.
	$("h1").not(".foo"); 			// h1 elements that don't have class of foo
	$("ul li").filter(".current"); 	// unordered list items with class of current
	$("ul li").first(); 			// the first list item
	$("ul li").eq(3);				// the third element of the list
	</pre>
				</div>
				<h3>Selecting form elements</h3>
				<ul>
					<li>:button</li>
					<li>:checkbox</li>
					<li>:checked</li>
					<li>:disabled</li>
					<li>:enabled</li>
					<li>:file</li>
					<li>:image</li>
					<li>:input</li>
					<li>:password</li>
					<li>:radio</li>
					<li>:reset</li>
					<li>:selected</li>
					<li>:submit</li>
					<li>:text</li>
				</ul>
			</div>
			<div id="manipulating" class="sub-content">
				<h3>Getting and Setting Information About Elements</h3>
				<!-- 	átírni a szövegeket -->
				<p>There are many ways to change an existing element. Among the
					most common tasks is changing the inner HTML or attribute of an
					element. jQuery offers simple, cross-browser methods for these
					sorts of manipulations. You can also get information about elements
					using many of the same methods in their getter incarnations.</p>
				<p>Here are a few methods you can use to get and set information
					about elements:</p>
				<ul>
					<li>.html() - Get or set the HTML contents.</li>
					<li>.text() - Get or set the text contents; HTML will be
						stripped.</li>
					<li>.attr() - Get or set the value of the provided attribute.</li>
					<li>.width() - Get or set the width in pixels of the first
						element in the selection as an integer.</li>
					<li>.height() - Get or set the height in pixels of the first
						element in the selection as an integer.</li>
					<li>.position() - Get an object with position information for
						the first element in the selection, relative to its first
						positioned ancestor. This is a getter only.</li>
					<li>.val() - Get or set the value of form elements.</li>
				</ul>
				<h3>Moving, Copying, and Removing Elements</h3>
				<p>While there are a variety of ways to move elements around the
					DOM, there are generally two approaches:</p>
				<ul>
					<li>Place the selected element(s) relative to another element.</li>
					<li>Place an element relative to the selected element(s).</li>
				</ul>
				<p>For example:</p>
				<ul>
					<li>.insertAfter() - places the selected element(s) after the
						element provided as an argument</li>
					<li>.after() - places the element provided as an argument
						after the selected element</li>
					<li>.insertBefore() - Insert every element in the set of matched elements before the target.</li>
					<li>.before() - Insert content, specified by the parameter, before each element in the set of matched elements.</li>
					<li>.appendTo() - Insert every element in the set of matched elements to the end of the target.</li>
					<li>.append() - Insert content, specified by the parameter, to the end of each element in the set of matched elements.</li>
					<li>.prependTo() -  Insert every element in the set of matched elements to the beginning of the target.</li>
					<li>.prepend() - Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.</li>
				</ul>
				<h3>Cloning elements</h3>
				<p>Methods such as .appendTo() move the element, but sometimes a
					copy of the element is needed instead. In this case, use .clone()
					first:</p>
				<div class="javascript">
					<pre>
	$( "#myList li:first" ).clone().appendTo( "#myList" );
	</pre>
				</div>
				<p>If you need to copy related data and events, be sure to pass
					true as an argument to .clone().</p>
				<p><a href="http://jsbin.com/betiku/1/edit?html,js,output" target="_blank">Example</a></p>
			</div>
			<div id="iterating" class="sub-content">
				<h2>Iterating</h2>
				<!-- 	itt is �t�rni -->
				<p>jQuery provides an object iterator utility called $.each() as
					well as a jQuery collection iterator: .each(). These are not
					interchangeable. In addition, there are a couple of helpful methods
					called $.map() and .map() that can shortcut one of our common
					iteration use cases.</p>
				<h3>$.each()</h3>
				<p>$.each() is a generic iterator function for looping over
					object, arrays, and array-like objects. Plain objects are iterated
					via their named properties while arrays and array-like objects are
					iterated via their indices.</p>
				<p>$.each() is essentially a drop-in replacement of a
					traditional for or for-in loop.</p>
				<p>Iterating over an array:</p>
				<div class="javascript"> <pre>
	var sum = 0;
	var arr = [ 1, 2, 3, 4, 5 ];
	
	$.each( arr, function( index, value ){
    	sum += value;
	});
 
	console.log( sum );
	</pre> </div>
				<p>Iterating over an object:</p>
				<div class="javascript"> <pre>
	var sum = 0;
	var obj = {
    	foo: 1,
    	bar: 2
	}
	
	$.each( obj, function( key, value ) {
    	sum += value;
	});
 
	console.log( sum );
	</pre> </div>
				<h3>.each()</h3>
				<p>.each() is used directly on a jQuery collection. It iterates
					over each matched element in the collection and performs a callback
					on that object. The index of the current element within the
					collection is passed as an argument to the callback. The value (the
					DOM element in this case) is also passed, but the callback is fired
					within the context of the current matched element so the this
					keyword points to the current element as expected in other jQuery
					callbacks.</p>
				<div class="javascript"> <pre>
	$( "li" ).each( function( index, element ){
	    console.log( $( this ).text() );
	});
	</pre> </div>
	<p>
					<a href="http://jsbin.com/qatiqo/4/edit?html,js,output" target="_blank">Example</a>
				</p>
				<h3>The following is a list of methods that require .each():</h3>
				<ul>
					<li>.attr() (getter)</li>
					<li>.css() (getter)</li>
					<li>.data() (getter)</li>
					<li>.height() (getter)</li>
					<li>.html() (getter)</li>
					<li>.innerHeight()</li>
					<li>.innerWidth()</li>
					<li>.offset() (getter)</li>
					<li>.outerHeight()</li>
					<li>.outerWidth()</li>
					<li>.position()</li>
					<li>.prop() (getter)</li>
					<li>.scrollLeft() (getter)</li>
					<li>.scrollTop() (getter)</li>
					<li>.val() (getter)</li>
					<li>.width() (getter)</li>
				</ul>
				<h3>.map()</h3>
				<p>There is a common iteration use case that can be better
					handled by using the .map() method. Anytime we want to create an
					array or concatenated string based on all matched elements in our
					jQuery selector, we're better served using .map().</p>
				<div class="javascript"> <pre>
	$( "li" ).map( function(index, element) {
    	return this.id;
	}).get();
	</pre> </div>
	<p><a href="http://jsbin.com/caxafa/1/edit?html,js,output" target="_blank">Example</a></p>
			</div>
		</div>
	</div>
	<div id="footer">@2014 EPAM</div>
</body>
</html>