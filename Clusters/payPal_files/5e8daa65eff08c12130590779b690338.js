/*!
 * jQuery JavaScript Library v1.3.2
 * http://jquery.com/
 *
 * Copyright (c) 2009 John Resig
 * Dual licensed under the MIT and GPL licenses.
 * http://docs.jquery.com/License
 *
 * Date: 2009-02-19 17:34:21 -0500 (Thu, 19 Feb 2009)
 * Revision: 6246
 */
function foo(){

var
	// Will speed up references to window, and allows munging its name.
	window = this,
	// Will speed up references to undefined, and allows munging its name.
	undefined,
	// Map over jQuery in case of overwrite
	_jQuery = window.jQuery,
	// Map over the $ in case of overwrite
	_$ = window.$,

	jQuery = window.jQuery = window.$ = function( selector, context ) {
		// The jQuery object is actually just the init constructor 'enhanced'
		return new jQuery.fn.init( selector, context );
	},

	// A simple way to check for HTML strings or ID strings
	// (both of which we optimize for)
	quickExpr = /^[^<]*(<(.|\s)+>)[^>]*$|^#([\w-]+)$/,
	// Is it a simple selector
	isSimple = /^.[^:#\[\.,]*$/;

jQuery.fn = jQuery.prototype = {
	init: function( selector, context ) {
		// Make sure that a selection was provided
		selector = selector || document;

		// Handle $(DOMElement)
		if ( selector.nodeType ) {
			this[0] = selector;
			this.length = 1;
			this.context = selector;
			return this;
		}
		// Handle HTML strings
		if ( typeof selector === "string" ) {
			// Are we dealing with HTML string or an ID?
			var match = quickExpr.exec( selector );

			// Verify a match, and that no context was specified for #id
			if ( match && (match[1] || !context) ) {

				// HANDLE: $(html) -> $(array)
				if ( match[1] )
					selector = jQuery.clean( [ match[1] ], context );

				// HANDLE: $("#id")
				else {
					var elem = document.getElementById( match[3] );

					// Handle the case where IE and Opera return items
					// by name instead of ID
					if ( elem && elem.id != match[3] )
						return jQuery().find( selector );

					// Otherwise, we inject the element directly into the jQuery object
					var ret = jQuery( elem || [] );
					ret.context = document;
					ret.selector = selector;
					return ret;
				}

			// HANDLE: $(expr, [context])
			// (which is just equivalent to: $(content).find(expr)
			} else
				return jQuery( context ).find( selector );

		// HANDLE: $(function)
		// Shortcut for document ready
		} else if ( jQuery.isFunction( selector ) )
			return jQuery( document ).ready( selector );

		// Make sure that old selector state is passed along
		if ( selector.selector && selector.context ) {
			this.selector = selector.selector;
			this.context = selector.context;
		}

		return this.setArray(jQuery.isArray( selector ) ?
			selector :
			jQuery.makeArray(selector));
	},

	// Start with an empty selector
	selector: "",

	// The current version of jQuery being used
	jquery: "1.3.2",

	// The number of elements contained in the matched element set
	size: function() {
		return this.length;
	},

	// Get the Nth element in the matched element set OR
	// Get the whole matched element set as a clean array
	get: function( num ) {
		return num === undefined ?

			// Return a 'clean' array
			Array.prototype.slice.call( this ) :

			// Return just the object
			this[ num ];
	},

	// Take an array of elements and push it onto the stack
	// (returning the new matched element set)
	pushStack: function( elems, name, selector ) {
		// Build a new jQuery matched element set
		var ret = jQuery( elems );

		// Add the old object onto the stack (as a reference)
		ret.prevObject = this;

		ret.context = this.context;

		if ( name === "find" )
			ret.selector = this.selector + (this.selector ? " " : "") + selector;
		else if ( name )
			ret.selector = this.selector + "." + name + "(" + selector + ")";

		// Return the newly-formed element set
		return ret;
	},

	// Force the current matched set of elements to become
	// the specified array of elements (destroying the stack in the process)
	// You should use pushStack() in order to do this, but maintain the stack
	setArray: function( elems ) {
		// Resetting the length to 0, then using the native Array push
		// is a super-fast way to populate an object with array-like properties
		this.length = 0;
		Array.prototype.push.apply( this, elems );

		return this;
	},

	// Execute a callback for every element in the matched set.
	// (You can seed the arguments with an array of args, but this is
	// only used internally.)
	each: function( callback, args ) {
		return jQuery.each( this, callback, args );
	},

	// Determine the position of an element within
	// the matched set of elements
	index: function( elem ) {
		// Locate the position of the desired element
		return jQuery.inArray(
			// If it receives a jQuery object, the first element is used
			elem && elem.jquery ? elem[0] : elem
		, this );
	},

	attr: function( name, value, type ) {
		var options = name;

		// Look for the case where we're accessing a style value
		if ( typeof name === "string" )
			if ( value === undefined )
				return this[0] && jQuery[ type || "attr" ]( this[0], name );

			else {
				options = {};
				options[ name ] = value;
			}

		// Check to see if we're setting style values
		return this.each(function(i){
			// Set all the styles
			for ( name in options )
				jQuery.attr(
					type ?
						this.style :
						this,
					name, jQuery.prop( this, options[ name ], type, i, name )
				);
		});
	},

	css: function( key, value ) {
		// ignore negative width and height values
		if ( (key == 'width' || key == 'height') && parseFloat(value) < 0 )
			value = undefined;
		return this.attr( key, value, "curCSS" );
	},

	text: function( text ) {
		if ( typeof text !== "object" && text != null )
			return this.empty().append( (this[0] && this[0].ownerDocument || document).createTextNode( text ) );

		var ret = "";

		jQuery.each( text || this, function(){
			jQuery.each( this.childNodes, function(){
				if ( this.nodeType != 8 )
					ret += this.nodeType != 1 ?
						this.nodeValue :
						jQuery.fn.text( [ this ] );
			});
		});

		return ret;
	},

	wrapAll: function( html ) {
		if ( this[0] ) {
			// The elements to wrap the target around
			var wrap = jQuery( html, this[0].ownerDocument ).clone();

			if ( this[0].parentNode )
				wrap.insertBefore( this[0] );

			wrap.map(function(){
				var elem = this;

				while ( elem.firstChild )
					elem = elem.firstChild;

				return elem;
			}).append(this);
		}

		return this;
	},

	wrapInner: function( html ) {
		return this.each(function(){
			jQuery( this ).contents().wrapAll( html );
		});
	},

	wrap: function( html ) {
		return this.each(function(){
			jQuery( this ).wrapAll( html );
		});
	},

	append: function() {
		return this.domManip(arguments, true, function(elem){
			if (this.nodeType == 1)
				this.appendChild( elem );
		});
	},

	prepend: function() {
		return this.domManip(arguments, true, function(elem){
			if (this.nodeType == 1)
				this.insertBefore( elem, this.firstChild );
		});
	},

	before: function() {
		return this.domManip(arguments, false, function(elem){
			this.parentNode.insertBefore( elem, this );
		});
	},

	after: function() {
		return this.domManip(arguments, false, function(elem){
			this.parentNode.insertBefore( elem, this.nextSibling );
		});
	},

	end: function() {
		return this.prevObject || jQuery( [] );
	},

	// For internal use only.
	// Behaves like an Array's method, not like a jQuery method.
	push: [].push,
	sort: [].sort,
	splice: [].splice,

	find: function( selector ) {
		if ( this.length === 1 ) {
			var ret = this.pushStack( [], "find", selector );
			ret.length = 0;
			jQuery.find( selector, this[0], ret );
			return ret;
		} else {
			return this.pushStack( jQuery.unique(jQuery.map(this, function(elem){
				return jQuery.find( selector, elem );
			})), "find", selector );
		}
	},

	clone: function( events ) {
		// Do the clone
		var ret = this.map(function(){
			if ( !jQuery.support.noCloneEvent && !jQuery.isXMLDoc(this) ) {
				// IE copies events bound via attachEvent when
				// using cloneNode. Calling detachEvent on the
				// clone will also remove the events from the orignal
				// In order to get around this, we use innerHTML.
				// Unfortunately, this means some modifications to
				// attributes in IE that are actually only stored
				// as properties will not be copied (such as the
				// the name attribute on an input).
				var html = this.outerHTML;
				if ( !html ) {
					var div = this.ownerDocument.createElement("div");
					div.appendChild( this.cloneNode(true) );
					html = div.innerHTML;
				}

				return jQuery.clean([html.replace(/ jQuery\d+="(?:\d+|null)"/g, "").replace(/^\s*/, "")])[0];
			} else
				return this.cloneNode(true);
		});

		// Copy the events from the original to the clone
		if ( events === true ) {
			var orig = this.find("*").andSelf(), i = 0;

			ret.find("*").andSelf().each(function(){
				if ( this.nodeName !== orig[i].nodeName )
					return;

				var events = jQuery.data( orig[i], "events" );

				for ( var type in events ) {
					for ( var handler in events[ type ] ) {
						jQuery.event.add( this, type, events[ type ][ handler ], events[ type ][ handler ].data );
					}
				}

				i++;
			});
		}

		// Return the cloned set
		return ret;
	},

	filter: function( selector ) {
		return this.pushStack(
			jQuery.isFunction( selector ) &&
			jQuery.grep(this, function(elem, i){
				return selector.call( elem, i );
			}) ||

			jQuery.multiFilter( selector, jQuery.grep(this, function(elem){
				return elem.nodeType === 1;
			}) ), "filter", selector );
	},

	closest: function( selector ) {
		var pos = jQuery.expr.match.POS.test( selector ) ? jQuery(selector) : null,
			closer = 0;

		return this.map(function(){
			var cur = this;
			while ( cur && cur.ownerDocument ) {
				if ( pos ? pos.index(cur) > -1 : jQuery(cur).is(selector) ) {
					jQuery.data(cur, "closest", closer);
					return cur;
				}
				cur = cur.parentNode;
				closer++;
			}
		});
	},

	not: function( selector ) {
		if ( typeof selector === "string" )
			// test special case where just one selector is passed in
			if ( isSimple.test( selector ) )
				return this.pushStack( jQuery.multiFilter( selector, this, true ), "not", selector );
			else
				selector = jQuery.multiFilter( selector, this );

		var isArrayLike = selector.length && selector[selector.length - 1] !== undefined && !selector.nodeType;
		return this.filter(function() {
			return isArrayLike ? jQuery.inArray( this, selector ) < 0 : this != selector;
		});
	},

	add: function( selector ) {
		return this.pushStack( jQuery.unique( jQuery.merge(
			this.get(),
			typeof selector === "string" ?
				jQuery( selector ) :
				jQuery.makeArray( selector )
		)));
	},

	is: function( selector ) {
		return !!selector && jQuery.multiFilter( selector, this ).length > 0;
	},

	hasClass: function( selector ) {
		return !!selector && this.is( "." + selector );
	},

	val: function( value ) {
		if ( value === undefined ) {
			var elem = this[0];

			if ( elem ) {
				if( jQuery.nodeName( elem, 'option' ) )
					return (elem.attributes.value || {}).specified ? elem.value : elem.text;

				// We need to handle select boxes special
				if ( jQuery.nodeName( elem, "select" ) ) {
					var index = elem.selectedIndex,
						values = [],
						options = elem.options,
						one = elem.type == "select-one";

					// Nothing was selected
					if ( index < 0 )
						return null;

					// Loop through all the selected options
					for ( var i = one ? index : 0, max = one ? index + 1 : options.length; i < max; i++ ) {
						var option = options[ i ];

						if ( option.selected ) {
							// Get the specifc value for the option
							value = jQuery(option).val();

							// We don't need an array for one selects
							if ( one )
								return value;

							// Multi-Selects return an array
							values.push( value );
						}
					}

					return values;
				}

				// Everything else, we just grab the value
				return (elem.value || "").replace(/\r/g, "");

			}

			return undefined;
		}

		if ( typeof value === "number" )
			value += '';

		return this.each(function(){
			if ( this.nodeType != 1 )
				return;

			if ( jQuery.isArray(value) && /radio|checkbox/.test( this.type ) )
				this.checked = (jQuery.inArray(this.value, value) >= 0 ||
					jQuery.inArray(this.name, value) >= 0);

			else if ( jQuery.nodeName( this, "select" ) ) {
				var values = jQuery.makeArray(value);

				jQuery( "option", this ).each(function(){
					this.selected = (jQuery.inArray( this.value, values ) >= 0 ||
						jQuery.inArray( this.text, values ) >= 0);
				});

				if ( !values.length )
					this.selectedIndex = -1;

			} else
				this.value = value;
		});
	},

	html: function( value ) {
		return value === undefined ?
			(this[0] ?
				this[0].innerHTML.replace(/ jQuery\d+="(?:\d+|null)"/g, "") :
				null) :
			this.empty().append( value );
	},

	replaceWith: function( value ) {
		return this.after( value ).remove();
	},

	eq: function( i ) {
		return this.slice( i, +i + 1 );
	},

	slice: function() {
		return this.pushStack( Array.prototype.slice.apply( this, arguments ),
			"slice", Array.prototype.slice.call(arguments).join(",") );
	},

	map: function( callback ) {
		return this.pushStack( jQuery.map(this, function(elem, i){
			return callback.call( elem, i, elem );
		}));
	},

	andSelf: function() {
		return this.add( this.prevObject );
	},

	domManip: function( args, table, callback ) {
		if ( this[0] ) {
			var fragment = (this[0].ownerDocument || this[0]).createDocumentFragment(),
				scripts = jQuery.clean( args, (this[0].ownerDocument || this[0]), fragment ),
				first = fragment.firstChild;

			if ( first )
				for ( var i = 0, l = this.length; i < l; i++ )
					callback.call( root(this[i], first), this.length > 1 || i > 0 ?
							fragment.cloneNode(true) : fragment );

			if ( scripts )
				jQuery.each( scripts, evalScript );
		}

		return this;

		function root( elem, cur ) {
			return table && jQuery.nodeName(elem, "table") && jQuery.nodeName(cur, "tr") ?
				(elem.getElementsByTagName("tbody")[0] ||
				elem.appendChild(elem.ownerDocument.createElement("tbody"))) :
				elem;
		}
	}
};

// Give the init function the jQuery prototype for later instantiation
jQuery.fn.init.prototype = jQuery.fn;

function evalScript( i, elem ) {
	if ( elem.src )
		jQuery.ajax({
			url: elem.src,
			async: false,
			dataType: "script"
		});

	else
		jQuery.globalEval( elem.text || elem.textContent || elem.innerHTML || "" );

	if ( elem.parentNode )
		elem.parentNode.removeChild( elem );
}

function now(){
	return +new Date;
}

jQuery.extend = jQuery.fn.extend = function() {
	// copy reference to target object
	var target = arguments[0] || {}, i = 1, length = arguments.length, deep = false, options;

	// Handle a deep copy situation
	if ( typeof target === "boolean" ) {
		deep = target;
		target = arguments[1] || {};
		// skip the boolean and the target
		i = 2;
	}

	// Handle case when target is a string or something (possible in deep copy)
	if ( typeof target !== "object" && !jQuery.isFunction(target) )
		target = {};

	// extend jQuery itself if only one argument is passed
	if ( length == i ) {
		target = this;
		--i;
	}

	for ( ; i < length; i++ )
		// Only deal with non-null/undefined values
		if ( (options = arguments[ i ]) != null )
			// Extend the base object
			for ( var name in options ) {
				var src = target[ name ], copy = options[ name ];

				// Prevent never-ending loop
				if ( target === copy )
					continue;

				// Recurse if we're merging object values
				if ( deep && copy && typeof copy === "object" && !copy.nodeType )
					target[ name ] = jQuery.extend( deep,
						// Never move original objects, clone them
						src || ( copy.length != null ? [ ] : { } )
					, copy );

				// Don't bring in undefined values
				else if ( copy !== undefined )
					target[ name ] = copy;

			}

	// Return the modified object
	return target;
};

// exclude the following css properties to add px
var	exclude = /z-?index|font-?weight|opacity|zoom|line-?height/i,
	// cache defaultView
	defaultView = document.defaultView || {},
	toString = Object.prototype.toString;

jQuery.extend({
	noConflict: function( deep ) {
		window.$ = _$;

		if ( deep )
			window.jQuery = _jQuery;

		return jQuery;
	},

	// See test/unit/core.js for details concerning isFunction.
	// Since version 1.3, DOM methods and functions like alert
	// aren't supported. They return false on IE (#2968).
	isFunction: function( obj ) {
		return toString.call(obj) === "[object Function]";
	},

	isArray: function( obj ) {
		return toString.call(obj) === "[object Array]";
	},

	// check if an element is in a (or is an) XML document
	isXMLDoc: function( elem ) {
		return elem.nodeType === 9 && elem.documentElement.nodeName !== "HTML" ||
			!!elem.ownerDocument && jQuery.isXMLDoc( elem.ownerDocument );
	},

	// Evalulates a script in a global context
	globalEval: function( data ) {
		if ( data && /\S/.test(data) ) {
			// Inspired by code by Andrea Giammarchi
			// http://webreflection.blogspot.com/2007/08/global-scope-evaluation-and-dom.html
			var head = document.getElementsByTagName("head")[0] || document.documentElement,
				script = document.createElement("script");

			script.type = "text/javascript";
			if ( jQuery.support.scriptEval )
				script.appendChild( document.createTextNode( data ) );
			else
				script.text = data;

			// Use insertBefore instead of appendChild  to circumvent an IE6 bug.
			// This arises when a base node is used (#2709).
			head.insertBefore( script, head.firstChild );
			head.removeChild( script );
		}
	},

	nodeName: function( elem, name ) {
		return elem.nodeName && elem.nodeName.toUpperCase() == name.toUpperCase();
	},

	// args is for internal usage only
	each: function( object, callback, args ) {
		var name, i = 0, length = object.length;

		if ( args ) {
			if ( length === undefined ) {
				for ( name in object )
					if ( callback.apply( object[ name ], args ) === false )
						break;
			} else
				for ( ; i < length; )
					if ( callback.apply( object[ i++ ], args ) === false )
						break;

		// A special, fast, case for the most common use of each
		} else {
			if ( length === undefined ) {
				for ( name in object )
					if ( callback.call( object[ name ], name, object[ name ] ) === false )
						break;
			} else
				for ( var value = object[0];
					i < length && callback.call( value, i, value ) !== false; value = object[++i] ){}
		}

		return object;
	},

	prop: function( elem, value, type, i, name ) {
		// Handle executable functions
		if ( jQuery.isFunction( value ) )
			value = value.call( elem, i );

		// Handle passing in a number to a CSS property
		return typeof value === "number" && type == "curCSS" && !exclude.test( name ) ?
			value + "px" :
			value;
	},

	className: {
		// internal only, use addClass("class")
		add: function( elem, classNames ) {
			jQuery.each((classNames || "").split(/\s+/), function(i, className){
				if ( elem.nodeType == 1 && !jQuery.className.has( elem.className, className ) )
					elem.className += (elem.className ? " " : "") + className;
			});
		},

		// internal only, use removeClass("class")
		remove: function( elem, classNames ) {
			if (elem.nodeType == 1)
				elem.className = classNames !== undefined ?
					jQuery.grep(elem.className.split(/\s+/), function(className){
						return !jQuery.className.has( classNames, className );
					}).join(" ") :
					"";
		},

		// internal only, use hasClass("class")
		has: function( elem, className ) {
			return elem && jQuery.inArray( className, (elem.className || elem).toString().split(/\s+/) ) > -1;
		}
	},

	// A method for quickly swapping in/out CSS properties to get correct calculations
	swap: function( elem, options, callback ) {
		var old = {};
		// Remember the old values, and insert the new ones
		for ( var name in options ) {
			old[ name ] = elem.style[ name ];
			elem.style[ name ] = options[ name ];
		}

		callback.call( elem );

		// Revert the old values
		for ( var name in options )
			elem.style[ name ] = old[ name ];
	},

	css: function( elem, name, force, extra ) {
		if ( name == "width" || name == "height" ) {
			var val, props = { position: "absolute", visibility: "hidden", display:"block" }, which = name == "width" ? [ "Left", "Right" ] : [ "Top", "Bottom" ];

			function getWH() {
				val = name == "width" ? elem.offsetWidth : elem.offsetHeight;

				if ( extra === "border" )
					return;

				jQuery.each( which, function() {
					if ( !extra )
						val -= parseFloat(jQuery.curCSS( elem, "padding" + this, true)) || 0;
					if ( extra === "margin" )
						val += parseFloat(jQuery.curCSS( elem, "margin" + this, true)) || 0;
					else
						val -= parseFloat(jQuery.curCSS( elem, "border" + this + "Width", true)) || 0;
				});
			}

			if ( elem.offsetWidth !== 0 )
				getWH();
			else
				jQuery.swap( elem, props, getWH );

			return Math.max(0, Math.round(val));
		}

		return jQuery.curCSS( elem, name, force );
	},

	curCSS: function( elem, name, force ) {
		var ret, style = elem.style;

		// We need to handle opacity special in IE
		if ( name == "opacity" && !jQuery.support.opacity ) {
			ret = jQuery.attr( style, "opacity" );

			return ret == "" ?
				"1" :
				ret;
		}

		// Make sure we're using the right name for getting the float value
		if ( name.match( /float/i ) )
			name = styleFloat;

		if ( !force && style && style[ name ] )
			ret = style[ name ];

		else if ( defaultView.getComputedStyle ) {

			// Only "float" is needed here
			if ( name.match( /float/i ) )
				name = "float";

			name = name.replace( /([A-Z])/g, "-$1" ).toLowerCase();

			var computedStyle = defaultView.getComputedStyle( elem, null );

			if ( computedStyle )
				ret = computedStyle.getPropertyValue( name );

			// We should always get a number back from opacity
			if ( name == "opacity" && ret == "" )
				ret = "1";

		} else if ( elem.currentStyle ) {
			var camelCase = name.replace(/\-(\w)/g, function(all, letter){
				return letter.toUpperCase();
			});

			ret = elem.currentStyle[ name ] || elem.currentStyle[ camelCase ];

			// From the awesome hack by Dean Edwards
			// http://erik.eae.net/archives/2007/07/27/18.54.15/#comment-102291

			// If we're not dealing with a regular pixel number
			// but a number that has a weird ending, we need to convert it to pixels
			if ( !/^\d+(px)?$/i.test( ret ) && /^\d/.test( ret ) ) {
				// Remember the original values
				var left = style.left, rsLeft = elem.runtimeStyle.left;

				// Put in the new values to get a computed value out
				elem.runtimeStyle.left = elem.currentStyle.left;
				style.left = ret || 0;
				ret = style.pixelLeft + "px";

				// Revert the changed values
				style.left = left;
				elem.runtimeStyle.left = rsLeft;
			}
		}

		return ret;
	},

	clean: function( elems, context, fragment ) {
		context = context || document;

		// !context.createElement fails in IE with an error but returns typeof 'object'
		if ( typeof context.createElement === "undefined" )
			context = context.ownerDocument || context[0] && context[0].ownerDocument || document;

		// If a single string is passed in and it's a single tag
		// just do a createElement and skip the rest
		if ( !fragment && elems.length === 1 && typeof elems[0] === "string" ) {
			var match = /^<(\w+)\s*\/?>$/.exec(elems[0]);
			if ( match )
				return [ context.createElement( match[1] ) ];
		}

		var ret = [], scripts = [], div = context.createElement("div");

		jQuery.each(elems, function(i, elem){
			if ( typeof elem === "number" )
				elem += '';

			if ( !elem )
				return;

			// Convert html string into DOM nodes
			if ( typeof elem === "string" ) {
				// Fix "XHTML"-style tags in all browsers
				elem = elem.replace(/(<(\w+)[^>]*?)\/>/g, function(all, front, tag){
					return tag.match(/^(abbr|br|col|img|input|link|meta|param|hr|area|embed)$/i) ?
						all :
						front + "></" + tag + ">";
				});

				// Trim whitespace, otherwise indexOf won't work as expected
				var tags = elem.replace(/^\s+/, "").substring(0, 10).toLowerCase();

				var wrap =
					// option or optgroup
					!tags.indexOf("<opt") &&
					[ 1, "<select multiple='multiple'>", "</select>" ] ||

					!tags.indexOf("<leg") &&
					[ 1, "<fieldset>", "</fieldset>" ] ||

					tags.match(/^<(thead|tbody|tfoot|colg|cap)/) &&
					[ 1, "<table>", "</table>" ] ||

					!tags.indexOf("<tr") &&
					[ 2, "<table><tbody>", "</tbody></table>" ] ||

				 	// <thead> matched above
					(!tags.indexOf("<td") || !tags.indexOf("<th")) &&
					[ 3, "<table><tbody><tr>", "</tr></tbody></table>" ] ||

					!tags.indexOf("<col") &&
					[ 2, "<table><tbody></tbody><colgroup>", "</colgroup></table>" ] ||

					// IE can't serialize <link> and <script> tags normally
					!jQuery.support.htmlSerialize &&
					[ 1, "div<div>", "</div>" ] ||

					[ 0, "", "" ];

				// Go to html and back, then peel off extra wrappers
				div.innerHTML = wrap[1] + elem + wrap[2];

				// Move to the right depth
				while ( wrap[0]-- )
					div = div.lastChild;

				// Remove IE's autoinserted <tbody> from table fragments
				if ( !jQuery.support.tbody ) {

					// String was a <table>, *may* have spurious <tbody>
					var hasBody = /<tbody/i.test(elem),
						tbody = !tags.indexOf("<table") && !hasBody ?
							div.firstChild && div.firstChild.childNodes :

						// String was a bare <thead> or <tfoot>
						wrap[1] == "<table>" && !hasBody ?
							div.childNodes :
							[];

					for ( var j = tbody.length - 1; j >= 0 ; --j )
						if ( jQuery.nodeName( tbody[ j ], "tbody" ) && !tbody[ j ].childNodes.length )
							tbody[ j ].parentNode.removeChild( tbody[ j ] );

					}

				// IE completely kills leading whitespace when innerHTML is used
				if ( !jQuery.support.leadingWhitespace && /^\s/.test( elem ) )
					div.insertBefore( context.createTextNode( elem.match(/^\s*/)[0] ), div.firstChild );

				elem = jQuery.makeArray( div.childNodes );
			}

			if ( elem.nodeType )
				ret.push( elem );
			else
				ret = jQuery.merge( ret, elem );

		});

		if ( fragment ) {
			for ( var i = 0; ret[i]; i++ ) {
				if ( jQuery.nodeName( ret[i], "script" ) && (!ret[i].type || ret[i].type.toLowerCase() === "text/javascript") ) {
					scripts.push( ret[i].parentNode ? ret[i].parentNode.removeChild( ret[i] ) : ret[i] );
				} else {
					if ( ret[i].nodeType === 1 )
						ret.splice.apply( ret, [i + 1, 0].concat(jQuery.makeArray(ret[i].getElementsByTagName("script"))) );
					fragment.appendChild( ret[i] );
				}
			}

			return scripts;
		}

		return ret;
	},

	attr: function( elem, name, value ) {
		// don't set attributes on text and comment nodes
		if (!elem || elem.nodeType == 3 || elem.nodeType == 8)
			return undefined;

		var notxml = !jQuery.isXMLDoc( elem ),
			// Whether we are setting (or getting)
			set = value !== undefined;

		// Try to normalize/fix the name
		name = notxml && jQuery.props[ name ] || name;

		// Only do all the following if this is a node (faster for style)
		// IE elem.getAttribute passes even for style
		if ( elem.tagName ) {

			// These attributes require special treatment
			var special = /href|src|style/.test( name );

			// Safari mis-reports the default selected property of a hidden option
			// Accessing the parent's selectedIndex property fixes it
			if ( name == "selected" && elem.parentNode )
				elem.parentNode.selectedIndex;

			// If applicable, access the attribute via the DOM 0 way
			if ( name in elem && notxml && !special ) {
				if ( set ){
					// We can't allow the type property to be changed (since it causes problems in IE)
					if ( name == "type" && jQuery.nodeName( elem, "input" ) && elem.parentNode )
						throw "type property can't be changed";

					elem[ name ] = value;
				}

				// browsers index elements by id/name on forms, give priority to attributes.
				if( jQuery.nodeName( elem, "form" ) && elem.getAttributeNode(name) )
					return elem.getAttributeNode( name ).nodeValue;

				// elem.tabIndex doesn't always return the correct value when it hasn't been explicitly set
				// http://fluidproject.org/blog/2008/01/09/getting-setting-and-removing-tabindex-values-with-javascript/
				if ( name == "tabIndex" ) {
					var attributeNode = elem.getAttributeNode( "tabIndex" );
					return attributeNode && attributeNode.specified
						? attributeNode.value
						: elem.nodeName.match(/(button|input|object|select|textarea)/i)
							? 0
							: elem.nodeName.match(/^(a|area)$/i) && elem.href
								? 0
								: undefined;
				}

				return elem[ name ];
			}

			if ( !jQuery.support.style && notxml &&  name == "style" )
				return jQuery.attr( elem.style, "cssText", value );

			if ( set )
				// convert the value to a string (all browsers do this but IE) see #1070
				elem.setAttribute( name, "" + value );

			var attr = !jQuery.support.hrefNormalized && notxml && special
					// Some attributes require a special call on IE
					? elem.getAttribute( name, 2 )
					: elem.getAttribute( name );

			// Non-existent attributes return null, we normalize to undefined
			return attr === null ? undefined : attr;
		}

		// elem is actually elem.style ... set the style

		// IE uses filters for opacity
		if ( !jQuery.support.opacity && name == "opacity" ) {
			if ( set ) {
				// IE has trouble with opacity if it does not have layout
				// Force it by setting the zoom level
				elem.zoom = 1;

				// Set the alpha filter to set the opacity
				elem.filter = (elem.filter || "").replace( /alpha\([^)]*\)/, "" ) +
					(parseInt( value ) + '' == "NaN" ? "" : "alpha(opacity=" + value * 100 + ")");
			}

			return elem.filter && elem.filter.indexOf("opacity=") >= 0 ?
				(parseFloat( elem.filter.match(/opacity=([^)]*)/)[1] ) / 100) + '':
				"";
		}

		name = name.replace(/-([a-z])/ig, function(all, letter){
			return letter.toUpperCase();
		});

		if ( set )
			elem[ name ] = value;

		return elem[ name ];
	},

	trim: function( text ) {
		return (text || "").replace( /^\s+|\s+$/g, "" );
	},

	makeArray: function( array ) {
		var ret = [];

		if( array != null ){
			var i = array.length;
			// The window, strings (and functions) also have 'length'
			if( i == null || typeof array === "string" || jQuery.isFunction(array) || array.setInterval )
				ret[0] = array;
			else
				while( i )
					ret[--i] = array[i];
		}

		return ret;
	},

	inArray: function( elem, array ) {
		for ( var i = 0, length = array.length; i < length; i++ )
		// Use === because on IE, window == document
			if ( array[ i ] === elem )
				return i;

		return -1;
	},

	merge: function( first, second ) {
		// We have to loop this way because IE & Opera overwrite the length
		// expando of getElementsByTagName
		var i = 0, elem, pos = first.length;
		// Also, we need to make sure that the correct elements are being returned
		// (IE returns comment nodes in a '*' query)
		if ( !jQuery.support.getAll ) {
			while ( (elem = second[ i++ ]) != null )
				if ( elem.nodeType != 8 )
					first[ pos++ ] = elem;

		} else
			while ( (elem = second[ i++ ]) != null )
				first[ pos++ ] = elem;

		return first;
	},

	unique: function( array ) {
		var ret = [], done = {};

		try {

			for ( var i = 0, length = array.length; i < length; i++ ) {
				var id = jQuery.data( array[ i ] );

				if ( !done[ id ] ) {
					done[ id ] = true;
					ret.push( array[ i ] );
				}
			}

		} catch( e ) {
			ret = array;
		}

		return ret;
	},

	grep: function( elems, callback, inv ) {
		var ret = [];

		// Go through the array, only saving the items
		// that pass the validator function
		for ( var i = 0, length = elems.length; i < length; i++ )
			if ( !inv != !callback( elems[ i ], i ) )
				ret.push( elems[ i ] );

		return ret;
	},

	map: function( elems, callback ) {
		var ret = [];

		// Go through the array, translating each of the items to their
		// new value (or values).
		for ( var i = 0, length = elems.length; i < length; i++ ) {
			var value = callback( elems[ i ], i );

			if ( value != null )
				ret[ ret.length ] = value;
		}

		return ret.concat.apply( [], ret );
	}
});

// Use of jQuery.browser is deprecated.
// It's included for backwards compatibility and plugins,
// although they should work to migrate away.

var userAgent = navigator.userAgent.toLowerCase();

// Figure out what browser is being used
jQuery.browser = {
	version: (userAgent.match( /.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/ ) || [0,'0'])[1],
	safari: /webkit/.test( userAgent ),
	opera: /opera/.test( userAgent ),
	msie: /msie/.test( userAgent ) && !/opera/.test( userAgent ),
	mozilla: /mozilla/.test( userAgent ) && !/(compatible|webkit)/.test( userAgent )
};

jQuery.each({
	parent: function(elem){return elem.parentNode;},
	parents: function(elem){return jQuery.dir(elem,"parentNode");},
	next: function(elem){return jQuery.nth(elem,2,"nextSibling");},
	prev: function(elem){return jQuery.nth(elem,2,"previousSibling");},
	nextAll: function(elem){return jQuery.dir(elem,"nextSibling");},
	prevAll: function(elem){return jQuery.dir(elem,"previousSibling");},
	siblings: function(elem){return jQuery.sibling(elem.parentNode.firstChild,elem);},
	children: function(elem){return jQuery.sibling(elem.firstChild);},
	contents: function(elem){return jQuery.nodeName(elem,"iframe")?elem.contentDocument||elem.contentWindow.document:jQuery.makeArray(elem.childNodes);}
}, function(name, fn){
	jQuery.fn[ name ] = function( selector ) {
		var ret = jQuery.map( this, fn );

		if ( selector && typeof selector == "string" )
			ret = jQuery.multiFilter( selector, ret );

		return this.pushStack( jQuery.unique( ret ), name, selector );
	};
});

jQuery.each({
	appendTo: "append",
	prependTo: "prepend",
	insertBefore: "before",
	insertAfter: "after",
	replaceAll: "replaceWith"
}, function(name, original){
	jQuery.fn[ name ] = function( selector ) {
		var ret = [], insert = jQuery( selector );

		for ( var i = 0, l = insert.length; i < l; i++ ) {
			var elems = (i > 0 ? this.clone(true) : this).get();
			jQuery.fn[ original ].apply( jQuery(insert[i]), elems );
			ret = ret.concat( elems );
		}

		return this.pushStack( ret, name, selector );
	};
});

jQuery.each({
	removeAttr: function( name ) {
		jQuery.attr( this, name, "" );
		if (this.nodeType == 1)
			this.removeAttribute( name );
	},

	addClass: function( classNames ) {
		jQuery.className.add( this, classNames );
	},

	removeClass: function( classNames ) {
		jQuery.className.remove( this, classNames );
	},

	toggleClass: function( classNames, state ) {
		if( typeof state !== "boolean" )
			state = !jQuery.className.has( this, classNames );
		jQuery.className[ state ? "add" : "remove" ]( this, classNames );
	},

	remove: function( selector ) {
		if ( !selector || jQuery.filter( selector, [ this ] ).length ) {
			// Prevent memory leaks
			jQuery( "*", this ).add([this]).each(function(){
				jQuery.event.remove(this);
				jQuery.removeData(this);
			});
			if (this.parentNode)
				this.parentNode.removeChild( this );
		}
	},

	empty: function() {
		// Remove element nodes and prevent memory leaks
		jQuery(this).children().remove();

		// Remove any remaining nodes
		while ( this.firstChild )
			this.removeChild( this.firstChild );
	}
}, function(name, fn){
	jQuery.fn[ name ] = function(){
		return this.each( fn, arguments );
	};
});

// Helper function used by the dimensions and offset modules
function num(elem, prop) {
	return elem[0] && parseInt( jQuery.curCSS(elem[0], prop, true), 10 ) || 0;
}
var expando = "jQuery" + now(), uuid = 0, windowData = {};

jQuery.extend({
	cache: {},

	data: function( elem, name, data ) {
		elem = elem == window ?
			windowData :
			elem;

		var id = elem[ expando ];

		// Compute a unique ID for the element
		if ( !id )
			id = elem[ expando ] = ++uuid;

		// Only generate the data cache if we're
		// trying to access or manipulate it
		if ( name && !jQuery.cache[ id ] )
			jQuery.cache[ id ] = {};

		// Prevent overriding the named cache with undefined values
		if ( data !== undefined )
			jQuery.cache[ id ][ name ] = data;

		// Return the named cache data, or the ID for the element
		return name ?
			jQuery.cache[ id ][ name ] :
			id;
	},

	removeData: function( elem, name ) {
		elem = elem == window ?
			windowData :
			elem;

		var id = elem[ expando ];

		// If we want to remove a specific section of the element's data
		if ( name ) {
			if ( jQuery.cache[ id ] ) {
				// Remove the section of cache data
				delete jQuery.cache[ id ][ name ];

				// If we've removed all the data, remove the element's cache
				name = "";

				for ( name in jQuery.cache[ id ] )
					break;

				if ( !name )
					jQuery.removeData( elem );
			}

		// Otherwise, we want to remove all of the element's data
		} else {
			// Clean up the element expando
			try {
				delete elem[ expando ];
			} catch(e){
				// IE has trouble directly removing the expando
				// but it's ok with using removeAttribute
				if ( elem.removeAttribute )
					elem.removeAttribute( expando );
			}

			// Completely remove the data cache
			delete jQuery.cache[ id ];
		}
	},
	queue: function( elem, type, data ) {
		if ( elem ){

			type = (type || "fx") + "queue";

			var q = jQuery.data( elem, type );

			if ( !q || jQuery.isArray(data) )
				q = jQuery.data( elem, type, jQuery.makeArray(data) );
			else if( data )
				q.push( data );

		}
		return q;
	},

	dequeue: function( elem, type ){
		var queue = jQuery.queue( elem, type ),
			fn = queue.shift();

		if( !type || type === "fx" )
			fn = queue[0];

		if( fn !== undefined )
			fn.call(elem);
	}
});

jQuery.fn.extend({
	data: function( key, value ){
		var parts = key.split(".");
		parts[1] = parts[1] ? "." + parts[1] : "";

		if ( value === undefined ) {
			var data = this.triggerHandler("getData" + parts[1] + "!", [parts[0]]);

			if ( data === undefined && this.length )
				data = jQuery.data( this[0], key );

			return data === undefined && parts[1] ?
				this.data( parts[0] ) :
				data;
		} else
			return this.trigger("setData" + parts[1] + "!", [parts[0], value]).each(function(){
				jQuery.data( this, key, value );
			});
	},

	removeData: function( key ){
		return this.each(function(){
			jQuery.removeData( this, key );
		});
	},
	queue: function(type, data){
		if ( typeof type !== "string" ) {
			data = type;
			type = "fx";
		}

		if ( data === undefined )
			return jQuery.queue( this[0], type );

		return this.each(function(){
			var queue = jQuery.queue( this, type, data );

			 if( type == "fx" && queue.length == 1 )
				queue[0].call(this);
		});
	},
	dequeue: function(type){
		return this.each(function(){
			jQuery.dequeue( this, type );
		});
	}
});/*!
 * Sizzle CSS Selector Engine - v0.9.3
 *  Copyright 2009, The Dojo Foundation
 *  Released under the MIT, BSD, and GPL Licenses.
 *  More information: http://sizzlejs.com/
 */
(function(){

var chunker = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^[\]]*\]|['"][^'"]*['"]|[^[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?/g,
	done = 0,
	toString = Object.prototype.toString;

var Sizzle = function(selector, context, results, seed) {
	results = results || [];
	context = context || document;

	if ( context.nodeType !== 1 && context.nodeType !== 9 )
		return [];

	if ( !selector || typeof selector !== "string" ) {
		return results;
	}

	var parts = [], m, set, checkSet, check, mode, extra, prune = true;

	// Reset the position of the chunker regexp (start from head)
	chunker.lastIndex = 0;

	while ( (m = chunker.exec(selector)) !== null ) {
		parts.push( m[1] );

		if ( m[2] ) {
			extra = RegExp.rightContext;
			break;
		}
	}

	if ( parts.length > 1 && origPOS.exec( selector ) ) {
		if ( parts.length === 2 && Expr.relative[ parts[0] ] ) {
			set = posProcess( parts[0] + parts[1], context );
		} else {
			set = Expr.relative[ parts[0] ] ?
				[ context ] :
				Sizzle( parts.shift(), context );

			while ( parts.length ) {
				selector = parts.shift();

				if ( Expr.relative[ selector ] )
					selector += parts.shift();

				set = posProcess( selector, set );
			}
		}
	} else {
		var ret = seed ?
			{ expr: parts.pop(), set: makeArray(seed) } :
			Sizzle.find( parts.pop(), parts.length === 1 && context.parentNode ? context.parentNode : context, isXML(context) );
		set = Sizzle.filter( ret.expr, ret.set );

		if ( parts.length > 0 ) {
			checkSet = makeArray(set);
		} else {
			prune = false;
		}

		while ( parts.length ) {
			var cur = parts.pop(), pop = cur;

			if ( !Expr.relative[ cur ] ) {
				cur = "";
			} else {
				pop = parts.pop();
			}

			if ( pop == null ) {
				pop = context;
			}

			Expr.relative[ cur ]( checkSet, pop, isXML(context) );
		}
	}

	if ( !checkSet ) {
		checkSet = set;
	}

	if ( !checkSet ) {
		throw "Syntax error, unrecognized expression: " + (cur || selector);
	}

	if ( toString.call(checkSet) === "[object Array]" ) {
		if ( !prune ) {
			results.push.apply( results, checkSet );
		} else if ( context.nodeType === 1 ) {
			for ( var i = 0; checkSet[i] != null; i++ ) {
				if ( checkSet[i] && (checkSet[i] === true || checkSet[i].nodeType === 1 && contains(context, checkSet[i])) ) {
					results.push( set[i] );
				}
			}
		} else {
			for ( var i = 0; checkSet[i] != null; i++ ) {
				if ( checkSet[i] && checkSet[i].nodeType === 1 ) {
					results.push( set[i] );
				}
			}
		}
	} else {
		makeArray( checkSet, results );
	}

	if ( extra ) {
		Sizzle( extra, context, results, seed );

		if ( sortOrder ) {
			hasDuplicate = false;
			results.sort(sortOrder);

			if ( hasDuplicate ) {
				for ( var i = 1; i < results.length; i++ ) {
					if ( results[i] === results[i-1] ) {
						results.splice(i--, 1);
					}
				}
			}
		}
	}

	return results;
};

Sizzle.matches = function(expr, set){
	return Sizzle(expr, null, null, set);
};

Sizzle.find = function(expr, context, isXML){
	var set, match;

	if ( !expr ) {
		return [];
	}

	for ( var i = 0, l = Expr.order.length; i < l; i++ ) {
		var type = Expr.order[i], match;

		if ( (match = Expr.match[ type ].exec( expr )) ) {
			var left = RegExp.leftContext;

			if ( left.substr( left.length - 1 ) !== "\\" ) {
				match[1] = (match[1] || "").replace(/\\/g, "");
				set = Expr.find[ type ]( match, context, isXML );
				if ( set != null ) {
					expr = expr.replace( Expr.match[ type ], "" );
					break;
				}
			}
		}
	}

	if ( !set ) {
		set = context.getElementsByTagName("*");
	}

	return {set: set, expr: expr};
};

Sizzle.filter = function(expr, set, inplace, not){
	var old = expr, result = [], curLoop = set, match, anyFound,
		isXMLFilter = set && set[0] && isXML(set[0]);

	while ( expr && set.length ) {
		for ( var type in Expr.filter ) {
			if ( (match = Expr.match[ type ].exec( expr )) != null ) {
				var filter = Expr.filter[ type ], found, item;
				anyFound = false;

				if ( curLoop == result ) {
					result = [];
				}

				if ( Expr.preFilter[ type ] ) {
					match = Expr.preFilter[ type ]( match, curLoop, inplace, result, not, isXMLFilter );

					if ( !match ) {
						anyFound = found = true;
					} else if ( match === true ) {
						continue;
					}
				}

				if ( match ) {
					for ( var i = 0; (item = curLoop[i]) != null; i++ ) {
						if ( item ) {
							found = filter( item, match, i, curLoop );
							var pass = not ^ !!found;

							if ( inplace && found != null ) {
								if ( pass ) {
									anyFound = true;
								} else {
									curLoop[i] = false;
								}
							} else if ( pass ) {
								result.push( item );
								anyFound = true;
							}
						}
					}
				}

				if ( found !== undefined ) {
					if ( !inplace ) {
						curLoop = result;
					}

					expr = expr.replace( Expr.match[ type ], "" );

					if ( !anyFound ) {
						return [];
					}

					break;
				}
			}
		}

		// Improper expression
		if ( expr == old ) {
			if ( anyFound == null ) {
				throw "Syntax error, unrecognized expression: " + expr;
			} else {
				break;
			}
		}

		old = expr;
	}

	return curLoop;
};

var Expr = Sizzle.selectors = {
	order: [ "ID", "NAME", "TAG" ],
	match: {
		ID: /#((?:[\w\u00c0-\uFFFF_-]|\\.)+)/,
		CLASS: /\.((?:[\w\u00c0-\uFFFF_-]|\\.)+)/,
		NAME: /\[name=['"]*((?:[\w\u00c0-\uFFFF_-]|\\.)+)['"]*\]/,
		ATTR: /\[\s*((?:[\w\u00c0-\uFFFF_-]|\\.)+)\s*(?:(\S?=)\s*(['"]*)(.*?)\3|)\s*\]/,
		TAG: /^((?:[\w\u00c0-\uFFFF\*_-]|\\.)+)/,
		CHILD: /:(only|nth|last|first)-child(?:\((even|odd|[\dn+-]*)\))?/,
		POS: /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^-]|$)/,
		PSEUDO: /:((?:[\w\u00c0-\uFFFF_-]|\\.)+)(?:\((['"]*)((?:\([^\)]+\)|[^\2\(\)]*)+)\2\))?/
	},
	attrMap: {
		"class": "className",
		"for": "htmlFor"
	},
	attrHandle: {
		href: function(elem){
			return elem.getAttribute("href");
		}
	},
	relative: {
		"+": function(checkSet, part, isXML){
			var isPartStr = typeof part === "string",
				isTag = isPartStr && !/\W/.test(part),
				isPartStrNotTag = isPartStr && !isTag;

			if ( isTag && !isXML ) {
				part = part.toUpperCase();
			}

			for ( var i = 0, l = checkSet.length, elem; i < l; i++ ) {
				if ( (elem = checkSet[i]) ) {
					while ( (elem = elem.previousSibling) && elem.nodeType !== 1 ) {}

					checkSet[i] = isPartStrNotTag || elem && elem.nodeName === part ?
						elem || false :
						elem === part;
				}
			}

			if ( isPartStrNotTag ) {
				Sizzle.filter( part, checkSet, true );
			}
		},
		">": function(checkSet, part, isXML){
			var isPartStr = typeof part === "string";

			if ( isPartStr && !/\W/.test(part) ) {
				part = isXML ? part : part.toUpperCase();

				for ( var i = 0, l = checkSet.length; i < l; i++ ) {
					var elem = checkSet[i];
					if ( elem ) {
						var parent = elem.parentNode;
						checkSet[i] = parent.nodeName === part ? parent : false;
					}
				}
			} else {
				for ( var i = 0, l = checkSet.length; i < l; i++ ) {
					var elem = checkSet[i];
					if ( elem ) {
						checkSet[i] = isPartStr ?
							elem.parentNode :
							elem.parentNode === part;
					}
				}

				if ( isPartStr ) {
					Sizzle.filter( part, checkSet, true );
				}
			}
		},
		"": function(checkSet, part, isXML){
			var doneName = done++, checkFn = dirCheck;

			if ( !part.match(/\W/) ) {
				var nodeCheck = part = isXML ? part : part.toUpperCase();
				checkFn = dirNodeCheck;
			}

			checkFn("parentNode", part, doneName, checkSet, nodeCheck, isXML);
		},
		"~": function(checkSet, part, isXML){
			var doneName = done++, checkFn = dirCheck;

			if ( typeof part === "string" && !part.match(/\W/) ) {
				var nodeCheck = part = isXML ? part : part.toUpperCase();
				checkFn = dirNodeCheck;
			}

			checkFn("previousSibling", part, doneName, checkSet, nodeCheck, isXML);
		}
	},
	find: {
		ID: function(match, context, isXML){
			if ( typeof context.getElementById !== "undefined" && !isXML ) {
				var m = context.getElementById(match[1]);
				return m ? [m] : [];
			}
		},
		NAME: function(match, context, isXML){
			if ( typeof context.getElementsByName !== "undefined" ) {
				var ret = [], results = context.getElementsByName(match[1]);

				for ( var i = 0, l = results.length; i < l; i++ ) {
					if ( results[i].getAttribute("name") === match[1] ) {
						ret.push( results[i] );
					}
				}

				return ret.length === 0 ? null : ret;
			}
		},
		TAG: function(match, context){
			return context.getElementsByTagName(match[1]);
		}
	},
	preFilter: {
		CLASS: function(match, curLoop, inplace, result, not, isXML){
			match = " " + match[1].replace(/\\/g, "") + " ";

			if ( isXML ) {
				return match;
			}

			for ( var i = 0, elem; (elem = curLoop[i]) != null; i++ ) {
				if ( elem ) {
					if ( not ^ (elem.className && (" " + elem.className + " ").indexOf(match) >= 0) ) {
						if ( !inplace )
							result.push( elem );
					} else if ( inplace ) {
						curLoop[i] = false;
					}
				}
			}

			return false;
		},
		ID: function(match){
			return match[1].replace(/\\/g, "");
		},
		TAG: function(match, curLoop){
			for ( var i = 0; curLoop[i] === false; i++ ){}
			return curLoop[i] && isXML(curLoop[i]) ? match[1] : match[1].toUpperCase();
		},
		CHILD: function(match){
			if ( match[1] == "nth" ) {
				// parse equations like 'even', 'odd', '5', '2n', '3n+2', '4n-1', '-n+6'
				var test = /(-?)(\d*)n((?:\+|-)?\d*)/.exec(
					match[2] == "even" && "2n" || match[2] == "odd" && "2n+1" ||
					!/\D/.test( match[2] ) && "0n+" + match[2] || match[2]);

				// calculate the numbers (first)n+(last) including if they are negative
				match[2] = (test[1] + (test[2] || 1)) - 0;
				match[3] = test[3] - 0;
			}

			// TODO: Move to normal caching system
			match[0] = done++;

			return match;
		},
		ATTR: function(match, curLoop, inplace, result, not, isXML){
			var name = match[1].replace(/\\/g, "");

			if ( !isXML && Expr.attrMap[name] ) {
				match[1] = Expr.attrMap[name];
			}

			if ( match[2] === "~=" ) {
				match[4] = " " + match[4] + " ";
			}

			return match;
		},
		PSEUDO: function(match, curLoop, inplace, result, not){
			if ( match[1] === "not" ) {
				// If we're dealing with a complex expression, or a simple one
				if ( match[3].match(chunker).length > 1 || /^\w/.test(match[3]) ) {
					match[3] = Sizzle(match[3], null, null, curLoop);
				} else {
					var ret = Sizzle.filter(match[3], curLoop, inplace, true ^ not);
					if ( !inplace ) {
						result.push.apply( result, ret );
					}
					return false;
				}
			} else if ( Expr.match.POS.test( match[0] ) || Expr.match.CHILD.test( match[0] ) ) {
				return true;
			}

			return match;
		},
		POS: function(match){
			match.unshift( true );
			return match;
		}
	},
	filters: {
		enabled: function(elem){
			return elem.disabled === false && elem.type !== "hidden";
		},
		disabled: function(elem){
			return elem.disabled === true;
		},
		checked: function(elem){
			return elem.checked === true;
		},
		selected: function(elem){
			// Accessing this property makes selected-by-default
			// options in Safari work properly
			elem.parentNode.selectedIndex;
			return elem.selected === true;
		},
		parent: function(elem){
			return !!elem.firstChild;
		},
		empty: function(elem){
			return !elem.firstChild;
		},
		has: function(elem, i, match){
			return !!Sizzle( match[3], elem ).length;
		},
		header: function(elem){
			return /h\d/i.test( elem.nodeName );
		},
		text: function(elem){
			return "text" === elem.type;
		},
		radio: function(elem){
			return "radio" === elem.type;
		},
		checkbox: function(elem){
			return "checkbox" === elem.type;
		},
		file: function(elem){
			return "file" === elem.type;
		},
		password: function(elem){
			return "password" === elem.type;
		},
		submit: function(elem){
			return "submit" === elem.type;
		},
		image: function(elem){
			return "image" === elem.type;
		},
		reset: function(elem){
			return "reset" === elem.type;
		},
		button: function(elem){
			return "button" === elem.type || elem.nodeName.toUpperCase() === "BUTTON";
		},
		input: function(elem){
			return /input|select|textarea|button/i.test(elem.nodeName);
		}
	},
	setFilters: {
		first: function(elem, i){
			return i === 0;
		},
		last: function(elem, i, match, array){
			return i === array.length - 1;
		},
		even: function(elem, i){
			return i % 2 === 0;
		},
		odd: function(elem, i){
			return i % 2 === 1;
		},
		lt: function(elem, i, match){
			return i < match[3] - 0;
		},
		gt: function(elem, i, match){
			return i > match[3] - 0;
		},
		nth: function(elem, i, match){
			return match[3] - 0 == i;
		},
		eq: function(elem, i, match){
			return match[3] - 0 == i;
		}
	},
	filter: {
		PSEUDO: function(elem, match, i, array){
			var name = match[1], filter = Expr.filters[ name ];

			if ( filter ) {
				return filter( elem, i, match, array );
			} else if ( name === "contains" ) {
				return (elem.textContent || elem.innerText || "").indexOf(match[3]) >= 0;
			} else if ( name === "not" ) {
				var not = match[3];

				for ( var i = 0, l = not.length; i < l; i++ ) {
					if ( not[i] === elem ) {
						return false;
					}
				}

				return true;
			}
		},
		CHILD: function(elem, match){
			var type = match[1], node = elem;
			switch (type) {
				case 'only':
				case 'first':
					while (node = node.previousSibling)  {
						if ( node.nodeType === 1 ) return false;
					}
					if ( type == 'first') return true;
					node = elem;
				case 'last':
					while (node = node.nextSibling)  {
						if ( node.nodeType === 1 ) return false;
					}
					return true;
				case 'nth':
					var first = match[2], last = match[3];

					if ( first == 1 && last == 0 ) {
						return true;
					}

					var doneName = match[0],
						parent = elem.parentNode;

					if ( parent && (parent.sizcache !== doneName || !elem.nodeIndex) ) {
						var count = 0;
						for ( node = parent.firstChild; node; node = node.nextSibling ) {
							if ( node.nodeType === 1 ) {
								node.nodeIndex = ++count;
							}
						}
						parent.sizcache = doneName;
					}

					var diff = elem.nodeIndex - last;
					if ( first == 0 ) {
						return diff == 0;
					} else {
						return ( diff % first == 0 && diff / first >= 0 );
					}
			}
		},
		ID: function(elem, match){
			return elem.nodeType === 1 && elem.getAttribute("id") === match;
		},
		TAG: function(elem, match){
			return (match === "*" && elem.nodeType === 1) || elem.nodeName === match;
		},
		CLASS: function(elem, match){
			return (" " + (elem.className || elem.getAttribute("class")) + " ")
				.indexOf( match ) > -1;
		},
		ATTR: function(elem, match){
			var name = match[1],
				result = Expr.attrHandle[ name ] ?
					Expr.attrHandle[ name ]( elem ) :
					elem[ name ] != null ?
						elem[ name ] :
						elem.getAttribute( name ),
				value = result + "",
				type = match[2],
				check = match[4];

			return result == null ?
				type === "!=" :
				type === "=" ?
				value === check :
				type === "*=" ?
				value.indexOf(check) >= 0 :
				type === "~=" ?
				(" " + value + " ").indexOf(check) >= 0 :
				!check ?
				value && result !== false :
				type === "!=" ?
				value != check :
				type === "^=" ?
				value.indexOf(check) === 0 :
				type === "$=" ?
				value.substr(value.length - check.length) === check :
				type === "|=" ?
				value === check || value.substr(0, check.length + 1) === check + "-" :
				false;
		},
		POS: function(elem, match, i, array){
			var name = match[2], filter = Expr.setFilters[ name ];

			if ( filter ) {
				return filter( elem, i, match, array );
			}
		}
	}
};

var origPOS = Expr.match.POS;

for ( var type in Expr.match ) {
	Expr.match[ type ] = RegExp( Expr.match[ type ].source + /(?![^\[]*\])(?![^\(]*\))/.source );
}

var makeArray = function(array, results) {
	array = Array.prototype.slice.call( array );

	if ( results ) {
		results.push.apply( results, array );
		return results;
	}

	return array;
};

// Perform a simple check to determine if the browser is capable of
// converting a NodeList to an array using builtin methods.
try {
	Array.prototype.slice.call( document.documentElement.childNodes );

// Provide a fallback method if it does not work
} catch(e){
	makeArray = function(array, results) {
		var ret = results || [];

		if ( toString.call(array) === "[object Array]" ) {
			Array.prototype.push.apply( ret, array );
		} else {
			if ( typeof array.length === "number" ) {
				for ( var i = 0, l = array.length; i < l; i++ ) {
					ret.push( array[i] );
				}
			} else {
				for ( var i = 0; array[i]; i++ ) {
					ret.push( array[i] );
				}
			}
		}

		return ret;
	};
}

var sortOrder;

if ( document.documentElement.compareDocumentPosition ) {
	sortOrder = function( a, b ) {
		var ret = a.compareDocumentPosition(b) & 4 ? -1 : a === b ? 0 : 1;
		if ( ret === 0 ) {
			hasDuplicate = true;
		}
		return ret;
	};
} else if ( "sourceIndex" in document.documentElement ) {
	sortOrder = function( a, b ) {
		var ret = a.sourceIndex - b.sourceIndex;
		if ( ret === 0 ) {
			hasDuplicate = true;
		}
		return ret;
	};
} else if ( document.createRange ) {
	sortOrder = function( a, b ) {
		var aRange = a.ownerDocument.createRange(), bRange = b.ownerDocument.createRange();
		aRange.selectNode(a);
		aRange.collapse(true);
		bRange.selectNode(b);
		bRange.collapse(true);
		var ret = aRange.compareBoundaryPoints(Range.START_TO_END, bRange);
		if ( ret === 0 ) {
			hasDuplicate = true;
		}
		return ret;
	};
}

// Check to see if the browser returns elements by name when
// querying by getElementById (and provide a workaround)
(function(){
	// We're going to inject a fake input element with a specified name
	var form = document.createElement("form"),
		id = "script" + (new Date).getTime();
	form.innerHTML = "<input name='" + id + "'/>";

	// Inject it into the root element, check its status, and remove it quickly
	var root = document.documentElement;
	root.insertBefore( form, root.firstChild );

	// The workaround has to do additional checks after a getElementById
	// Which slows things down for other browsers (hence the branching)
	if ( !!document.getElementById( id ) ) {
		Expr.find.ID = function(match, context, isXML){
			if ( typeof context.getElementById !== "undefined" && !isXML ) {
				var m = context.getElementById(match[1]);
				return m ? m.id === match[1] || typeof m.getAttributeNode !== "undefined" && m.getAttributeNode("id").nodeValue === match[1] ? [m] : undefined : [];
			}
		};

		Expr.filter.ID = function(elem, match){
			var node = typeof elem.getAttributeNode !== "undefined" && elem.getAttributeNode("id");
			return elem.nodeType === 1 && node && node.nodeValue === match;
		};
	}

	root.removeChild( form );
})();

(function(){
	// Check to see if the browser returns only elements
	// when doing getElementsByTagName("*")

	// Create a fake element
	var div = document.createElement("div");
	div.appendChild( document.createComment("") );

	// Make sure no comments are found
	if ( div.getElementsByTagName("*").length > 0 ) {
		Expr.find.TAG = function(match, context){
			var results = context.getElementsByTagName(match[1]);

			// Filter out possible comments
			if ( match[1] === "*" ) {
				var tmp = [];

				for ( var i = 0; results[i]; i++ ) {
					if ( results[i].nodeType === 1 ) {
						tmp.push( results[i] );
					}
				}

				results = tmp;
			}

			return results;
		};
	}

	// Check to see if an attribute returns normalized href attributes
	div.innerHTML = "<a href='#'></a>";
	if ( div.firstChild && typeof div.firstChild.getAttribute !== "undefined" &&
			div.firstChild.getAttribute("href") !== "#" ) {
		Expr.attrHandle.href = function(elem){
			return elem.getAttribute("href", 2);
		};
	}
})();

if ( document.querySelectorAll ) (function(){
	var oldSizzle = Sizzle, div = document.createElement("div");
	div.innerHTML = "<p class='TEST'></p>";

	// Safari can't handle uppercase or unicode characters when
	// in quirks mode.
	if ( div.querySelectorAll && div.querySelectorAll(".TEST").length === 0 ) {
		return;
	}

	Sizzle = function(query, context, extra, seed){
		context = context || document;

		// Only use querySelectorAll on non-XML documents
		// (ID selectors don't work in non-HTML documents)
		if ( !seed && context.nodeType === 9 && !isXML(context) ) {
			try {
				return makeArray( context.querySelectorAll(query), extra );
			} catch(e){}
		}

		return oldSizzle(query, context, extra, seed);
	};

	Sizzle.find = oldSizzle.find;
	Sizzle.filter = oldSizzle.filter;
	Sizzle.selectors = oldSizzle.selectors;
	Sizzle.matches = oldSizzle.matches;
})();

if ( document.getElementsByClassName && document.documentElement.getElementsByClassName ) (function(){
	var div = document.createElement("div");
	div.innerHTML = "<div class='test e'></div><div class='test'></div>";

	// Opera can't find a second classname (in 9.6)
	if ( div.getElementsByClassName("e").length === 0 )
		return;

	// Safari caches class attributes, doesn't catch changes (in 3.2)
	div.lastChild.className = "e";

	if ( div.getElementsByClassName("e").length === 1 )
		return;

	Expr.order.splice(1, 0, "CLASS");
	Expr.find.CLASS = function(match, context, isXML) {
		if ( typeof context.getElementsByClassName !== "undefined" && !isXML ) {
			return context.getElementsByClassName(match[1]);
		}
	};
})();

function dirNodeCheck( dir, cur, doneName, checkSet, nodeCheck, isXML ) {
	var sibDir = dir == "previousSibling" && !isXML;
	for ( var i = 0, l = checkSet.length; i < l; i++ ) {
		var elem = checkSet[i];
		if ( elem ) {
			if ( sibDir && elem.nodeType === 1 ){
				elem.sizcache = doneName;
				elem.sizset = i;
			}
			elem = elem[dir];
			var match = false;

			while ( elem ) {
				if ( elem.sizcache === doneName ) {
					match = checkSet[elem.sizset];
					break;
				}

				if ( elem.nodeType === 1 && !isXML ){
					elem.sizcache = doneName;
					elem.sizset = i;
				}

				if ( elem.nodeName === cur ) {
					match = elem;
					break;
				}

				elem = elem[dir];
			}

			checkSet[i] = match;
		}
	}
}

function dirCheck( dir, cur, doneName, checkSet, nodeCheck, isXML ) {
	var sibDir = dir == "previousSibling" && !isXML;
	for ( var i = 0, l = checkSet.length; i < l; i++ ) {
		var elem = checkSet[i];
		if ( elem ) {
			if ( sibDir && elem.nodeType === 1 ) {
				elem.sizcache = doneName;
				elem.sizset = i;
			}
			elem = elem[dir];
			var match = false;

			while ( elem ) {
				if ( elem.sizcache === doneName ) {
					match = checkSet[elem.sizset];
					break;
				}

				if ( elem.nodeType === 1 ) {
					if ( !isXML ) {
						elem.sizcache = doneName;
						elem.sizset = i;
					}
					if ( typeof cur !== "string" ) {
						if ( elem === cur ) {
							match = true;
							break;
						}

					} else if ( Sizzle.filter( cur, [elem] ).length > 0 ) {
						match = elem;
						break;
					}
				}

				elem = elem[dir];
			}

			checkSet[i] = match;
		}
	}
}

var contains = document.compareDocumentPosition ?  function(a, b){
	return a.compareDocumentPosition(b) & 16;
} : function(a, b){
	return a !== b && (a.contains ? a.contains(b) : true);
};

var isXML = function(elem){
	return elem.nodeType === 9 && elem.documentElement.nodeName !== "HTML" ||
		!!elem.ownerDocument && isXML( elem.ownerDocument );
};

var posProcess = function(selector, context){
	var tmpSet = [], later = "", match,
		root = context.nodeType ? [context] : context;

	// Position selectors must be done after the filter
	// And so must :not(positional) so we move all PSEUDOs to the end
	while ( (match = Expr.match.PSEUDO.exec( selector )) ) {
		later += match[0];
		selector = selector.replace( Expr.match.PSEUDO, "" );
	}

	selector = Expr.relative[selector] ? selector + "*" : selector;

	for ( var i = 0, l = root.length; i < l; i++ ) {
		Sizzle( selector, root[i], tmpSet );
	}

	return Sizzle.filter( later, tmpSet );
};

// EXPOSE
jQuery.find = Sizzle;
jQuery.filter = Sizzle.filter;
jQuery.expr = Sizzle.selectors;
jQuery.expr[":"] = jQuery.expr.filters;

Sizzle.selectors.filters.hidden = function(elem){
	return elem.offsetWidth === 0 || elem.offsetHeight === 0;
};

Sizzle.selectors.filters.visible = function(elem){
	return elem.offsetWidth > 0 || elem.offsetHeight > 0;
};

Sizzle.selectors.filters.animated = function(elem){
	return jQuery.grep(jQuery.timers, function(fn){
		return elem === fn.elem;
	}).length;
};

jQuery.multiFilter = function( expr, elems, not ) {
	if ( not ) {
		expr = ":not(" + expr + ")";
	}

	return Sizzle.matches(expr, elems);
};

jQuery.dir = function( elem, dir ){
	var matched = [], cur = elem[dir];
	while ( cur && cur != document ) {
		if ( cur.nodeType == 1 )
			matched.push( cur );
		cur = cur[dir];
	}
	return matched;
};

jQuery.nth = function(cur, result, dir, elem){
	result = result || 1;
	var num = 0;

	for ( ; cur; cur = cur[dir] )
		if ( cur.nodeType == 1 && ++num == result )
			break;

	return cur;
};

jQuery.sibling = function(n, elem){
	var r = [];

	for ( ; n; n = n.nextSibling ) {
		if ( n.nodeType == 1 && n != elem )
			r.push( n );
	}

	return r;
};

return;

window.Sizzle = Sizzle;

})();
/*
 * A number of helper functions used for managing events.
 * Many of the ideas behind this code originated from
 * Dean Edwards' addEvent library.
 */
jQuery.event = {

	// Bind an event to an element
	// Original by Dean Edwards
	add: function(elem, types, handler, data) {
		if ( elem.nodeType == 3 || elem.nodeType == 8 )
			return;

		// For whatever reason, IE has trouble passing the window object
		// around, causing it to be cloned in the process
		if ( elem.setInterval && elem != window )
			elem = window;

		// Make sure that the function being executed has a unique ID
		if ( !handler.guid )
			handler.guid = this.guid++;

		// if data is passed, bind to handler
		if ( data !== undefined ) {
			// Create temporary function pointer to original handler
			var fn = handler;

			// Create unique handler function, wrapped around original handler
			handler = this.proxy( fn );

			// Store data in unique handler
			handler.data = data;
		}

		// Init the element's event structure
		var events = jQuery.data(elem, "events") || jQuery.data(elem, "events", {}),
			handle = jQuery.data(elem, "handle") || jQuery.data(elem, "handle", function(){
				// Handle the second event of a trigger and when
				// an event is called after a page has unloaded
				return typeof jQuery !== "undefined" && !jQuery.event.triggered ?
					jQuery.event.handle.apply(arguments.callee.elem, arguments) :
					undefined;
			});
		// Add elem as a property of the handle function
		// This is to prevent a memory leak with non-native
		// event in IE.
		handle.elem = elem;

		// Handle multiple events separated by a space
		// jQuery(...).bind("mouseover mouseout", fn);
		jQuery.each(types.split(/\s+/), function(index, type) {
			// Namespaced event handlers
			var namespaces = type.split(".");
			type = namespaces.shift();
			handler.type = namespaces.slice().sort().join(".");

			// Get the current list of functions bound to this event
			var handlers = events[type];

			if ( jQuery.event.specialAll[type] )
				jQuery.event.specialAll[type].setup.call(elem, data, namespaces);

			// Init the event handler queue
			if (!handlers) {
				handlers = events[type] = {};

				// Check for a special event handler
				// Only use addEventListener/attachEvent if the special
				// events handler returns false
				if ( !jQuery.event.special[type] || jQuery.event.special[type].setup.call(elem, data, namespaces) === false ) {
					// Bind the global event handler to the element
					if (elem.addEventListener)
						elem.addEventListener(type, handle, false);
					else if (elem.attachEvent)
						elem.attachEvent("on" + type, handle);
				}
			}

			// Add the function to the element's handler list
			handlers[handler.guid] = handler;

			// Keep track of which events have been used, for global triggering
			jQuery.event.global[type] = true;
		});

		// Nullify elem to prevent memory leaks in IE
		elem = null;
	},

	guid: 1,
	global: {},

	// Detach an event or set of events from an element
	remove: function(elem, types, handler) {
		// don't do events on text and comment nodes
		if ( elem.nodeType == 3 || elem.nodeType == 8 )
			return;

		var events = jQuery.data(elem, "events"), ret, index;

		if ( events ) {
			// Unbind all events for the element
			if ( types === undefined || (typeof types === "string" && types.charAt(0) == ".") )
				for ( var type in events )
					this.remove( elem, type + (types || "") );
			else {
				// types is actually an event object here
				if ( types.type ) {
					handler = types.handler;
					types = types.type;
				}

				// Handle multiple events seperated by a space
				// jQuery(...).unbind("mouseover mouseout", fn);
				jQuery.each(types.split(/\s+/), function(index, type){
					// Namespaced event handlers
					var namespaces = type.split(".");
					type = namespaces.shift();
					var namespace = RegExp("(^|\\.)" + namespaces.slice().sort().join(".*\\.") + "(\\.|$)");

					if ( events[type] ) {
						// remove the given handler for the given type
						if ( handler )
							delete events[type][handler.guid];

						// remove all handlers for the given type
						else
							for ( var handle in events[type] )
								// Handle the removal of namespaced events
								if ( namespace.test(events[type][handle].type) )
									delete events[type][handle];

						if ( jQuery.event.specialAll[type] )
							jQuery.event.specialAll[type].teardown.call(elem, namespaces);

						// remove generic event handler if no more handlers exist
						for ( ret in events[type] ) break;
						if ( !ret ) {
							if ( !jQuery.event.special[type] || jQuery.event.special[type].teardown.call(elem, namespaces) === false ) {
								if (elem.removeEventListener)
									elem.removeEventListener(type, jQuery.data(elem, "handle"), false);
								else if (elem.detachEvent)
									elem.detachEvent("on" + type, jQuery.data(elem, "handle"));
							}
							ret = null;
							delete events[type];
						}
					}
				});
			}

			// Remove the expando if it's no longer used
			for ( ret in events ) break;
			if ( !ret ) {
				var handle = jQuery.data( elem, "handle" );
				if ( handle ) handle.elem = null;
				jQuery.removeData( elem, "events" );
				jQuery.removeData( elem, "handle" );
			}
		}
	},

	// bubbling is internal
	trigger: function( event, data, elem, bubbling ) {
		// Event object or event type
		var type = event.type || event;

		if( !bubbling ){
			event = typeof event === "object" ?
				// jQuery.Event object
				event[expando] ? event :
				// Object literal
				jQuery.extend( jQuery.Event(type), event ) :
				// Just the event type (string)
				jQuery.Event(type);

			if ( type.indexOf("!") >= 0 ) {
				event.type = type = type.slice(0, -1);
				event.exclusive = true;
			}

			// Handle a global trigger
			if ( !elem ) {
				// Don't bubble custom events when global (to avoid too much overhead)
				event.stopPropagation();
				// Only trigger if we've ever bound an event for it
				if ( this.global[type] )
					jQuery.each( jQuery.cache, function(){
						if ( this.events && this.events[type] )
							jQuery.event.trigger( event, data, this.handle.elem );
					});
			}

			// Handle triggering a single element

			// don't do events on text and comment nodes
			if ( !elem || elem.nodeType == 3 || elem.nodeType == 8 )
				return undefined;

			// Clean up in case it is reused
			event.result = undefined;
			event.target = elem;

			// Clone the incoming data, if any
			data = jQuery.makeArray(data);
			data.unshift( event );
		}

		event.currentTarget = elem;

		// Trigger the event, it is assumed that "handle" is a function
		var handle = jQuery.data(elem, "handle");
		if ( handle )
			handle.apply( elem, data );

		// Handle triggering native .onfoo handlers (and on links since we don't call .click() for links)
		if ( (!elem[type] || (jQuery.nodeName(elem, 'a') && type == "click")) && elem["on"+type] && elem["on"+type].apply( elem, data ) === false )
			event.result = false;

		// Trigger the native events (except for clicks on links)
		if ( !bubbling && elem[type] && !event.isDefaultPrevented() && !(jQuery.nodeName(elem, 'a') && type == "click") ) {
			this.triggered = true;
			try {
				elem[ type ]();
			// prevent IE from throwing an error for some hidden elements
			} catch (e) {}
		}

		this.triggered = false;

		if ( !event.isPropagationStopped() ) {
			var parent = elem.parentNode || elem.ownerDocument;
			if ( parent )
				jQuery.event.trigger(event, data, parent, true);
		}
	},

	handle: function(event) {
		// returned undefined or false
		var all, handlers;

		event = arguments[0] = jQuery.event.fix( event || window.event );
		event.currentTarget = this;

		// Namespaced event handlers
		var namespaces = event.type.split(".");
		event.type = namespaces.shift();

		// Cache this now, all = true means, any handler
		all = !namespaces.length && !event.exclusive;

		var namespace = RegExp("(^|\\.)" + namespaces.slice().sort().join(".*\\.") + "(\\.|$)");

		handlers = ( jQuery.data(this, "events") || {} )[event.type];

		for ( var j in handlers ) {
			var handler = handlers[j];

			// Filter the functions by class
			if ( all || namespace.test(handler.type) ) {
				// Pass in a reference to the handler function itself
				// So that we can later remove it
				event.handler = handler;
				event.data = handler.data;

				var ret = handler.apply(this, arguments);

				if( ret !== undefined ){
					event.result = ret;
					if ( ret === false ) {
						event.preventDefault();
						event.stopPropagation();
					}
				}

				if( event.isImmediatePropagationStopped() )
					break;

			}
		}
	},

	props: "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode metaKey newValue originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),

	fix: function(event) {
		if ( event[expando] )
			return event;

		// store a copy of the original event object
		// and "clone" to set read-only properties
		var originalEvent = event;
		event = jQuery.Event( originalEvent );

		for ( var i = this.props.length, prop; i; ){
			prop = this.props[ --i ];
			event[ prop ] = originalEvent[ prop ];
		}

		// Fix target property, if necessary
		if ( !event.target )
			event.target = event.srcElement || document; // Fixes #1925 where srcElement might not be defined either

		// check if target is a textnode (safari)
		if ( event.target.nodeType == 3 )
			event.target = event.target.parentNode;

		// Add relatedTarget, if necessary
		if ( !event.relatedTarget && event.fromElement )
			event.relatedTarget = event.fromElement == event.target ? event.toElement : event.fromElement;

		// Calculate pageX/Y if missing and clientX/Y available
		if ( event.pageX == null && event.clientX != null ) {
			var doc = document.documentElement, body = document.body;
			event.pageX = event.clientX + (doc && doc.scrollLeft || body && body.scrollLeft || 0) - (doc.clientLeft || 0);
			event.pageY = event.clientY + (doc && doc.scrollTop || body && body.scrollTop || 0) - (doc.clientTop || 0);
		}

		// Add which for key events
		if ( !event.which && ((event.charCode || event.charCode === 0) ? event.charCode : event.keyCode) )
			event.which = event.charCode || event.keyCode;

		// Add metaKey to non-Mac browsers (use ctrl for PC's and Meta for Macs)
		if ( !event.metaKey && event.ctrlKey )
			event.metaKey = event.ctrlKey;

		// Add which for click: 1 == left; 2 == middle; 3 == right
		// Note: button is not normalized, so don't use it
		if ( !event.which && event.button )
			event.which = (event.button & 1 ? 1 : ( event.button & 2 ? 3 : ( event.button & 4 ? 2 : 0 ) ));

		return event;
	},

	proxy: function( fn, proxy ){
		proxy = proxy || function(){ return fn.apply(this, arguments); };
		// Set the guid of unique handler to the same of original handler, so it can be removed
		proxy.guid = fn.guid = fn.guid || proxy.guid || this.guid++;
		// So proxy can be declared as an argument
		return proxy;
	},

	special: {
		ready: {
			// Make sure the ready event is setup
			setup: bindReady,
			teardown: function() {}
		}
	},

	specialAll: {
		live: {
			setup: function( selector, namespaces ){
				jQuery.event.add( this, namespaces[0], liveHandler );
			},
			teardown:  function( namespaces ){
				if ( namespaces.length ) {
					var remove = 0, name = RegExp("(^|\\.)" + namespaces[0] + "(\\.|$)");

					jQuery.each( (jQuery.data(this, "events").live || {}), function(){
						if ( name.test(this.type) )
							remove++;
					});

					if ( remove < 1 )
						jQuery.event.remove( this, namespaces[0], liveHandler );
				}
			}
		}
	}
};

jQuery.Event = function( src ){
	// Allow instantiation without the 'new' keyword
	if( !this.preventDefault )
		return new jQuery.Event(src);

	// Event object
	if( src && src.type ){
		this.originalEvent = src;
		this.type = src.type;
	// Event type
	}else
		this.type = src;

	// timeStamp is buggy for some events on Firefox(#3843)
	// So we won't rely on the native value
	this.timeStamp = now();

	// Mark it as fixed
	this[expando] = true;
};

function returnFalse(){
	return false;
}
function returnTrue(){
	return true;
}

// jQuery.Event is based on DOM3 Events as specified by the ECMAScript Language Binding
// http://www.w3.org/TR/2003/WD-DOM-Level-3-Events-20030331/ecma-script-binding.html
jQuery.Event.prototype = {
	preventDefault: function() {
		this.isDefaultPrevented = returnTrue;

		var e = this.originalEvent;
		if( !e )
			return;
		// if preventDefault exists run it on the original event
		if (e.preventDefault)
			e.preventDefault();
		// otherwise set the returnValue property of the original event to false (IE)
		e.returnValue = false;
	},
	stopPropagation: function() {
		this.isPropagationStopped = returnTrue;

		var e = this.originalEvent;
		if( !e )
			return;
		// if stopPropagation exists run it on the original event
		if (e.stopPropagation)
			e.stopPropagation();
		// otherwise set the cancelBubble property of the original event to true (IE)
		e.cancelBubble = true;
	},
	stopImmediatePropagation:function(){
		this.isImmediatePropagationStopped = returnTrue;
		this.stopPropagation();
	},
	isDefaultPrevented: returnFalse,
	isPropagationStopped: returnFalse,
	isImmediatePropagationStopped: returnFalse
};
// Checks if an event happened on an element within another element
// Used in jQuery.event.special.mouseenter and mouseleave handlers
var withinElement = function(event) {
	// Check if mouse(over|out) are still within the same parent element
	var parent = event.relatedTarget;
	// Traverse up the tree
	while ( parent && parent != this )
		try { parent = parent.parentNode; }
		catch(e) { parent = this; }

	if( parent != this ){
		// set the correct event type
		event.type = event.data;
		// handle event if we actually just moused on to a non sub-element
		jQuery.event.handle.apply( this, arguments );
	}
};

jQuery.each({
	mouseover: 'mouseenter',
	mouseout: 'mouseleave'
}, function( orig, fix ){
	jQuery.event.special[ fix ] = {
		setup: function(){
			jQuery.event.add( this, orig, withinElement, fix );
		},
		teardown: function(){
			jQuery.event.remove( this, orig, withinElement );
		}
	};
});

jQuery.fn.extend({
	bind: function( type, data, fn ) {
		return type == "unload" ? this.one(type, data, fn) : this.each(function(){
			jQuery.event.add( this, type, fn || data, fn && data );
		});
	},

	one: function( type, data, fn ) {
		var one = jQuery.event.proxy( fn || data, function(event) {
			jQuery(this).unbind(event, one);
			return (fn || data).apply( this, arguments );
		});
		return this.each(function(){
			jQuery.event.add( this, type, one, fn && data);
		});
	},

	unbind: function( type, fn ) {
		return this.each(function(){
			jQuery.event.remove( this, type, fn );
		});
	},

	trigger: function( type, data ) {
		return this.each(function(){
			jQuery.event.trigger( type, data, this );
		});
	},

	triggerHandler: function( type, data ) {
		if( this[0] ){
			var event = jQuery.Event(type);
			event.preventDefault();
			event.stopPropagation();
			jQuery.event.trigger( event, data, this[0] );
			return event.result;
		}
	},

	toggle: function( fn ) {
		// Save reference to arguments for access in closure
		var args = arguments, i = 1;

		// link all the functions, so any of them can unbind this click handler
		while( i < args.length )
			jQuery.event.proxy( fn, args[i++] );

		return this.click( jQuery.event.proxy( fn, function(event) {
			// Figure out which function to execute
			this.lastToggle = ( this.lastToggle || 0 ) % i;

			// Make sure that clicks stop
			event.preventDefault();

			// and execute the function
			return args[ this.lastToggle++ ].apply( this, arguments ) || false;
		}));
	},

	hover: function(fnOver, fnOut) {
		return this.mouseenter(fnOver).mouseleave(fnOut);
	},

	ready: function(fn) {
		// Attach the listeners
		bindReady();

		// If the DOM is already ready
		if ( jQuery.isReady )
			// Execute the function immediately
			fn.call( document, jQuery );

		// Otherwise, remember the function for later
		else
			// Add the function to the wait list
			jQuery.readyList.push( fn );

		return this;
	},

	live: function( type, fn ){
		var proxy = jQuery.event.proxy( fn );
		proxy.guid += this.selector + type;

		jQuery(document).bind( liveConvert(type, this.selector), this.selector, proxy );

		return this;
	},

	die: function( type, fn ){
		jQuery(document).unbind( liveConvert(type, this.selector), fn ? { guid: fn.guid + this.selector + type } : null );
		return this;
	}
});

function liveHandler( event ){
	var check = RegExp("(^|\\.)" + event.type + "(\\.|$)"),
		stop = true,
		elems = [];

	jQuery.each(jQuery.data(this, "events").live || [], function(i, fn){
		if ( check.test(fn.type) ) {
			var elem = jQuery(event.target).closest(fn.data)[0];
			if ( elem )
				elems.push({ elem: elem, fn: fn });
		}
	});

	elems.sort(function(a,b) {
		return jQuery.data(a.elem, "closest") - jQuery.data(b.elem, "closest");
	});

	jQuery.each(elems, function(){
		if ( this.fn.call(this.elem, event, this.fn.data) === false )
			return (stop = false);
	});

	return stop;
}

function liveConvert(type, selector){
	return ["live", type, selector.replace(/\./g, "`").replace(/ /g, "|")].join(".");
}

jQuery.extend({
	isReady: false,
	readyList: [],
	// Handle when the DOM is ready
	ready: function() {
		// Make sure that the DOM is not already loaded
		if ( !jQuery.isReady ) {
			// Remember that the DOM is ready
			jQuery.isReady = true;

			// If there are functions bound, to execute
			if ( jQuery.readyList ) {
				// Execute all of them
				jQuery.each( jQuery.readyList, function(){
					this.call( document, jQuery );
				});

				// Reset the list of functions
				jQuery.readyList = null;
			}

			// Trigger any bound ready events
			jQuery(document).triggerHandler("ready");
		}
	}
});

var readyBound = false;

function bindReady(){
	if ( readyBound ) return;
	readyBound = true;

	// Mozilla, Opera and webkit nightlies currently support this event
	if ( document.addEventListener ) {
		// Use the handy event callback
		document.addEventListener( "DOMContentLoaded", function(){
			document.removeEventListener( "DOMContentLoaded", arguments.callee, false );
			jQuery.ready();
		}, false );

	// If IE event model is used
	} else if ( document.attachEvent ) {
		// ensure firing before onload,
		// maybe late but safe also for iframes
		document.attachEvent("onreadystatechange", function(){
			if ( document.readyState === "complete" ) {
				document.detachEvent( "onreadystatechange", arguments.callee );
				jQuery.ready();
			}
		});

		// If IE and not an iframe
		// continually check to see if the document is ready
		if ( document.documentElement.doScroll && window == window.top ) (function(){
			if ( jQuery.isReady ) return;

			try {
				// If IE is used, use the trick by Diego Perini
				// http://javascript.nwbox.com/IEContentLoaded/
				document.documentElement.doScroll("left");
			} catch( error ) {
				setTimeout( arguments.callee, 0 );
				return;
			}

			// and execute any waiting functions
			jQuery.ready();
		})();
	}

	// A fallback to window.onload, that will always work
	jQuery.event.add( window, "load", jQuery.ready );
}

jQuery.each( ("blur,focus,load,resize,scroll,unload,click,dblclick," +
	"mousedown,mouseup,mousemove,mouseover,mouseout,mouseenter,mouseleave," +
	"change,select,submit,keydown,keypress,keyup,error").split(","), function(i, name){

	// Handle event binding
	jQuery.fn[name] = function(fn){
		return fn ? this.bind(name, fn) : this.trigger(name);
	};
});

// Prevent memory leaks in IE
// And prevent errors on refresh with events like mouseover in other browsers
// Window isn't included so as not to unbind existing unload events
jQuery( window ).bind( 'unload', function(){
	for ( var id in jQuery.cache )
		// Skip the window
		if ( id != 1 && jQuery.cache[ id ].handle )
			jQuery.event.remove( jQuery.cache[ id ].handle.elem );
});
(function(){

	jQuery.support = {};

	var root = document.documentElement,
		script = document.createElement("script"),
		div = document.createElement("div"),
		id = "script" + (new Date).getTime();

	div.style.display = "none";
	div.innerHTML = '   <link/><table></table><a href="/a" style="color:red;float:left;opacity:.5;">a</a><select><option>text</option></select><object><param/></object>';

	var all = div.getElementsByTagName("*"),
		a = div.getElementsByTagName("a")[0];

	// Can't get basic test support
	if ( !all || !all.length || !a ) {
		return;
	}

	jQuery.support = {
		// IE strips leading whitespace when .innerHTML is used
		leadingWhitespace: div.firstChild.nodeType == 3,

		// Make sure that tbody elements aren't automatically inserted
		// IE will insert them into empty tables
		tbody: !div.getElementsByTagName("tbody").length,

		// Make sure that you can get all elements in an <object> element
		// IE 7 always returns no results
		objectAll: !!div.getElementsByTagName("object")[0]
			.getElementsByTagName("*").length,

		// Make sure that link elements get serialized correctly by innerHTML
		// This requires a wrapper element in IE
		htmlSerialize: !!div.getElementsByTagName("link").length,

		// Get the style information from getAttribute
		// (IE uses .cssText insted)
		style: /red/.test( a.getAttribute("style") ),

		// Make sure that URLs aren't manipulated
		// (IE normalizes it by default)
		hrefNormalized: a.getAttribute("href") === "/a",

		// Make sure that element opacity exists
		// (IE uses filter instead)
		opacity: a.style.opacity === "0.5",

		// Verify style float existence
		// (IE uses styleFloat instead of cssFloat)
		cssFloat: !!a.style.cssFloat,

		// Will be defined later
		scriptEval: false,
		noCloneEvent: true,
		boxModel: null
	};

	script.type = "text/javascript";
	try {
		script.appendChild( document.createTextNode( "window." + id + "=1;" ) );
	} catch(e){}

	root.insertBefore( script, root.firstChild );

	// Make sure that the execution of code works by injecting a script
	// tag with appendChild/createTextNode
	// (IE doesn't support this, fails, and uses .text instead)
	if ( window[ id ] ) {
		jQuery.support.scriptEval = true;
		delete window[ id ];
	}

	root.removeChild( script );

	if ( div.attachEvent && div.fireEvent ) {
		div.attachEvent("onclick", function(){
			// Cloning a node shouldn't copy over any
			// bound event handlers (IE does this)
			jQuery.support.noCloneEvent = false;
			div.detachEvent("onclick", arguments.callee);
		});
		div.cloneNode(true).fireEvent("onclick");
	}

	// Figure out if the W3C box model works as expected
	// document.body must exist before we can do this
	jQuery(function(){
		var div = document.createElement("div");
		div.style.width = div.style.paddingLeft = "1px";

		document.body.appendChild( div );
		jQuery.boxModel = jQuery.support.boxModel = div.offsetWidth === 2;
		document.body.removeChild( div ).style.display = 'none';
	});
})();

var styleFloat = jQuery.support.cssFloat ? "cssFloat" : "styleFloat";

jQuery.props = {
	"for": "htmlFor",
	"class": "className",
	"float": styleFloat,
	cssFloat: styleFloat,
	styleFloat: styleFloat,
	readonly: "readOnly",
	maxlength: "maxLength",
	cellspacing: "cellSpacing",
	rowspan: "rowSpan",
	tabindex: "tabIndex"
};
jQuery.fn.extend({
	// Keep a copy of the old load
	_load: jQuery.fn.load,

	load: function( url, params, callback ) {
		if ( typeof url !== "string" )
			return this._load( url );

		var off = url.indexOf(" ");
		if ( off >= 0 ) {
			var selector = url.slice(off, url.length);
			url = url.slice(0, off);
		}

		// Default to a GET request
		var type = "GET";

		// If the second parameter was provided
		if ( params )
			// If it's a function
			if ( jQuery.isFunction( params ) ) {
				// We assume that it's the callback
				callback = params;
				params = null;

			// Otherwise, build a param string
			} else if( typeof params === "object" ) {
				params = jQuery.param( params );
				type = "POST";
			}

		var self = this;

		// Request the remote document
		jQuery.ajax({
			url: url,
			type: type,
			dataType: "html",
			data: params,
			complete: function(res, status){
				// If successful, inject the HTML into all the matched elements
				if ( status == "success" || status == "notmodified" )
					// See if a selector was specified
					self.html( selector ?
						// Create a dummy div to hold the results
						jQuery("<div/>")
							// inject the contents of the document in, removing the scripts
							// to avoid any 'Permission Denied' errors in IE
							.append(res.responseText.replace(/<script(.|\s)*?\/script>/g, ""))

							// Locate the specified elements
							.find(selector) :

						// If not, just inject the full result
						res.responseText );

				if( callback )
					self.each( callback, [res.responseText, status, res] );
			}
		});
		return this;
	},

	serialize: function() {
		return jQuery.param(this.serializeArray());
	},
	serializeArray: function() {
		return this.map(function(){
			return this.elements ? jQuery.makeArray(this.elements) : this;
		})
		.filter(function(){
			return this.name && !this.disabled &&
				(this.checked || /select|textarea/i.test(this.nodeName) ||
					/text|hidden|password|search/i.test(this.type));
		})
		.map(function(i, elem){
			var val = jQuery(this).val();
			return val == null ? null :
				jQuery.isArray(val) ?
					jQuery.map( val, function(val, i){
						return {name: elem.name, value: val};
					}) :
					{name: elem.name, value: val};
		}).get();
	}
});

// Attach a bunch of functions for handling common AJAX events
jQuery.each( "ajaxStart,ajaxStop,ajaxComplete,ajaxError,ajaxSuccess,ajaxSend".split(","), function(i,o){
	jQuery.fn[o] = function(f){
		return this.bind(o, f);
	};
});

var jsc = now();

jQuery.extend({

	get: function( url, data, callback, type ) {
		// shift arguments if data argument was ommited
		if ( jQuery.isFunction( data ) ) {
			callback = data;
			data = null;
		}

		return jQuery.ajax({
			type: "GET",
			url: url,
			data: data,
			success: callback,
			dataType: type
		});
	},

	getScript: function( url, callback ) {
		return jQuery.get(url, null, callback, "script");
	},

	getJSON: function( url, data, callback ) {
		return jQuery.get(url, data, callback, "json");
	},

	post: function( url, data, callback, type ) {
		if ( jQuery.isFunction( data ) ) {
			callback = data;
			data = {};
		}

		return jQuery.ajax({
			type: "POST",
			url: url,
			data: data,
			success: callback,
			dataType: type
		});
	},

	ajaxSetup: function( settings ) {
		jQuery.extend( jQuery.ajaxSettings, settings );
	},

	ajaxSettings: {
		url: location.href,
		global: true,
		type: "GET",
		contentType: "application/x-www-form-urlencoded",
		processData: true,
		async: true,
		/*
		timeout: 0,
		data: null,
		username: null,
		password: null,
		*/
		// Create the request object; Microsoft failed to properly
		// implement the XMLHttpRequest in IE7, so we use the ActiveXObject when it is available
		// This function can be overriden by calling jQuery.ajaxSetup
		xhr:function(){
			return window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
		},
		accepts: {
			xml: "application/xml, text/xml",
			html: "text/html",
			script: "text/javascript, application/javascript",
			json: "application/json, text/javascript",
			text: "text/plain",
			_default: "*/*"
		}
	},

	// Last-Modified header cache for next request
	lastModified: {},

	ajax: function( s ) {
		// Extend the settings, but re-extend 's' so that it can be
		// checked again later (in the test suite, specifically)
		s = jQuery.extend(true, s, jQuery.extend(true, {}, jQuery.ajaxSettings, s));

		var jsonp, jsre = /=\?(&|$)/g, status, data,
			type = s.type.toUpperCase();

		// convert data if not already a string
		if ( s.data && s.processData && typeof s.data !== "string" )
			s.data = jQuery.param(s.data);

		// Handle JSONP Parameter Callbacks
		if ( s.dataType == "jsonp" ) {
			if ( type == "GET" ) {
				if ( !s.url.match(jsre) )
					s.url += (s.url.match(/\?/) ? "&" : "?") + (s.jsonp || "callback") + "=?";
			} else if ( !s.data || !s.data.match(jsre) )
				s.data = (s.data ? s.data + "&" : "") + (s.jsonp || "callback") + "=?";
			s.dataType = "json";
		}

		// Build temporary JSONP function
		if ( s.dataType == "json" && (s.data && s.data.match(jsre) || s.url.match(jsre)) ) {
			jsonp = "jsonp" + jsc++;

			// Replace the =? sequence both in the query string and the data
			if ( s.data )
				s.data = (s.data + "").replace(jsre, "=" + jsonp + "$1");
			s.url = s.url.replace(jsre, "=" + jsonp + "$1");

			// We need to make sure
			// that a JSONP style response is executed properly
			s.dataType = "script";

			// Handle JSONP-style loading
			window[ jsonp ] = function(tmp){
				data = tmp;
				success();
				complete();
				// Garbage collect
				window[ jsonp ] = undefined;
				try{ delete window[ jsonp ]; } catch(e){}
				if ( head )
					head.removeChild( script );
			};
		}

		if ( s.dataType == "script" && s.cache == null )
			s.cache = false;

		if ( s.cache === false && type == "GET" ) {
			var ts = now();
			// try replacing _= if it is there
			var ret = s.url.replace(/(\?|&)_=.*?(&|$)/, "$1_=" + ts + "$2");
			// if nothing was replaced, add timestamp to the end
			s.url = ret + ((ret == s.url) ? (s.url.match(/\?/) ? "&" : "?") + "_=" + ts : "");
		}

		// If data is available, append data to url for get requests
		if ( s.data && type == "GET" ) {
			s.url += (s.url.match(/\?/) ? "&" : "?") + s.data;

			// IE likes to send both get and post data, prevent this
			s.data = null;
		}

		// Watch for a new set of requests
		if ( s.global && ! jQuery.active++ )
			jQuery.event.trigger( "ajaxStart" );

		// Matches an absolute URL, and saves the domain
		var parts = /^(\w+:)?\/\/([^\/?#]+)/.exec( s.url );

		// If we're requesting a remote document
		// and trying to load JSON or Script with a GET
		if ( s.dataType == "script" && type == "GET" && parts
			&& ( parts[1] && parts[1] != location.protocol || parts[2] != location.host )){

			var head = document.getElementsByTagName("head")[0];
			var script = document.createElement("script");
			script.src = s.url;
			if (s.scriptCharset)
				script.charset = s.scriptCharset;

			// Handle Script loading
			if ( !jsonp ) {
				var done = false;

				// Attach handlers for all browsers
				script.onload = script.onreadystatechange = function(){
					if ( !done && (!this.readyState ||
							this.readyState == "loaded" || this.readyState == "complete") ) {
						done = true;
						success();
						complete();

						// Handle memory leak in IE
						script.onload = script.onreadystatechange = null;
						head.removeChild( script );
					}
				};
			}

			head.appendChild(script);

			// We handle everything using the script element injection
			return undefined;
		}

		var requestDone = false;

		// Create the request object
		var xhr = s.xhr();

		// Open the socket
		// Passing null username, generates a login popup on Opera (#2865)
		if( s.username )
			xhr.open(type, s.url, s.async, s.username, s.password);
		else
			xhr.open(type, s.url, s.async);

		// Need an extra try/catch for cross domain requests in Firefox 3
		try {
			// Set the correct header, if data is being sent
			if ( s.data )
				xhr.setRequestHeader("Content-Type", s.contentType);

			// Set the If-Modified-Since header, if ifModified mode.
			if ( s.ifModified )
				xhr.setRequestHeader("If-Modified-Since",
					jQuery.lastModified[s.url] || "Thu, 01 Jan 1970 00:00:00 GMT" );

			// Set header so the called script knows that it's an XMLHttpRequest
			xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");

			// Set the Accepts header for the server, depending on the dataType
			xhr.setRequestHeader("Accept", s.dataType && s.accepts[ s.dataType ] ?
				s.accepts[ s.dataType ] + ", */*" :
				s.accepts._default );
		} catch(e){}

		// Allow custom headers/mimetypes and early abort
		if ( s.beforeSend && s.beforeSend(xhr, s) === false ) {
			// Handle the global AJAX counter
			if ( s.global && ! --jQuery.active )
				jQuery.event.trigger( "ajaxStop" );
			// close opended socket
			xhr.abort();
			return false;
		}

		if ( s.global )
			jQuery.event.trigger("ajaxSend", [xhr, s]);

		// Wait for a response to come back
		var onreadystatechange = function(isTimeout){
			// The request was aborted, clear the interval and decrement jQuery.active
			if (xhr.readyState == 0) {
				if (ival) {
					// clear poll interval
					clearInterval(ival);
					ival = null;
					// Handle the global AJAX counter
					if ( s.global && ! --jQuery.active )
						jQuery.event.trigger( "ajaxStop" );
				}
			// The transfer is complete and the data is available, or the request timed out
			} else if ( !requestDone && xhr && (xhr.readyState == 4 || isTimeout == "timeout") ) {
				requestDone = true;

				// clear poll interval
				if (ival) {
					clearInterval(ival);
					ival = null;
				}

				status = isTimeout == "timeout" ? "timeout" :
					!jQuery.httpSuccess( xhr ) ? "error" :
					s.ifModified && jQuery.httpNotModified( xhr, s.url ) ? "notmodified" :
					"success";

				if ( status == "success" ) {
					// Watch for, and catch, XML document parse errors
					try {
						// process the data (runs the xml through httpData regardless of callback)
						data = jQuery.httpData( xhr, s.dataType, s );
					} catch(e) {
						status = "parsererror";
					}
				}

				// Make sure that the request was successful or notmodified
				if ( status == "success" ) {
					// Cache Last-Modified header, if ifModified mode.
					var modRes;
					try {
						modRes = xhr.getResponseHeader("Last-Modified");
					} catch(e) {} // swallow exception thrown by FF if header is not available

					if ( s.ifModified && modRes )
						jQuery.lastModified[s.url] = modRes;

					// JSONP handles its own success callback
					if ( !jsonp )
						success();
				} else
					jQuery.handleError(s, xhr, status);

				// Fire the complete handlers
				complete();

				if ( isTimeout )
					xhr.abort();

				// Stop memory leaks
				if ( s.async )
					xhr = null;
			}
		};

		if ( s.async ) {
			// don't attach the handler to the request, just poll it instead
			var ival = setInterval(onreadystatechange, 13);

			// Timeout checker
			if ( s.timeout > 0 )
				setTimeout(function(){
					// Check to see if the request is still happening
					if ( xhr && !requestDone )
						onreadystatechange( "timeout" );
				}, s.timeout);
		}

		// Send the data
		try {
			xhr.send(s.data);
		} catch(e) {
			jQuery.handleError(s, xhr, null, e);
		}

		// firefox 1.5 doesn't fire statechange for sync requests
		if ( !s.async )
			onreadystatechange();

		function success(){
			// If a local callback was specified, fire it and pass it the data
			if ( s.success )
				s.success( data, status );

			// Fire the global callback
			if ( s.global )
				jQuery.event.trigger( "ajaxSuccess", [xhr, s] );
		}

		function complete(){
			// Process result
			if ( s.complete )
				s.complete(xhr, status);

			// The request was completed
			if ( s.global )
				jQuery.event.trigger( "ajaxComplete", [xhr, s] );

			// Handle the global AJAX counter
			if ( s.global && ! --jQuery.active )
				jQuery.event.trigger( "ajaxStop" );
		}

		// return XMLHttpRequest to allow aborting the request etc.
		return xhr;
	},

	handleError: function( s, xhr, status, e ) {
		// If a local callback was specified, fire it
		if ( s.error ) s.error( xhr, status, e );

		// Fire the global callback
		if ( s.global )
			jQuery.event.trigger( "ajaxError", [xhr, s, e] );
	},

	// Counter for holding the number of active queries
	active: 0,

	// Determines if an XMLHttpRequest was successful or not
	httpSuccess: function( xhr ) {
		try {
			// IE error sometimes returns 1223 when it should be 204 so treat it as success, see #1450
			return !xhr.status && location.protocol == "file:" ||
				( xhr.status >= 200 && xhr.status < 300 ) || xhr.status == 304 || xhr.status == 1223;
		} catch(e){}
		return false;
	},

	// Determines if an XMLHttpRequest returns NotModified
	httpNotModified: function( xhr, url ) {
		try {
			var xhrRes = xhr.getResponseHeader("Last-Modified");

			// Firefox always returns 200. check Last-Modified date
			return xhr.status == 304 || xhrRes == jQuery.lastModified[url];
		} catch(e){}
		return false;
	},

	httpData: function( xhr, type, s ) {
		var ct = xhr.getResponseHeader("content-type"),
			xml = type == "xml" || !type && ct && ct.indexOf("xml") >= 0,
			data = xml ? xhr.responseXML : xhr.responseText;

		if ( xml && data.documentElement.tagName == "parsererror" )
			throw "parsererror";

		// Allow a pre-filtering function to sanitize the response
		// s != null is checked to keep backwards compatibility
		if( s && s.dataFilter )
			data = s.dataFilter( data, type );

		// The filter can actually parse the response
		if( typeof data === "string" ){

			// If the type is "script", eval it in global context
			if ( type == "script" )
				jQuery.globalEval( data );

			// Get the JavaScript object, if JSON is used.
			if ( type == "json" )
				data = window["eval"]("(" + data + ")");
		}

		return data;
	},

	// Serialize an array of form elements or a set of
	// key/values into a query string
	param: function( a ) {
		var s = [ ];

		function add( key, value ){
			s[ s.length ] = encodeURIComponent(key) + '=' + encodeURIComponent(value);
		};

		// If an array was passed in, assume that it is an array
		// of form elements
		if ( jQuery.isArray(a) || a.jquery )
			// Serialize the form elements
			jQuery.each( a, function(){
				add( this.name, this.value );
			});

		// Otherwise, assume that it's an object of key/value pairs
		else
			// Serialize the key/values
			for ( var j in a )
				// If the value is an array then the key names need to be repeated
				if ( jQuery.isArray(a[j]) )
					jQuery.each( a[j], function(){
						add( j, this );
					});
				else
					add( j, jQuery.isFunction(a[j]) ? a[j]() : a[j] );

		// Return the resulting serialization
		return s.join("&").replace(/%20/g, "+");
	}

});
var elemdisplay = {},
	timerId,
	fxAttrs = [
		// height animations
		[ "height", "marginTop", "marginBottom", "paddingTop", "paddingBottom" ],
		// width animations
		[ "width", "marginLeft", "marginRight", "paddingLeft", "paddingRight" ],
		// opacity animations
		[ "opacity" ]
	];

function genFx( type, num ){
	var obj = {};
	jQuery.each( fxAttrs.concat.apply([], fxAttrs.slice(0,num)), function(){
		obj[ this ] = type;
	});
	return obj;
}

jQuery.fn.extend({
	show: function(speed,callback){
		if ( speed ) {
			return this.animate( genFx("show", 3), speed, callback);
		} else {
			for ( var i = 0, l = this.length; i < l; i++ ){
				var old = jQuery.data(this[i], "olddisplay");

				this[i].style.display = old || "";

				if ( jQuery.css(this[i], "display") === "none" ) {
					var tagName = this[i].tagName, display;

					if ( elemdisplay[ tagName ] ) {
						display = elemdisplay[ tagName ];
					} else {
						var elem = jQuery("<" + tagName + " />").appendTo("body");

						display = elem.css("display");
						if ( display === "none" )
							display = "block";

						elem.remove();

						elemdisplay[ tagName ] = display;
					}

					jQuery.data(this[i], "olddisplay", display);
				}
			}

			// Set the display of the elements in a second loop
			// to avoid the constant reflow
			for ( var i = 0, l = this.length; i < l; i++ ){
				this[i].style.display = jQuery.data(this[i], "olddisplay") || "";
			}

			return this;
		}
	},

	hide: function(speed,callback){
		if ( speed ) {
			return this.animate( genFx("hide", 3), speed, callback);
		} else {
			for ( var i = 0, l = this.length; i < l; i++ ){
				var old = jQuery.data(this[i], "olddisplay");
				if ( !old && old !== "none" )
					jQuery.data(this[i], "olddisplay", jQuery.css(this[i], "display"));
			}

			// Set the display of the elements in a second loop
			// to avoid the constant reflow
			for ( var i = 0, l = this.length; i < l; i++ ){
				this[i].style.display = "none";
			}

			return this;
		}
	},

	// Save the old toggle function
	_toggle: jQuery.fn.toggle,

	toggle: function( fn, fn2 ){
		var bool = typeof fn === "boolean";

		return jQuery.isFunction(fn) && jQuery.isFunction(fn2) ?
			this._toggle.apply( this, arguments ) :
			fn == null || bool ?
				this.each(function(){
					var state = bool ? fn : jQuery(this).is(":hidden");
					jQuery(this)[ state ? "show" : "hide" ]();
				}) :
				this.animate(genFx("toggle", 3), fn, fn2);
	},

	fadeTo: function(speed,to,callback){
		return this.animate({opacity: to}, speed, callback);
	},

	animate: function( prop, speed, easing, callback ) {
		var optall = jQuery.speed(speed, easing, callback);

		return this[ optall.queue === false ? "each" : "queue" ](function(){

			var opt = jQuery.extend({}, optall), p,
				hidden = this.nodeType == 1 && jQuery(this).is(":hidden"),
				self = this;

			for ( p in prop ) {
				if ( prop[p] == "hide" && hidden || prop[p] == "show" && !hidden )
					return opt.complete.call(this);

				if ( ( p == "height" || p == "width" ) && this.style ) {
					// Store display property
					opt.display = jQuery.css(this, "display");

					// Make sure that nothing sneaks out
					opt.overflow = this.style.overflow;
				}
			}

			if ( opt.overflow != null )
				this.style.overflow = "hidden";

			opt.curAnim = jQuery.extend({}, prop);

			jQuery.each( prop, function(name, val){
				var e = new jQuery.fx( self, opt, name );

				if ( /toggle|show|hide/.test(val) )
					e[ val == "toggle" ? hidden ? "show" : "hide" : val ]( prop );
				else {
					var parts = val.toString().match(/^([+-]=)?([\d+-.]+)(.*)$/),
						start = e.cur(true) || 0;

					if ( parts ) {
						var end = parseFloat(parts[2]),
							unit = parts[3] || "px";

						// We need to compute starting value
						if ( unit != "px" ) {
							self.style[ name ] = (end || 1) + unit;
							start = ((end || 1) / e.cur(true)) * start;
							self.style[ name ] = start + unit;
						}

						// If a +=/-= token was provided, we're doing a relative animation
						if ( parts[1] )
							end = ((parts[1] == "-=" ? -1 : 1) * end) + start;

						e.custom( start, end, unit );
					} else
						e.custom( start, val, "" );
				}
			});

			// For JS strict compliance
			return true;
		});
	},

	stop: function(clearQueue, gotoEnd){
		var timers = jQuery.timers;

		if (clearQueue)
			this.queue([]);

		this.each(function(){
			// go in reverse order so anything added to the queue during the loop is ignored
			for ( var i = timers.length - 1; i >= 0; i-- )
				if ( timers[i].elem == this ) {
					if (gotoEnd)
						// force the next step to be the last
						timers[i](true);
					timers.splice(i, 1);
				}
		});

		// start the next in the queue if the last step wasn't forced
		if (!gotoEnd)
			this.dequeue();

		return this;
	}

});

// Generate shortcuts for custom animations
jQuery.each({
	slideDown: genFx("show", 1),
	slideUp: genFx("hide", 1),
	slideToggle: genFx("toggle", 1),
	fadeIn: { opacity: "show" },
	fadeOut: { opacity: "hide" }
}, function( name, props ){
	jQuery.fn[ name ] = function( speed, callback ){
		return this.animate( props, speed, callback );
	};
});

jQuery.extend({

	speed: function(speed, easing, fn) {
		var opt = typeof speed === "object" ? speed : {
			complete: fn || !fn && easing ||
				jQuery.isFunction( speed ) && speed,
			duration: speed,
			easing: fn && easing || easing && !jQuery.isFunction(easing) && easing
		};

		opt.duration = jQuery.fx.off ? 0 : typeof opt.duration === "number" ? opt.duration :
			jQuery.fx.speeds[opt.duration] || jQuery.fx.speeds._default;

		// Queueing
		opt.old = opt.complete;
		opt.complete = function(){
			if ( opt.queue !== false )
				jQuery(this).dequeue();
			if ( jQuery.isFunction( opt.old ) )
				opt.old.call( this );
		};

		return opt;
	},

	easing: {
		linear: function( p, n, firstNum, diff ) {
			return firstNum + diff * p;
		},
		swing: function( p, n, firstNum, diff ) {
			return ((-Math.cos(p*Math.PI)/2) + 0.5) * diff + firstNum;
		}
	},

	timers: [],

	fx: function( elem, options, prop ){
		this.options = options;
		this.elem = elem;
		this.prop = prop;

		if ( !options.orig )
			options.orig = {};
	}

});

jQuery.fx.prototype = {

	// Simple function for setting a style value
	update: function(){
		if ( this.options.step )
			this.options.step.call( this.elem, this.now, this );

		(jQuery.fx.step[this.prop] || jQuery.fx.step._default)( this );

		// Set display property to block for height/width animations
		if ( ( this.prop == "height" || this.prop == "width" ) && this.elem.style )
			this.elem.style.display = "block";
	},

	// Get the current size
	cur: function(force){
		if ( this.elem[this.prop] != null && (!this.elem.style || this.elem.style[this.prop] == null) )
			return this.elem[ this.prop ];

		var r = parseFloat(jQuery.css(this.elem, this.prop, force));
		return r && r > -10000 ? r : parseFloat(jQuery.curCSS(this.elem, this.prop)) || 0;
	},

	// Start an animation from one number to another
	custom: function(from, to, unit){
		this.startTime = now();
		this.start = from;
		this.end = to;
		this.unit = unit || this.unit || "px";
		this.now = this.start;
		this.pos = this.state = 0;

		var self = this;
		function t(gotoEnd){
			return self.step(gotoEnd);
		}

		t.elem = this.elem;

		if ( t() && jQuery.timers.push(t) && !timerId ) {
			timerId = setInterval(function(){
				var timers = jQuery.timers;

				for ( var i = 0; i < timers.length; i++ )
					if ( !timers[i]() )
						timers.splice(i--, 1);

				if ( !timers.length ) {
					clearInterval( timerId );
					timerId = undefined;
				}
			}, 13);
		}
	},

	// Simple 'show' function
	show: function(){
		// Remember where we started, so that we can go back to it later
		this.options.orig[this.prop] = jQuery.attr( this.elem.style, this.prop );
		this.options.show = true;

		// Begin the animation
		// Make sure that we start at a small width/height to avoid any
		// flash of content
		this.custom(this.prop == "width" || this.prop == "height" ? 1 : 0, this.cur());

		// Start by showing the element
		jQuery(this.elem).show();
	},

	// Simple 'hide' function
	hide: function(){
		// Remember where we started, so that we can go back to it later
		this.options.orig[this.prop] = jQuery.attr( this.elem.style, this.prop );
		this.options.hide = true;

		// Begin the animation
		this.custom(this.cur(), 0);
	},

	// Each step of an animation
	step: function(gotoEnd){
		var t = now();

		if ( gotoEnd || t >= this.options.duration + this.startTime ) {
			this.now = this.end;
			this.pos = this.state = 1;
			this.update();

			this.options.curAnim[ this.prop ] = true;

			var done = true;
			for ( var i in this.options.curAnim )
				if ( this.options.curAnim[i] !== true )
					done = false;

			if ( done ) {
				if ( this.options.display != null ) {
					// Reset the overflow
					this.elem.style.overflow = this.options.overflow;

					// Reset the display
					this.elem.style.display = this.options.display;
					if ( jQuery.css(this.elem, "display") == "none" )
						this.elem.style.display = "block";
				}

				// Hide the element if the "hide" operation was done
				if ( this.options.hide )
					jQuery(this.elem).hide();

				// Reset the properties, if the item has been hidden or shown
				if ( this.options.hide || this.options.show )
					for ( var p in this.options.curAnim )
						jQuery.attr(this.elem.style, p, this.options.orig[p]);

				// Execute the complete function
				this.options.complete.call( this.elem );
			}

			return false;
		} else {
			var n = t - this.startTime;
			this.state = n / this.options.duration;

			// Perform the easing function, defaults to swing
			this.pos = jQuery.easing[this.options.easing || (jQuery.easing.swing ? "swing" : "linear")](this.state, n, 0, 1, this.options.duration);
			this.now = this.start + ((this.end - this.start) * this.pos);

			// Perform the next step of the animation
			this.update();
		}

		return true;
	}

};

jQuery.extend( jQuery.fx, {
	speeds:{
		slow: 600,
 		fast: 200,
 		// Default speed
 		_default: 400
	},
	step: {

		opacity: function(fx){
			jQuery.attr(fx.elem.style, "opacity", fx.now);
		},

		_default: function(fx){
			if ( fx.elem.style && fx.elem.style[ fx.prop ] != null )
				fx.elem.style[ fx.prop ] = fx.now + fx.unit;
			else
				fx.elem[ fx.prop ] = fx.now;
		}
	}
});
if ( document.documentElement["getBoundingClientRect"] )
	jQuery.fn.offset = function() {
		if ( !this[0] ) return { top: 0, left: 0 };
		if ( this[0] === this[0].ownerDocument.body ) return jQuery.offset.bodyOffset( this[0] );
		var box  = this[0].getBoundingClientRect(), doc = this[0].ownerDocument, body = doc.body, docElem = doc.documentElement,
			clientTop = docElem.clientTop || body.clientTop || 0, clientLeft = docElem.clientLeft || body.clientLeft || 0,
			top  = box.top  + (self.pageYOffset || jQuery.boxModel && docElem.scrollTop  || body.scrollTop ) - clientTop,
			left = box.left + (self.pageXOffset || jQuery.boxModel && docElem.scrollLeft || body.scrollLeft) - clientLeft;
		return { top: top, left: left };
	};
else
	jQuery.fn.offset = function() {
		if ( !this[0] ) return { top: 0, left: 0 };
		if ( this[0] === this[0].ownerDocument.body ) return jQuery.offset.bodyOffset( this[0] );
		jQuery.offset.initialized || jQuery.offset.initialize();

		var elem = this[0], offsetParent = elem.offsetParent, prevOffsetParent = elem,
			doc = elem.ownerDocument, computedStyle, docElem = doc.documentElement,
			body = doc.body, defaultView = doc.defaultView,
			prevComputedStyle = defaultView.getComputedStyle(elem, null),
			top = elem.offsetTop, left = elem.offsetLeft;

		while ( (elem = elem.parentNode) && elem !== body && elem !== docElem ) {
			computedStyle = defaultView.getComputedStyle(elem, null);
			top -= elem.scrollTop, left -= elem.scrollLeft;
			if ( elem === offsetParent ) {
				top += elem.offsetTop, left += elem.offsetLeft;
				if ( jQuery.offset.doesNotAddBorder && !(jQuery.offset.doesAddBorderForTableAndCells && /^t(able|d|h)$/i.test(elem.tagName)) )
					top  += parseInt( computedStyle.borderTopWidth,  10) || 0,
					left += parseInt( computedStyle.borderLeftWidth, 10) || 0;
				prevOffsetParent = offsetParent, offsetParent = elem.offsetParent;
			}
			if ( jQuery.offset.subtractsBorderForOverflowNotVisible && computedStyle.overflow !== "visible" )
				top  += parseInt( computedStyle.borderTopWidth,  10) || 0,
				left += parseInt( computedStyle.borderLeftWidth, 10) || 0;
			prevComputedStyle = computedStyle;
		}

		if ( prevComputedStyle.position === "relative" || prevComputedStyle.position === "static" )
			top  += body.offsetTop,
			left += body.offsetLeft;

		if ( prevComputedStyle.position === "fixed" )
			top  += Math.max(docElem.scrollTop, body.scrollTop),
			left += Math.max(docElem.scrollLeft, body.scrollLeft);

		return { top: top, left: left };
	};

jQuery.offset = {
	initialize: function() {
		if ( this.initialized ) return;
		var body = document.body, container = document.createElement('div'), innerDiv, checkDiv, table, td, rules, prop, bodyMarginTop = body.style.marginTop,
			html = '<div style="position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;"><div></div></div><table style="position:absolute;top:0;left:0;margin:0;border:5px solid #000;padding:0;width:1px;height:1px;" cellpadding="0" cellspacing="0"><tr><td></td></tr></table>';

		rules = { position: 'absolute', top: 0, left: 0, margin: 0, border: 0, width: '1px', height: '1px', visibility: 'hidden' };
		for ( prop in rules ) container.style[prop] = rules[prop];

		container.innerHTML = html;
		body.insertBefore(container, body.firstChild);
		innerDiv = container.firstChild, checkDiv = innerDiv.firstChild, td = innerDiv.nextSibling.firstChild.firstChild;

		this.doesNotAddBorder = (checkDiv.offsetTop !== 5);
		this.doesAddBorderForTableAndCells = (td.offsetTop === 5);

		innerDiv.style.overflow = 'hidden', innerDiv.style.position = 'relative';
		this.subtractsBorderForOverflowNotVisible = (checkDiv.offsetTop === -5);

		body.style.marginTop = '1px';
		this.doesNotIncludeMarginInBodyOffset = (body.offsetTop === 0);
		body.style.marginTop = bodyMarginTop;

		body.removeChild(container);
		this.initialized = true;
	},

	bodyOffset: function(body) {
		jQuery.offset.initialized || jQuery.offset.initialize();
		var top = body.offsetTop, left = body.offsetLeft;
		if ( jQuery.offset.doesNotIncludeMarginInBodyOffset )
			top  += parseInt( jQuery.curCSS(body, 'marginTop',  true), 10 ) || 0,
			left += parseInt( jQuery.curCSS(body, 'marginLeft', true), 10 ) || 0;
		return { top: top, left: left };
	}
};


jQuery.fn.extend({
	position: function() {
		var left = 0, top = 0, results;

		if ( this[0] ) {
			// Get *real* offsetParent
			var offsetParent = this.offsetParent(),

			// Get correct offsets
			offset       = this.offset(),
			parentOffset = /^body|html$/i.test(offsetParent[0].tagName) ? { top: 0, left: 0 } : offsetParent.offset();

			// Subtract element margins
			// note: when an element has margin: auto the offsetLeft and marginLeft
			// are the same in Safari causing offset.left to incorrectly be 0
			offset.top  -= num( this, 'marginTop'  );
			offset.left -= num( this, 'marginLeft' );

			// Add offsetParent borders
			parentOffset.top  += num( offsetParent, 'borderTopWidth'  );
			parentOffset.left += num( offsetParent, 'borderLeftWidth' );

			// Subtract the two offsets
			results = {
				top:  offset.top  - parentOffset.top,
				left: offset.left - parentOffset.left
			};
		}

		return results;
	},

	offsetParent: function() {
		var offsetParent = this[0].offsetParent || document.body;
		while ( offsetParent && (!/^body|html$/i.test(offsetParent.tagName) && jQuery.css(offsetParent, 'position') == 'static') )
			offsetParent = offsetParent.offsetParent;
		return jQuery(offsetParent);
	}
});


// Create scrollLeft and scrollTop methods
jQuery.each( ['Left', 'Top'], function(i, name) {
	var method = 'scroll' + name;

	jQuery.fn[ method ] = function(val) {
		if (!this[0]) return null;

		return val !== undefined ?

			// Set the scroll offset
			this.each(function() {
				this == window || this == document ?
					window.scrollTo(
						!i ? val : jQuery(window).scrollLeft(),
						 i ? val : jQuery(window).scrollTop()
					) :
					this[ method ] = val;
			}) :

			// Return the scroll offset
			this[0] == window || this[0] == document ?
				self[ i ? 'pageYOffset' : 'pageXOffset' ] ||
					jQuery.boxModel && document.documentElement[ method ] ||
					document.body[ method ] :
				this[0][ method ];
	};
});
// Create innerHeight, innerWidth, outerHeight and outerWidth methods
jQuery.each([ "Height", "Width" ], function(i, name){

	var tl = i ? "Left"  : "Top",  // top or left
		br = i ? "Right" : "Bottom", // bottom or right
		lower = name.toLowerCase();

	// innerHeight and innerWidth
	jQuery.fn["inner" + name] = function(){
		return this[0] ?
			jQuery.css( this[0], lower, false, "padding" ) :
			null;
	};

	// outerHeight and outerWidth
	jQuery.fn["outer" + name] = function(margin) {
		return this[0] ?
			jQuery.css( this[0], lower, false, margin ? "margin" : "border" ) :
			null;
	};

	var type = name.toLowerCase();

	jQuery.fn[ type ] = function( size ) {
		// Get window width or height
		return this[0] == window ?
			// Everyone else use document.documentElement or document.body depending on Quirks vs Standards mode
			document.compatMode == "CSS1Compat" && document.documentElement[ "client" + name ] ||
			document.body[ "client" + name ] :

			// Get document width or height
			this[0] == document ?
				// Either scroll[Width/Height] or offset[Width/Height], whichever is greater
				Math.max(
					document.documentElement["client" + name],
					document.body["scroll" + name], document.documentElement["scroll" + name],
					document.body["offset" + name], document.documentElement["offset" + name]
				) :

				// Get or set width or height on the element
				size === undefined ?
					// Get width or height on the element
					(this.length ? jQuery.css( this[0], type ) : null) :

					// Set the width or height on the element (default to pixels if value is unitless)
					this.css( type, typeof size === "string" ? size : size + "px" );
	};

});
}

foo();
var $j = jQuery.noConflict();

(function(a){a.extend(a.fn,{livequery:function(f,e,d){var c=this,g;if(a.isFunction(f)){d=e,e=f,f=undefined}a.each(a.livequery.queries,function(h,j){if(c.selector==j.selector&&c.context==j.context&&f==j.type&&(!e||e.$lqguid==j.fn.$lqguid)&&(!d||d.$lqguid==j.fn2.$lqguid)){return(g=j)&&false}});g=g||new a.livequery(this.selector,this.context,f,e,d);g.stopped=false;a.livequery.run(g.id);return this},expire:function(f,e,d){var c=this;if(a.isFunction(f)){d=e,e=f,f=undefined}a.each(a.livequery.queries,function(g,h){if(c.selector==h.selector&&c.context==h.context&&(!f||f==h.type)&&(!e||e.$lqguid==h.fn.$lqguid)&&(!d||d.$lqguid==h.fn2.$lqguid)&&!this.stopped){a.livequery.stop(h.id)}});return this}});a.livequery=function(c,e,g,f,d){this.selector=c;this.context=e||document;this.type=g;this.fn=f;this.fn2=d;this.elements=[];this.stopped=false;this.id=a.livequery.queries.push(this)-1;f.$lqguid=f.$lqguid||a.livequery.guid++;if(d){d.$lqguid=d.$lqguid||a.livequery.guid++}return this};a.livequery.prototype={stop:function(){var c=this;if(this.type){this.elements.unbind(this.type,this.fn)}else{if(this.fn2){this.elements.each(function(d,e){c.fn2.apply(e)})}}this.elements=[];this.stopped=true},run:function(){if(this.stopped){return}var e=this;var f=this.elements,d=a(this.selector,this.context),c=d.not(f);this.elements=d;if(this.type){c.bind(this.type,this.fn);if(f.length>0){a.each(f,function(g,h){if(a.inArray(h,d)<0){a.event.remove(h,e.type,e.fn)}})}}else{c.each(function(){e.fn.apply(this)});if(this.fn2&&f.length>0){a.each(f,function(g,h){if(a.inArray(h,d)<0){e.fn2.apply(h)}})}}}};a.extend(a.livequery,{guid:0,queries:[],queue:[],running:false,timeout:null,checkQueue:function(){if(a.livequery.running&&a.livequery.queue.length){var c=a.livequery.queue.length;while(c--){a.livequery.queries[a.livequery.queue.shift()].run()}}},pause:function(){a.livequery.running=false},play:function(){a.livequery.running=true;a.livequery.run()},registerPlugin:function(){a.each(arguments,function(d,e){if(!a.fn[e]){return}var c=a.fn[e];a.fn[e]=function(){var f=c.apply(this,arguments);a.livequery.run();return f}})},run:function(c){if(c!=undefined){if(a.inArray(c,a.livequery.queue)<0){a.livequery.queue.push(c)}}else{a.each(a.livequery.queries,function(d){if(a.inArray(d,a.livequery.queue)<0){a.livequery.queue.push(d)}})}if(a.livequery.timeout){clearTimeout(a.livequery.timeout)}a.livequery.timeout=setTimeout(a.livequery.checkQueue,20)},stop:function(c){if(c!=undefined){a.livequery.queries[c].stop()}else{a.each(a.livequery.queries,function(d){a.livequery.queries[d].stop()})}}});a.livequery.registerPlugin("append","prepend","after","before","wrap","attr","removeAttr","addClass","removeClass","toggleClass","empty","remove");a(function(){a.livequery.play()});var b=a.prototype.init;a.prototype.init=function(d,f){var e=b.apply(this,arguments);if(d&&d.selector){e.context=d.context,e.selector=d.selector}if(typeof d=="string"){e.context=f||document,e.selector=d}return e};a.prototype.init.prototype=a.prototype})(jQuery);

(function(b){b.fn.ajaxSubmit=function(p){if(!this.length){a("ajaxSubmit: skipping submit process - no element selected");return this}if(typeof p=="function"){p={success:p}}p=b.extend({url:this.attr("action")||window.location.toString(),type:this.attr("method")||"GET"},p||{});var s={};this.trigger("form-pre-serialize",[this,p,s]);if(s.veto){a("ajaxSubmit: submit vetoed via form-pre-serialize trigger");return this}if(p.beforeSerialize&&p.beforeSerialize(this,p)===false){a("ajaxSubmit: submit aborted via beforeSerialize callback");return this}var i=this.formToArray(p.semantic);if(p.data){p.extraData=p.data;for(var e in p.data){if(p.data[e] instanceof Array){for(var f in p.data[e]){i.push({name:e,value:p.data[e][f]})}}else{i.push({name:e,value:p.data[e]})}}}if(p.beforeSubmit&&p.beforeSubmit(i,this,p)===false){a("ajaxSubmit: submit aborted via beforeSubmit callback");return this}this.trigger("form-submit-validate",[i,this,p,s]);if(s.veto){a("ajaxSubmit: submit vetoed via form-submit-validate trigger");return this}var d=b.param(i);if(p.type.toUpperCase()=="GET"){p.url+=(p.url.indexOf("?")>=0?"&":"?")+d;p.data=null}else{p.data=d}var r=this,h=[];if(p.resetForm){h.push(function(){r.resetForm()})}if(p.clearForm){h.push(function(){r.clearForm()})}if(!p.dataType&&p.target){var m=p.success||function(){};h.push(function(j){b(p.target).html(j).each(m,arguments)})}else{if(p.success){h.push(p.success)}}p.success=function(q,k){for(var n=0,j=h.length;n<j;n++){h[n].apply(p,[q,k,r])}};var c=b("input:file",this).fieldValue();var o=false;for(var g=0;g<c.length;g++){if(c[g]){o=true}}if(p.iframe||o){if(b.browser.safari&&p.closeKeepAlive){b.get(p.closeKeepAlive,l)}else{l()}}else{b.ajax(p)}this.trigger("form-submit-notify",[this,p]);return this;function l(){var u=r[0];if(b(":input[@name=submit]",u).length){alert('Error: Form elements must not be named "submit".');return}var q=b.extend({},b.ajaxSettings,p);var D=jQuery.extend(true,{},b.extend(true,{},b.ajaxSettings),q);var t="jqFormIO"+(new Date().getTime());var z=b('<iframe id="'+t+'" name="'+t+'" />');var B=z[0];if(b.browser.msie||b.browser.opera){B.src='javascript:false;document.write("");'}z.css({position:"absolute",top:"-1000px",left:"-1000px"});var C={aborted:0,responseText:null,responseXML:null,status:0,statusText:"n/a",getAllResponseHeaders:function(){},getResponseHeader:function(){},setRequestHeader:function(){},abort:function(){this.aborted=1;z.attr("src","about:blank")}};var A=q.global;if(A&&!b.active++){b.event.trigger("ajaxStart")}if(A){b.event.trigger("ajaxSend",[C,q])}if(D.beforeSend&&D.beforeSend(C,D)===false){D.global&&jQuery.active--;return}if(C.aborted){return}var k=0;var w=0;var j=u.clk;if(j){var v=j.name;if(v&&!j.disabled){p.extraData=p.extraData||{};p.extraData[v]=j.value;if(j.type=="image"){p.extraData[name+".x"]=u.clk_x;p.extraData[name+".y"]=u.clk_y}}}setTimeout(function(){var G=r.attr("target"),E=r.attr("action");r.attr({target:t,method:"POST",action:q.url});if(!p.skipEncodingOverride){r.attr({encoding:"multipart/form-data",enctype:"multipart/form-data"})}if(q.timeout){setTimeout(function(){w=true;x()},q.timeout)}var F=[];try{if(p.extraData){for(var H in p.extraData){F.push(b('<input type="hidden" name="'+H+'" value="'+p.extraData[H]+'" />').appendTo(u)[0])}}z.appendTo("body");B.attachEvent?B.attachEvent("onload",x):B.addEventListener("load",x,false);u.submit()}finally{r.attr("action",E);G?r.attr("target",G):r.removeAttr("target");b(F).remove()}},10);function x(){if(k++){return}B.detachEvent?B.detachEvent("onload",x):B.removeEventListener("load",x,false);var E=0;var F=true;try{if(w){throw"timeout"}var G,I;I=B.contentWindow?B.contentWindow.document:B.contentDocument?B.contentDocument:B.document;if(I.body==null&&!E&&b.browser.opera){E=1;k--;setTimeout(x,100);return}C.responseText=I.body?I.body.innerHTML:null;C.responseXML=I.XMLDocument?I.XMLDocument:I;C.getResponseHeader=function(K){var J={"content-type":q.dataType};return J[K]};if(q.dataType=="json"||q.dataType=="script"){var n=I.getElementsByTagName("textarea")[0];C.responseText=n?n.value:C.responseText}else{if(q.dataType=="xml"&&!C.responseXML&&C.responseText!=null){C.responseXML=y(C.responseText)}}G=b.httpData(C,q.dataType)}catch(H){F=false;b.handleError(q,C,"error",H)}if(F){q.success(G,"success");if(A){b.event.trigger("ajaxSuccess",[C,q])}}if(A){b.event.trigger("ajaxComplete",[C,q])}if(A&&!--b.active){b.event.trigger("ajaxStop")}if(q.complete){q.complete(C,F?"success":"error")}setTimeout(function(){z.remove();C.responseXML=null},100)}function y(n,E){if(window.ActiveXObject){E=new ActiveXObject("Microsoft.XMLDOM");E.async="false";E.loadXML(n)}else{E=(new DOMParser()).parseFromString(n,"text/xml")}return(E&&E.documentElement&&E.documentElement.tagName!="parsererror")?E:null}}};b.fn.ajaxForm=function(c){return this.ajaxFormUnbind().bind("submit.form-plugin",function(){b(this).ajaxSubmit(c);return false}).each(function(){b(":submit,input:image",this).bind("click.form-plugin",function(f){var d=this.form;d.clk=this;if(this.type=="image"){if(f.offsetX!=undefined){d.clk_x=f.offsetX;d.clk_y=f.offsetY}else{if(typeof b.fn.offset=="function"){var g=b(this).offset();d.clk_x=f.pageX-g.left;d.clk_y=f.pageY-g.top}else{d.clk_x=f.pageX-this.offsetLeft;d.clk_y=f.pageY-this.offsetTop}}}setTimeout(function(){d.clk=d.clk_x=d.clk_y=null},10)})})};b.fn.ajaxFormUnbind=function(){this.unbind("submit.form-plugin");return this.each(function(){b(":submit,input:image",this).unbind("click.form-plugin")})};b.fn.formToArray=function(q){var p=[];if(this.length==0){return p}var d=this[0];var h=q?d.getElementsByTagName("*"):d.elements;if(!h){return p}for(var k=0,m=h.length;k<m;k++){var e=h[k];var f=e.name;if(!f){continue}if(q&&d.clk&&e.type=="image"){if(!e.disabled&&d.clk==e){p.push({name:f+".x",value:d.clk_x},{name:f+".y",value:d.clk_y})}continue}var r=b.fieldValue(e,true);if(r&&r.constructor==Array){for(var g=0,c=r.length;g<c;g++){p.push({name:f,value:r[g]})}}else{if(r!==null&&typeof r!="undefined"){p.push({name:f,value:r})}}}if(!q&&d.clk){var l=d.getElementsByTagName("input");for(var k=0,m=l.length;k<m;k++){var o=l[k];var f=o.name;if(f&&!o.disabled&&o.type=="image"&&d.clk==o){p.push({name:f+".x",value:d.clk_x},{name:f+".y",value:d.clk_y})}}}return p};b.fn.formSerialize=function(c){return b.param(this.formToArray(c))};b.fn.fieldSerialize=function(d){var c=[];this.each(function(){var h=this.name;if(!h){return}var f=b.fieldValue(this,d);if(f&&f.constructor==Array){for(var g=0,e=f.length;g<e;g++){c.push({name:h,value:f[g]})}}else{if(f!==null&&typeof f!="undefined"){c.push({name:this.name,value:f})}}});return b.param(c)};b.fn.fieldValue=function(h){for(var g=[],e=0,c=this.length;e<c;e++){var f=this[e];var d=b.fieldValue(f,h);if(d===null||typeof d=="undefined"||(d.constructor==Array&&!d.length)){continue}d.constructor==Array?b.merge(g,d):g.push(d)}return g};b.fieldValue=function(c,j){var e=c.name,p=c.type,q=c.tagName.toLowerCase();if(typeof j=="undefined"){j=true}if(j&&(!e||c.disabled||p=="reset"||p=="button"||(p=="checkbox"||p=="radio")&&!c.checked||(p=="submit"||p=="image")&&c.form&&c.form.clk!=c||q=="select"&&c.selectedIndex==-1)){return null}if(q=="select"){var k=c.selectedIndex;if(k<0){return null}var m=[],d=c.options;var g=(p=="select-one");var l=(g?k+1:d.length);for(var f=(g?k:0);f<l;f++){var h=d[f];if(h.selected){var o=b.browser.msie&&!(h.attributes.value.specified)?h.text:h.value;if(g){return o}m.push(o)}}return m}return c.value};b.fn.clearForm=function(){return this.each(function(){b("input,select,textarea",this).clearFields()})};b.fn.clearFields=b.fn.clearInputs=function(){return this.each(function(){var d=this.type,c=this.tagName.toLowerCase();if(d=="text"||d=="password"||c=="textarea"){this.value=""}else{if(d=="checkbox"||d=="radio"){this.checked=false}else{if(c=="select"){this.selectedIndex=-1}}}})};b.fn.resetForm=function(){return this.each(function(){if(typeof this.reset=="function"||(typeof this.reset=="object"&&!this.reset.nodeType)){this.reset()}})};b.fn.enable=function(c){if(c==undefined){c=true}return this.each(function(){this.disabled=!c})};b.fn.selected=function(c){if(c==undefined){c=true}return this.each(function(){var d=this.type;if(d=="checkbox"||d=="radio"){this.checked=c}else{if(this.tagName.toLowerCase()=="option"){var e=b(this).parent("select");if(c&&e[0]&&e[0].type=="select-one"){e.find("option").selected(false)}this.selected=c}}})};function a(){if(b.fn.ajaxSubmit.debug&&window.console&&window.console.log){window.console.log("[jquery.form] "+Array.prototype.join.call(arguments,""))}}})(jQuery);

(function(a){a.extend(a.fn,{delayedObserver:function(d,c,b){this.each(function(){var f=a(this);var e=e||{};f.data("oldval",f.val()).data("delay",c||0.5).data("condition",e.condition||function(){return(a(this).data("oldval")==a(this).val())}).data("callback",d)[(e.event||"keyup")](function(){if(f.data("condition").apply(f)){return}else{if(f.data("timer")){clearTimeout(f.data("timer"))}f.data("timer",setTimeout(function(){f.data("callback").apply(f)},f.data("delay")*1000));f.data("oldval",f.val())}})})}})})(jQuery);

jQuery.fn.delay=function(b,a){return this.each(function(){setTimeout(a,b)})};

jQuery.extend({historyCurrentHash:undefined,historyCallback:undefined,historyInit:function(d){jQuery.historyCallback=d;var c=location.hash;jQuery.historyCurrentHash=c;if(jQuery.browser.msie){if(jQuery.historyCurrentHash==""){jQuery.historyCurrentHash="#"}jQuery("body").prepend('<iframe id="jQuery_history" style="display: none;"></iframe>');var a=jQuery("#jQuery_history")[0];var b=a.contentWindow.document;b.open();b.close();b.location.hash=c}else{if(jQuery.browser.safari){jQuery.historyBackStack=[];jQuery.historyBackStack.length=history.length;jQuery.historyForwardStack=[];jQuery.isFirst=true}}jQuery.historyCallback(c.replace(/^#/,""));setInterval(jQuery.historyCheck,100)},historyAddHistory:function(a){jQuery.historyBackStack.push(a);jQuery.historyForwardStack.length=0;this.isFirst=true},historyCheck:function(){if(jQuery.browser.msie){var a=jQuery("#jQuery_history")[0];var d=a.contentDocument||a.contentWindow.document;var f=d.location.hash;if(f!=jQuery.historyCurrentHash){location.hash=f;jQuery.historyCurrentHash=f;jQuery.historyCallback(f.replace(/^#/,""))}}else{if(jQuery.browser.safari){if(!jQuery.dontCheck){var b=history.length-jQuery.historyBackStack.length;if(b){jQuery.isFirst=false;if(b<0){for(var c=0;c<Math.abs(b);c++){jQuery.historyForwardStack.unshift(jQuery.historyBackStack.pop())}}else{for(var c=0;c<b;c++){jQuery.historyBackStack.push(jQuery.historyForwardStack.shift())}}var e=jQuery.historyBackStack[jQuery.historyBackStack.length-1];if(e!=undefined){jQuery.historyCurrentHash=location.hash;jQuery.historyCallback(e)}}else{if(jQuery.historyBackStack[jQuery.historyBackStack.length-1]==undefined&&!jQuery.isFirst){if(document.URL.indexOf("#")>=0){jQuery.historyCallback(document.URL.split("#")[1])}else{var f=location.hash;jQuery.historyCallback("")}jQuery.isFirst=true}}}}else{var f=location.hash;if(f!=jQuery.historyCurrentHash){jQuery.historyCurrentHash=f;jQuery.historyCallback(f.replace(/^#/,""))}}}},historyLoad:function(d){var e;if(jQuery.browser.safari){e=d}else{e="#"+d;location.hash=e}jQuery.historyCurrentHash=e;if(jQuery.browser.msie){var a=jQuery("#jQuery_history")[0];var c=a.contentWindow.document;c.open();c.close();c.location.hash=e;jQuery.historyCallback(d)}else{if(jQuery.browser.safari){jQuery.dontCheck=true;this.historyAddHistory(d);var b=function(){jQuery.dontCheck=false};window.setTimeout(b,200);jQuery.historyCallback(d);location.hash=e}else{jQuery.historyCallback(d)}}}});

(function(b){var a=null;b.fn.autogrow=function(c){return this.each(function(){new b.autogrow(this,c)})};b.autogrow=function(c,d){this.options=d||{};this.dummy=null;this.interval=null;this.line_height=this.options.lineHeight||parseInt(b(c).css("line-height"));this.min_height=this.options.minHeight||parseInt(b(c).css("min-height"));this.max_height=this.options.maxHeight||parseInt(b(c).css("max-height"));this.textarea=b(c);if(this.line_height==NaN){this.line_height=0}this.init()};b.autogrow.fn=b.autogrow.prototype={autogrow:"1.2.2"};b.autogrow.fn.extend=b.autogrow.extend=b.extend;b.autogrow.fn.extend({init:function(){var c=this;this.textarea.css({overflow:"hidden",display:"block"});this.textarea.bind("focus",function(){c.startExpand()}).bind("blur",function(){c.stopExpand()});this.checkExpand()},startExpand:function(){var c=this;this.interval=window.setInterval(function(){c.checkExpand()},400)},stopExpand:function(){clearInterval(this.interval)},checkExpand:function(){if(this.dummy==null){this.dummy=b("<div></div>");this.dummy.css({"font-size":this.textarea.css("font-size"),"font-family":this.textarea.css("font-family"),width:this.textarea.css("width"),padding:this.textarea.css("padding"),"line-height":this.line_height+"px","overflow-x":"hidden",position:"absolute",top:0,left:-9999}).appendTo("body")}var c=this.textarea.val().replace(/(<|>)/g,"");if(b.browser.msie){c=c.replace(/\n/g,"<BR>new")}else{c=c.replace(/\n/g,"<br>new")}if(this.dummy.html()!=c){this.dummy.html(c);if(this.max_height>0&&(this.dummy.height()+this.line_height>this.max_height)){this.textarea.css("overflow-y","auto")}else{this.textarea.css("overflow-y","hidden");if(this.textarea.height()<this.dummy.height()+this.line_height||(this.dummy.height()<this.textarea.height())){this.textarea.animate({height:(this.dummy.height()+this.line_height)+"px"},100)}}}}})})(jQuery);

(function(a){a.fn.lightbox_me=function(b){var c={prefix:"lb",loaded:function(){},callback:function(){},opacity:0.6,zIndex:999,closeButton:"#close",overlayspeed:"slow",Lightboxspeed:"fast",scrollWithPage:true,show:"show",clickOverlayToClose:false};var d=a.extend(c,b);return this.each(function(){var k=(a.browser.msie&&a.browser.version<7);var m=a(document.body);var h=a(window);var f=a(this).attr("id");var r=a('<div id="'+d.prefix+'_container"></div>');if(k){a("select").css("visibility","hidden")}r.append(a(this)).append(a('<div class="'+d.prefix+'_overlay" id="'+d.prefix+'_overlay"></div>'));m.append(r);var p=a(this);var q=r.children("#"+d.prefix+"_overlay");var j=function(){return(document.documentElement.scrollTop||document.body.scrollTop)+"px"};var i=function(){var s={width:window.innerWidth||(window.document.documentElement.clientWidth||window.document.body.clientWidth),height:window.innerHeight||(window.document.documentElement.clientHeight||window.document.body.clientHeight)};return s};var l=function(){r.css({top:j()})};var o=function(s){if(s.keyCode==27||(s.DOM_VK_ESCAPE==27&&s.which==0)){n()}};var g=function(){var s=i();if(d.scrollWithPage){r.css({position:(k)?"absolute":"fixed",height:s.height,width:"100%",top:(k)?j():0,left:0,right:0,bottom:0,zIndex:d.zIndex})}else{r.css({width:"100%",top:(k)?j():0,left:0,right:0,bottom:0,zIndex:d.zIndex})}var t=((d.scrollWithPage)?s.height:m.height());q.css({position:"absolute",height:t,width:"100%",top:0,left:0,right:0,bottom:0});p.css({position:"absolute",top:"40px",left:"50%",marginLeft:((((p.css("paddingLeft").split("px")[0]*1)+p.width())/2)*-1)})};var e=function(){q.css({zIndex:d.zIndex,display:"none",opacity:d.opacity});p.css({zIndex:d.zIndex+1,display:"none"})};var n=function(s){a("body").prepend(p.hide());if(k&&d.scrollWithPage){m.unbind("scroll",l)}h.unbind("resize",g);q.fadeOut("normal",function(){q.remove();if(d.callback()){d.callback()}h.unbind("keypress",o);if(k){a("select").css("visibility","visible")}r.remove()});return false};g();e();if(k&&d.scrollWithPage){h.scroll(l)}h.resize(g);h.keypress(o);p.find(d.closeButton).click(n);if(d.clickOverlayToClose){q.click(n)}q.fadeIn(d.overlayspeed);p[d.show](d.Lightboxspeed,d.loaded)})}})(jQuery);

(function(){var b;b=jQuery.fn.flash=function(g,f,d,i){var h=d||b.replace;f=b.copy(b.pluginOptions,f);if(!b.hasFlash(f.version)){if(f.expressInstall&&b.hasFlash(6,0,65)){var e={flashvars:{MMredirectURL:location,MMplayerType:"PlugIn",MMdoctitle:jQuery("title").text()}}}else{if(f.update){h=i||b.update}else{return this}}}g=b.copy(b.htmlOptions,e,g);return this.each(function(){h.call(this,b.copy(g))})};b.copy=function(){var f={},e={};for(var g=0;g<arguments.length;g++){var d=arguments[g];if(d==undefined){continue}jQuery.extend(f,d);if(d.flashvars==undefined){continue}jQuery.extend(e,d.flashvars)}f.flashvars=e;return f};b.hasFlash=function(){if(/hasFlash\=true/.test(location)){return true}if(/hasFlash\=false/.test(location)){return false}var e=b.hasFlash.playerVersion().match(/\d+/g);var f=String([arguments[0],arguments[1],arguments[2]]).match(/\d+/g)||String(b.pluginOptions.version).match(/\d+/g);for(var d=0;d<3;d++){e[d]=parseInt(e[d]||0);f[d]=parseInt(f[d]||0);if(e[d]<f[d]){return false}if(e[d]>f[d]){return true}}return true};b.hasFlash.playerVersion=function(){try{try{var d=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");try{d.AllowScriptAccess="always"}catch(f){return"6,0,0"}}catch(f){}return new ActiveXObject("ShockwaveFlash.ShockwaveFlash").GetVariable("$version").replace(/\D+/g,",").match(/^,?(.+),?$/)[1]}catch(f){try{if(navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin){return(navigator.plugins["Shockwave Flash 2.0"]||navigator.plugins["Shockwave Flash"]).description.replace(/\D+/g,",").match(/^,?(.+),?$/)[1]}}catch(f){}}return"0,0,0"};b.htmlOptions={height:240,flashvars:{},pluginspage:"http://www.adobe.com/go/getflashplayer",src:"#",type:"application/x-shockwave-flash",width:320};b.pluginOptions={expressInstall:false,update:true,version:"6.0.65"};b.replace=function(d){this.innerHTML='<div class="alt">'+this.innerHTML+"</div>";jQuery(this).addClass("flash-replaced").prepend(b.transform(d))};b.update=function(e){var d=String(location).split("?");d.splice(1,0,"?hasFlash=true&");d=d.join("");var f='<p>This content requires the Flash Player. <a href="http://www.adobe.com/go/getflashplayer">Download Flash Player</a>. Already have Flash Player? <a href="'+d+'">Click here.</a></p>';this.innerHTML='<span class="alt">'+this.innerHTML+"</span>";jQuery(this).addClass("flash-update").prepend(f)};function a(){var e="";for(var d in this){if(typeof this[d]!="function"){e+=d+'="'+this[d]+'" '}}return e}function c(){var e="";for(var d in this){if(typeof this[d]!="function"){e+=d+"="+encodeURIComponent(this[d])+"&"}}return e.replace(/&$/,"")}b.transform=function(d){d.toString=a;if(d.flashvars){d.flashvars.toString=c}return"<embed "+String(d)+"/>"};if(window.attachEvent){window.attachEvent("onbeforeunload",function(){__flash_unloadHandler=function(){};__flash_savedUnloadHandler=function(){}})}})();

var swfobject=function(){var b="undefined",Q="object",n="Shockwave Flash",p="ShockwaveFlash.ShockwaveFlash",P="application/x-shockwave-flash",m="SWFObjectExprInst",j=window,K=document,T=navigator,o=[],N=[],i=[],d=[],J,Z=null,M=null,l=null,e=false,A=false;var h=function(){var v=typeof K.getElementById!=b&&typeof K.getElementsByTagName!=b&&typeof K.createElement!=b,AC=[0,0,0],x=null;if(typeof T.plugins!=b&&typeof T.plugins[n]==Q){x=T.plugins[n].description;if(x&&!(typeof T.mimeTypes!=b&&T.mimeTypes[P]&&!T.mimeTypes[P].enabledPlugin)){x=x.replace(/^.*\s+(\S+\s+\S+$)/,"$1");AC[0]=parseInt(x.replace(/^(.*)\..*$/,"$1"),10);AC[1]=parseInt(x.replace(/^.*\.(.*)\s.*$/,"$1"),10);AC[2]=/r/.test(x)?parseInt(x.replace(/^.*r(.*)$/,"$1"),10):0}}else{if(typeof j.ActiveXObject!=b){var y=null,AB=false;try{y=new ActiveXObject(p+".7")}catch(t){try{y=new ActiveXObject(p+".6");AC=[6,0,21];y.AllowScriptAccess="always"}catch(t){if(AC[0]==6){AB=true}}if(!AB){try{y=new ActiveXObject(p)}catch(t){}}}if(!AB&&y){try{x=y.GetVariable("$version");if(x){x=x.split(" ")[1].split(",");AC=[parseInt(x[0],10),parseInt(x[1],10),parseInt(x[2],10)]}}catch(t){}}}}var AD=T.userAgent.toLowerCase(),r=T.platform.toLowerCase(),AA=/webkit/.test(AD)?parseFloat(AD.replace(/^.*webkit\/(\d+(\.\d+)?).*$/,"$1")):false,q=false,z=r?/win/.test(r):/win/.test(AD),w=r?/mac/.test(r):/mac/.test(AD);
/*@cc_on q=true;@if(@_win32)z=true;@elif(@_mac)w=true;@end@*/
return{w3cdom:v,pv:AC,webkit:AA,ie:q,win:z,mac:w}}();var L=function(){if(!h.w3cdom){return}f(H);if(h.ie&&h.win){try{K.write("<script id=__ie_ondomload defer=true src=//:><\/script>");J=C("__ie_ondomload");if(J){I(J,"onreadystatechange",S)}}catch(q){}}if(h.webkit&&typeof K.readyState!=b){Z=setInterval(function(){if(/loaded|complete/.test(K.readyState)){E()}},10)}if(typeof K.addEventListener!=b){K.addEventListener("DOMContentLoaded",E,null)}R(E)}();function S(){if(J.readyState=="complete"){J.parentNode.removeChild(J);E()}}function E(){if(e){return}if(h.ie&&h.win){var v=a("span");try{var u=K.getElementsByTagName("body")[0].appendChild(v);u.parentNode.removeChild(u)}catch(w){return}}e=true;if(Z){clearInterval(Z);Z=null}var q=o.length;for(var r=0;r<q;r++){o[r]()}}function f(q){if(e){q()}else{o[o.length]=q}}function R(r){if(typeof j.addEventListener!=b){j.addEventListener("load",r,false)}else{if(typeof K.addEventListener!=b){K.addEventListener("load",r,false)}else{if(typeof j.attachEvent!=b){I(j,"onload",r)}else{if(typeof j.onload=="function"){var q=j.onload;j.onload=function(){q();r()}}else{j.onload=r}}}}}function H(){var t=N.length;for(var q=0;q<t;q++){var u=N[q].id;if(h.pv[0]>0){var r=C(u);if(r){N[q].width=r.getAttribute("width")?r.getAttribute("width"):"0";N[q].height=r.getAttribute("height")?r.getAttribute("height"):"0";if(c(N[q].swfVersion)){if(h.webkit&&h.webkit<312){Y(r)}W(u,true)}else{if(N[q].expressInstall&&!A&&c("6.0.65")&&(h.win||h.mac)){k(N[q])}else{O(r)}}}}else{W(u,true)}}}function Y(t){var q=t.getElementsByTagName(Q)[0];if(q){var w=a("embed"),y=q.attributes;if(y){var v=y.length;for(var u=0;u<v;u++){if(y[u].nodeName=="DATA"){w.setAttribute("src",y[u].nodeValue)}else{w.setAttribute(y[u].nodeName,y[u].nodeValue)}}}var x=q.childNodes;if(x){var z=x.length;for(var r=0;r<z;r++){if(x[r].nodeType==1&&x[r].nodeName=="PARAM"){w.setAttribute(x[r].getAttribute("name"),x[r].getAttribute("value"))}}}t.parentNode.replaceChild(w,t)}}function k(w){A=true;var u=C(w.id);if(u){if(w.altContentId){var y=C(w.altContentId);if(y){M=y;l=w.altContentId}}else{M=G(u)}if(!(/%$/.test(w.width))&&parseInt(w.width,10)<310){w.width="310"}if(!(/%$/.test(w.height))&&parseInt(w.height,10)<137){w.height="137"}K.title=K.title.slice(0,47)+" - Flash Player Installation";var z=h.ie&&h.win?"ActiveX":"PlugIn",q=K.title,r="MMredirectURL="+j.location+"&MMplayerType="+z+"&MMdoctitle="+q,x=w.id;if(h.ie&&h.win&&u.readyState!=4){var t=a("div");x+="SWFObjectNew";t.setAttribute("id",x);u.parentNode.insertBefore(t,u);u.style.display="none";var v=function(){u.parentNode.removeChild(u)};I(j,"onload",v)}U({data:w.expressInstall,id:m,width:w.width,height:w.height},{flashvars:r},x)}}function O(t){if(h.ie&&h.win&&t.readyState!=4){var r=a("div");t.parentNode.insertBefore(r,t);r.parentNode.replaceChild(G(t),r);t.style.display="none";var q=function(){t.parentNode.removeChild(t)};I(j,"onload",q)}else{t.parentNode.replaceChild(G(t),t)}}function G(v){var u=a("div");if(h.win&&h.ie){u.innerHTML=v.innerHTML}else{var r=v.getElementsByTagName(Q)[0];if(r){var w=r.childNodes;if(w){var q=w.length;for(var t=0;t<q;t++){if(!(w[t].nodeType==1&&w[t].nodeName=="PARAM")&&!(w[t].nodeType==8)){u.appendChild(w[t].cloneNode(true))}}}}}return u}function U(AG,AE,t){var q,v=C(t);if(v){if(typeof AG.id==b){AG.id=t}if(h.ie&&h.win){var AF="";for(var AB in AG){if(AG[AB]!=Object.prototype[AB]){if(AB.toLowerCase()=="data"){AE.movie=AG[AB]}else{if(AB.toLowerCase()=="styleclass"){AF+=' class="'+AG[AB]+'"'}else{if(AB.toLowerCase()!="classid"){AF+=" "+AB+'="'+AG[AB]+'"'}}}}}var AD="";for(var AA in AE){if(AE[AA]!=Object.prototype[AA]){AD+='<param name="'+AA+'" value="'+AE[AA]+'" />'}}v.outerHTML='<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'+AF+">"+AD+"</object>";i[i.length]=AG.id;q=C(AG.id)}else{if(h.webkit&&h.webkit<312){var AC=a("embed");AC.setAttribute("type",P);for(var z in AG){if(AG[z]!=Object.prototype[z]){if(z.toLowerCase()=="data"){AC.setAttribute("src",AG[z])}else{if(z.toLowerCase()=="styleclass"){AC.setAttribute("class",AG[z])}else{if(z.toLowerCase()!="classid"){AC.setAttribute(z,AG[z])}}}}}for(var y in AE){if(AE[y]!=Object.prototype[y]){if(y.toLowerCase()!="movie"){AC.setAttribute(y,AE[y])}}}v.parentNode.replaceChild(AC,v);q=AC}else{var u=a(Q);u.setAttribute("type",P);for(var x in AG){if(AG[x]!=Object.prototype[x]){if(x.toLowerCase()=="styleclass"){u.setAttribute("class",AG[x])}else{if(x.toLowerCase()!="classid"){u.setAttribute(x,AG[x])}}}}for(var w in AE){if(AE[w]!=Object.prototype[w]&&w.toLowerCase()!="movie"){F(u,w,AE[w])}}v.parentNode.replaceChild(u,v);q=u}}}return q}function F(t,q,r){var u=a("param");u.setAttribute("name",q);u.setAttribute("value",r);t.appendChild(u)}function X(r){var q=C(r);if(q&&(q.nodeName=="OBJECT"||q.nodeName=="EMBED")){if(h.ie&&h.win){if(q.readyState==4){B(r)}else{j.attachEvent("onload",function(){B(r)})}}else{q.parentNode.removeChild(q)}}}function B(t){var r=C(t);if(r){for(var q in r){if(typeof r[q]=="function"){r[q]=null}}r.parentNode.removeChild(r)}}function C(t){var q=null;try{q=K.getElementById(t)}catch(r){}return q}function a(q){return K.createElement(q)}function I(t,q,r){t.attachEvent(q,r);d[d.length]=[t,q,r]}function c(t){var r=h.pv,q=t.split(".");q[0]=parseInt(q[0],10);q[1]=parseInt(q[1],10)||0;q[2]=parseInt(q[2],10)||0;return(r[0]>q[0]||(r[0]==q[0]&&r[1]>q[1])||(r[0]==q[0]&&r[1]==q[1]&&r[2]>=q[2]))?true:false}function V(v,r){if(h.ie&&h.mac){return}var u=K.getElementsByTagName("head")[0],t=a("style");t.setAttribute("type","text/css");t.setAttribute("media","screen");if(!(h.ie&&h.win)&&typeof K.createTextNode!=b){t.appendChild(K.createTextNode(v+" {"+r+"}"))}u.appendChild(t);if(h.ie&&h.win&&typeof K.styleSheets!=b&&K.styleSheets.length>0){var q=K.styleSheets[K.styleSheets.length-1];if(typeof q.addRule==Q){q.addRule(v,r)}}}function W(t,q){var r=q?"visible":"hidden";if(e&&C(t)){C(t).style.visibility=r}else{V("#"+t,"visibility:"+r)}}function g(s){var r=/[\\\"<>\.;]/;var q=r.exec(s)!=null;return q?encodeURIComponent(s):s}var D=function(){if(h.ie&&h.win){window.attachEvent("onunload",function(){var w=d.length;for(var v=0;v<w;v++){d[v][0].detachEvent(d[v][1],d[v][2])}var t=i.length;for(var u=0;u<t;u++){X(i[u])}for(var r in h){h[r]=null}h=null;for(var q in swfobject){swfobject[q]=null}swfobject=null})}}();return{registerObject:function(u,q,t){if(!h.w3cdom||!u||!q){return}var r={};r.id=u;r.swfVersion=q;r.expressInstall=t?t:false;N[N.length]=r;W(u,false)},getObjectById:function(v){var q=null;if(h.w3cdom){var t=C(v);if(t){var u=t.getElementsByTagName(Q)[0];if(!u||(u&&typeof t.SetVariable!=b)){q=t}else{if(typeof u.SetVariable!=b){q=u}}}}return q},embedSWF:function(x,AE,AB,AD,q,w,r,z,AC){if(!h.w3cdom||!x||!AE||!AB||!AD||!q){return}AB+="";AD+="";if(c(q)){W(AE,false);var AA={};if(AC&&typeof AC===Q){for(var v in AC){if(AC[v]!=Object.prototype[v]){AA[v]=AC[v]}}}AA.data=x;AA.width=AB;AA.height=AD;var y={};if(z&&typeof z===Q){for(var u in z){if(z[u]!=Object.prototype[u]){y[u]=z[u]}}}if(r&&typeof r===Q){for(var t in r){if(r[t]!=Object.prototype[t]){if(typeof y.flashvars!=b){y.flashvars+="&"+t+"="+r[t]}else{y.flashvars=t+"="+r[t]}}}}f(function(){U(AA,y,AE);if(AA.id==AE){W(AE,true)}})}else{if(w&&!A&&c("6.0.65")&&(h.win||h.mac)){A=true;W(AE,false);f(function(){var AF={};AF.id=AF.altContentId=AE;AF.width=AB;AF.height=AD;AF.expressInstall=w;k(AF)})}}},getFlashPlayerVersion:function(){return{major:h.pv[0],minor:h.pv[1],release:h.pv[2]}},hasFlashPlayerVersion:c,createSWF:function(t,r,q){if(h.w3cdom){return U(t,r,q)}else{return undefined}},removeSWF:function(q){if(h.w3cdom){X(q)}},createCSS:function(r,q){if(h.w3cdom){V(r,q)}},addDomLoadEvent:f,addLoadEvent:R,getQueryParamValue:function(v){var u=K.location.search||K.location.hash;if(v==null){return g(u)}if(u){var t=u.substring(1).split("&");for(var r=0;r<t.length;r++){if(t[r].substring(0,t[r].indexOf("="))==v){return g(t[r].substring((t[r].indexOf("=")+1)))}}}return""},expressInstallCallback:function(){if(A&&M){var q=C(m);if(q){q.parentNode.replaceChild(M,q);if(l){W(l,true);if(h.ie&&h.win){M.style.display="block"}}M=null;l=null;A=false}}}}}();

(function($){$.extend({metadata:{defaults:{type:"class",name:"metadata",cre:/({.*})/,single:"metadata"},setType:function(type,name){this.defaults.type=type;this.defaults.name=name},get:function(elem,opts){var settings=$.extend({},this.defaults,opts);if(!settings.single.length){settings.single="metadata"}var data=$.data(elem,settings.single);if(data){return data}data="{}";if(settings.type=="class"){var m=settings.cre.exec(elem.className);if(m){data=m[1]}}else{if(settings.type=="elem"){if(!elem.getElementsByTagName){return}var e=elem.getElementsByTagName(settings.name);if(e.length){data=$.trim(e[0].innerHTML)}}else{if(elem.getAttribute!=undefined){var attr=elem.getAttribute(settings.name);if(attr){data=attr}}}}if(data.indexOf("{")<0){data="{"+data+"}"}data=eval("("+data+")");$.data(elem,settings.single,data);return data}}});$.fn.metadata=function(opts){return $.metadata.get(this[0],opts)}})(jQuery);

(function(c){c.fn.media=function(m,l,n){return this.each(function(){if(typeof m=="function"){n=l;l=m;m={}}var w=g(this,m);if(typeof l=="function"){l(this,w)}var v=j();var p=v.exec(w.src)||[""];w.type?p[0]=w.type:p.shift();for(var u=0;u<p.length;u++){fn=p[u].toLowerCase();if(e(fn[0])){fn="fn"+fn}if(!c.fn.media[fn]){continue}var t=c.fn.media[fn+"_player"];if(!w.params){w.params={}}if(t){var s=t.autoplayAttr=="autostart";w.params[t.autoplayAttr||"autoplay"]=s?(w.autoplay?1:0):w.autoplay?true:false}var q=c.fn.media[fn](this,w);q.css("backgroundColor",w.bgColor).width(w.width);if(typeof n=="function"){n(this,q[0],w,t.name)}break}})};c.fn.media.mapFormat=function(m,l){if(!m||!l||!c.fn.media.defaults.players[l]){return}m=m.toLowerCase();if(e(m[0])){m="fn"+m}c.fn.media[m]=c.fn.media[l];c.fn.media[m+"_player"]=c.fn.media.defaults.players[l]};c.fn.media.defaults={width:400,height:400,autoplay:0,bgColor:"#ffffff",params:{wmode:"transparent"},attrs:{},flvKeyName:"file",flashvars:{},flashVersion:"7",expressInstaller:null,flvPlayer:"mediaplayer.swf",mp3Player:"mediaplayer.swf",silverlight:{inplaceInstallPrompt:"true",isWindowless:"true",framerate:"24",version:"0.9",onError:null,onLoad:null,initParams:null,userContext:null}};c.fn.media.defaults.players={flash:{name:"flash",types:"flv,mp3,swf",oAttrs:{classid:"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000",type:"application/x-oleobject",codebase:"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version="+c.fn.media.defaults.flashVersion},eAttrs:{type:"application/x-shockwave-flash",pluginspage:"http://www.adobe.com/go/getflashplayer"}},quicktime:{name:"quicktime",types:"aif,aiff,aac,au,bmp,gsm,mov,mid,midi,mpg,mpeg,mp4,m4a,psd,qt,qtif,qif,qti,snd,tif,tiff,wav,3g2,3gp",oAttrs:{classid:"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B",codebase:"http://www.apple.com/qtactivex/qtplugin.cab"},eAttrs:{pluginspage:"http://www.apple.com/quicktime/download/"}},realplayer:{name:"real",types:"ra,ram,rm,rpm,rv,smi,smil",autoplayAttr:"autostart",oAttrs:{classid:"clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA"},eAttrs:{type:"audio/x-pn-realaudio-plugin",pluginspage:"http://www.real.com/player/"}},winmedia:{name:"winmedia",types:"asx,asf,avi,wma,wmv",autoplayAttr:"autostart",oUrl:"url",oAttrs:{classid:"clsid:6BF52A52-394A-11d3-B153-00C04F79FAA6",type:"application/x-oleobject"},eAttrs:{type:c.browser.mozilla&&k()?"application/x-ms-wmp":"application/x-mplayer2",pluginspage:"http://www.microsoft.com/Windows/MediaPlayer/"}},iframe:{name:"iframe",types:"html,pdf"},silverlight:{name:"silverlight",types:"xaml"}};function k(){var l=navigator.plugins;for(i=0;i<l.length;i++){var m=l[i];if(m.filename=="np-mswmp.dll"){return true}}return false}var a=1;for(var h in c.fn.media.defaults.players){var d=c.fn.media.defaults.players[h].types;c.each(d.split(","),function(l,m){if(e(m[0])){m="fn"+m}c.fn.media[m]=c.fn.media[h]=b(h);c.fn.media[m+"_player"]=c.fn.media.defaults.players[h]})}function j(){var m="";for(var l in c.fn.media.defaults.players){if(m.length){m+=","}m+=c.fn.media.defaults.players[l].types}return new RegExp("\\.("+m.replace(/,/g,"|")+")$\\b")}function b(l){return function(n,m){return f(n,m,l)}}function e(l){return"0123456789".indexOf(l)>-1}function g(n,y){y=y||{};var x=c(n);var v=n.className||"";var u=c.metadata?x.metadata():c.meta?x.data():{};u=u||{};var t=u.width||parseInt(((v.match(/w:(\d+)/)||[])[1]||0));var o=u.height||parseInt(((v.match(/h:(\d+)/)||[])[1]||0));if(t){u.width=t}if(o){u.height=o}if(v){u.cls=v}var s=c.fn.media.defaults;var r=y;var q=u;var m={params:{bgColor:y.bgColor||c.fn.media.defaults.bgColor}};var l=c.extend({},s,r,q);c.each(["attrs","params","flashvars","silverlight"],function(p,w){l[w]=c.extend({},m[w]||{},s[w]||{},r[w]||{},q[w]||{})});if(typeof l.caption=="undefined"){l.caption=x.text()}l.src=l.src||x.attr("href")||x.attr("src")||"unknown";return l}c.fn.media.swf=function(q,l){if(!window.SWFObject&&!window.swfobject){if(l.flashvars){var t=[];for(var r in l.flashvars){t.push(r+"="+l.flashvars[r])}if(!l.params){l.params={}}l.params.flashvars=t.join("&")}return f(q,l,"flash")}var n=q.id?(' id="'+q.id+'"'):"";var u=l.cls?(' class="'+l.cls+'"'):"";var s=c("<div"+n+u+">");if(window.swfobject){c(q).after(s).appendTo(s);if(!q.id){q.id="movie_player_"+a++}swfobject.embedSWF(l.src,q.id,l.width,l.height,l.flashVersion,l.expressInstaller,l.flashvars,l.params,l.attrs)}else{c(q).after(s).remove();var o=new SWFObject(l.src,"movie_player_"+a++,l.width,l.height,l.flashVersion,l.bgColor);if(l.expressInstaller){o.useExpressInstall(l.expressInstaller)}for(var m in l.params){if(m!="bgColor"){o.addParam(m,l.params[m])}}for(var r in l.flashvars){o.addVariable(r,l.flashvars[r])}o.write(s[0])}if(l.caption){c("<div>").appendTo(s).html(l.caption)}return s};c.fn.media.flv=c.fn.media.mp3=function(o,p){var q=p.src;var n=/\.mp3\b/i.test(q)?c.fn.media.defaults.mp3Player:c.fn.media.defaults.flvPlayer;var m=p.flvKeyName;q=encodeURIComponent(q);p.src=n;p.src=p.src+"?"+m+"="+(q);var l={};l[m]=q;p.flashvars=c.extend({},l,p.flashvars);return c.fn.media.swf(o,p)};c.fn.media.xaml=function(r,s){if(!window.Sys||!window.Sys.Silverlight){if(c.fn.media.xaml.warning){return}c.fn.media.xaml.warning=1;alert("You must include the Silverlight.js script.");return}var q={width:s.width,height:s.height,background:s.bgColor,inplaceInstallPrompt:s.silverlight.inplaceInstallPrompt,isWindowless:s.silverlight.isWindowless,framerate:s.silverlight.framerate,version:s.silverlight.version};var o={onError:s.silverlight.onError,onLoad:s.silverlight.onLoad};var p=r.id?(' id="'+r.id+'"'):"";var n=s.id||"AG"+a++;var m=s.cls?(' class="'+s.cls+'"'):"";var l=c("<div"+p+m+">");c(r).after(l).remove();Sys.Silverlight.createObjectEx({source:s.src,initParams:s.silverlight.initParams,userContext:s.silverlight.userContext,id:n,parentElement:l[0],properties:q,events:o});if(s.caption){c("<div>").appendTo(l).html(s.caption)}return l};function f(r,l,w){var A=c(r);var q=c.fn.media.defaults.players[w];if(w=="iframe"){var q=c('<iframe width="'+l.width+'" height="'+l.height+'" >');q.attr("src",l.src);q.css("backgroundColor",q.bgColor)}else{if(c.browser.msie){var u=['<object width="'+l.width+'" height="'+l.height+'" '];for(var x in l.attrs){u.push(x+'="'+l.attrs[x]+'" ')}for(var x in q.oAttrs||{}){var y=q.oAttrs[x];if(x=="codebase"&&window.location.protocol=="https"){y=y.replace("http","https")}u.push(x+'="'+y+'" ')}u.push("></object>");var n=['<param name="'+(q.oUrl||"src")+'" value="'+l.src+'">'];for(var x in l.params){n.push('<param name="'+x+'" value="'+l.params[x]+'">')}var q=document.createElement(u.join(""));for(var s=0;s<n.length;s++){q.appendChild(document.createElement(n[s]))}}else{var u=['<embed width="'+l.width+'" height="'+l.height+'" style="display:block"'];if(l.src){u.push(' src="'+l.src+'" ')}for(var x in l.attrs){u.push(x+'="'+l.attrs[x]+'" ')}for(var x in q.eAttrs||{}){u.push(x+'="'+q.eAttrs[x]+'" ')}for(var x in l.params){if(x!="wmode"){u.push(x+'="'+l.params[x]+'" ')}}u.push("></embed>")}}var m=r.id?(' id="'+r.id+'"'):"";var z=l.cls?(' class="'+l.cls+'"'):"";var t=c("<div"+m+z+">");A.after(t).remove();(c.browser.msie||w=="iframe")?t.append(q):t.html(u.join(""));if(l.caption){c("<div>").appendTo(t).html(l.caption)}return t}})(jQuery);

if(typeof addEvent!="function"){var addEvent=function(b,m,h,g){var i="addEventListener",c="on"+m,k=b,j=m,e=h,a=g;if(b[i]&&!g){return b[i](m,h,false)}if(!b._evts){b._evts={}}if(!b._evts[m]){b._evts[m]=b[c]?{b:b[c]}:{};b[c]=new Function("e",'var r=true,o=this,a=o._evts["'+m+'"],i;for(i in a){o._f=a[i];r=o._f(e||window.event)!=false&&r;o._f=null}return r');if(m!="unload"){addEvent(window,"unload",function(){removeEvent(k,j,e,a)})}}if(!h._i){h._i=addEvent._i++}b._evts[m][h._i]=h};addEvent._i=1;var removeEvent=function(g,b,c,a){var e="removeEventListener";if(g[e]&&!a){return g[e](b,c,false)}if(g._evts&&g._evts[b]&&c._i){delete g._evts[b][c._i]}}}function cancelEvent(a,b){a.returnValue=false;if(a.preventDefault){a.preventDefault()}if(b){a.cancelBubble=true;if(a.stopPropagation){a.stopPropagation()}}}function SuperNote(b,a){var e={myName:b,allowNesting:false,cssProp:"visibility",cssVis:"inherit",cssHid:"hidden",IESelectBoxFix:true,showDelay:0,hideDelay:500,animInSpeed:0.1,animOutSpeed:0.1,animations:[],mouseX:0,mouseY:0,notes:{},rootElm:null,onshow:null,onhide:null};for(var d in e){this[d]=(typeof a[d]=="undefined")?e[d]:a[d]}var c=this;addEvent(document,"mouseover",function(f){c.mouseHandler(f,1)});addEvent(document,"mousemove",function(f){c.mouseTrack(f)});addEvent(document,"mouseout",function(f){c.mouseHandler(f,0)});this.instance=SuperNote.instances.length;SuperNote.instances[this.instance]=this}SuperNote.instances=[];SuperNote.prototype.bTypes={};SuperNote.prototype.pTypes={};SuperNote.prototype.pTypes.mouseoffset=function(obj,noteID,nextVis,nextAnim){with(obj){var note=notes[noteID];if(nextVis&&!note.animating&&!note.visible){note.ref.style.left=checkWinX(mouseX,note)+"px";note.ref.style.top=checkWinY(mouseY,note)+"px"}}};SuperNote.prototype.pTypes.mousetrack=function(obj,noteID,nextVis,nextAnim){with(obj){var note=notes[noteID];if(nextVis&&!note.animating&&!note.visible){var posString="with("+myName+'){var note=notes["'+noteID+'"];note.ref.style.left=checkWinX(mouseX,note)+"px";note.ref.style.top=checkWinY(mouseY,note)+"px"}';eval(posString);obj.IEFrameFix(noteID,1);if(!note.trackTimer){note.trackTimer=setInterval(posString,50)}}else{if(!nextVis&&!nextAnim){clearInterval(note.trackTimer);note.trackTimer=null}}}};SuperNote.prototype.pTypes.triggeroffset=function(obj,noteID,nextVis,nextAnim){with(obj){var note=notes[noteID];if(nextVis&&!note.animating&&!note.visible){var x=0,y=0,elm=note.trigRef;while(elm){x+=elm.offsetLeft;y+=elm.offsetTop;elm=elm.offsetParent}note.ref.style.left=checkWinX(x,note)+"px";note.ref.style.top=checkWinY(y,note)+"px"}}};SuperNote.prototype.bTypes.pinned=function(obj,noteID,nextVis){with(obj){return(!nextVis)?false:true}};SuperNote.prototype.docBody=function(){return document[(document.compatMode&&document.compatMode.indexOf("CSS")>-1)?"documentElement":"body"]};SuperNote.prototype.getWinW=function(){return this.docBody().clientWidth||window.innerWidth||0};SuperNote.prototype.getWinH=function(){return this.docBody().clientHeight||window.innerHeight||0};SuperNote.prototype.getScrX=function(){return this.docBody().scrollLeft||window.scrollX||0};SuperNote.prototype.getScrY=function(){return this.docBody().scrollTop||window.scrollY||0};SuperNote.prototype.checkWinX=function(newX,note){with(this){return Math.max(getScrX(),Math.min(newX,getScrX()+getWinW()-note.ref.offsetWidth-8))}};SuperNote.prototype.checkWinY=function(newY,note){with(this){return Math.max(getScrY(),Math.min(newY,getScrY()+getWinH()-note.ref.offsetHeight-8))}};SuperNote.prototype.mouseTrack=function(evt){with(this){mouseX=evt.pageX||evt.clientX+getScrX()||0;mouseY=evt.pageY||evt.clientY+getScrY()||0}};SuperNote.prototype.mouseHandler=function(evt,show){with(this){if(!document.documentElement){return true}var srcElm=evt.target||evt.srcElement,trigRE=new RegExp(myName+"-(hover|click)-([a-z0-9]+)","i"),targRE=new RegExp(myName+"-(note)-([a-z0-9]+)","i"),trigFind=1,foundNotes={};if(srcElm.nodeType!=1){srcElm=srcElm.parentNode}var elm=srcElm;while(elm&&elm!=rootElm){if(targRE.test(elm.id)||(trigFind&&trigRE.test(elm.className))){if(!allowNesting){trigFind=0}var click=RegExp.$1=="click"?1:0,noteID=RegExp.$2,ref=document.getElementById(myName+"-note-"+noteID),trigRef=trigRE.test(elm.className)?elm:null;if(ref){if(!notes[noteID]){notes[noteID]={click:click,ref:ref,trigRef:null,visible:0,animating:0,timer:null};ref._sn_obj=this;ref._sn_id=noteID}var note=notes[noteID];if(!note.click||(trigRef!=srcElm)){foundNotes[noteID]=true}if(!note.click||(show==2)){if(trigRef){notes[noteID].trigRef=notes[noteID].ref._sn_trig=elm}display(noteID,show);if(note.click&&(srcElm==trigRef)){cancelEvent(evt)}}}}if(elm._sn_trig){trigFind=1;elm=elm._sn_trig}else{elm=elm.parentNode}}if(show==2){for(var n in notes){if(notes[n].click&&notes[n].visible&&!foundNotes[n]){display(n,0)}}}}};SuperNote.prototype.display=function(noteID,show){with(this){with(notes[noteID]){clearTimeout(timer);if(!animating||(show?!visible:visible)){var tmt=animating?1:(show?showDelay||1:hideDelay||1);timer=setTimeout("SuperNote.instances["+instance+'].setVis("'+noteID+'",'+show+",false)",tmt)}}}};SuperNote.prototype.checkType=function(noteID,nextVis,nextAnim){with(this){var note=notes[noteID],bType,pType;if((/snp-([a-z]+)/).test(note.ref.className)){pType=RegExp.$1}if((/snb-([a-z]+)/).test(note.ref.className)){bType=RegExp.$1}if(nextAnim&&bType&&bTypes[bType]&&(bTypes[bType](this,noteID,nextVis)==false)){return false}if(pType&&pTypes[pType]){pTypes[pType](this,noteID,nextVis,nextAnim)}return true}};SuperNote.prototype.setVis=function(noteID,show,now){with(this){var note=notes[noteID];if(note&&checkType(noteID,show,1)||now){note.visible=show;note.animating=1;animate(noteID,show,now)}}};SuperNote.prototype.animate=function(noteID,show,now){with(this){var note=notes[noteID];if(!note.animTimer){note.animTimer=0}if(!note.animC){note.animC=0}with(note){clearTimeout(animTimer);var speed=(animations.length&&!now)?(show?animInSpeed:animOutSpeed):1;if(show&&!animC){if(onshow){this.onshow(noteID)}IEFrameFix(noteID,1);ref.style[cssProp]=cssVis}animC=Math.max(0,Math.min(1,animC+speed*(show?1:-1)));if(document.getElementById&&speed<1){for(var a=0;a<animations.length;a++){animations[a](ref,animC)}}if(!show&&!animC){if(onhide){this.onhide(noteID)}IEFrameFix(noteID,0);ref.style[cssProp]=cssHid}if(animC!=parseInt(animC)){animTimer=setTimeout(myName+'.animate("'+noteID+'",'+show+")",50)}else{checkType(noteID,animC?1:0,0);note.animating=0}}}};SuperNote.prototype.IEFrameFix=function(noteID,show){with(this){if(!window.createPopup||!IESelectBoxFix){return}var note=notes[noteID],ifr=note.iframe;if(!ifr){ifr=notes[noteID].iframe=document.createElement("iframe");ifr.setAttribute("src","javascript:false;");ifr.style.filter="progid:DXImageTransform.Microsoft.Alpha(opacity=0)";ifr.style.position="absolute";ifr.style.borderWidth="0";note.ref.parentNode.insertBefore(ifr,note.ref.parentNode.firstChild)}if(show){ifr.style.left=note.ref.offsetLeft+"px";ifr.style.top=note.ref.offsetTop+"px";ifr.style.width=note.ref.offsetWidth+"px";ifr.style.height=note.ref.offsetHeight+"px";ifr.style.visibility="inherit"}else{ifr.style.visibility="hidden"}}};

var HOSTURL="/";var AJAXPATH="";if(typeof(jive)=="undefined"){var jive=new Object();jive.gui=new Object();jive.model=new Object();jive.ext=new Object();jive.ext.y=new Object();jive.ext.x=new Object();jive.xml=new Object();jive.rte=new Object();jive.rte.macros=new Array()}if(typeof(console)=="undefined"){console=new Object();console.log=function(a){}}if(typeof(console.debug)!="function"){console.debug=console.log};

jive.ext.x.xMac=(navigator.appVersion.indexOf("Mac")!=-1);jive.ext.x.xWindows=!jive.ext.x.xMac;jive.ext.x.xVersion="3.15.1";jive.ext.x.xNN4=false;jive.ext.x.xOp7=false;jive.ext.x.xOp5or6=false;jive.ext.x.xIE4Up=false;jive.ext.x.xIE4=false;jive.ext.x.xIE5=false;jive.ext.x.xUA=navigator.userAgent.toLowerCase();jive.ext.x.xIE=false;jive.ext.x.xSafari=false;if(window.opera){jive.ext.x.xOp7=(jive.ext.x.xUA.indexOf("opera 7")!=-1||jive.ext.x.xUA.indexOf("opera/7")!=-1);if(!jive.ext.x.xOp7){jive.ext.x.xOp5or6=(jive.ext.x.xUA.indexOf("opera 5")!=-1||jive.ext.x.xUA.indexOf("opera/5")!=-1||jive.ext.x.xUA.indexOf("opera 6")!=-1||jive.ext.x.xUA.indexOf("opera/6")!=-1)}}else{if(document.all){jive.ext.x.xIE4Up=jive.ext.x.xUA.indexOf("msie")!=-1&&parseInt(navigator.appVersion)>=4;jive.ext.x.xIE4=jive.ext.x.xUA.indexOf("msie 4")!=-1;jive.ext.x.xIE5=jive.ext.x.xUA.indexOf("msie 5")!=-1;jive.ext.x.xIE6=jive.ext.x.xUA.indexOf("msie 6")!=-1;jive.ext.x.xIE7=jive.ext.x.xUA.indexOf("msie 7")!=-1;jive.ext.x.xIE4Up=jive.ext.x.xIE4||jive.ext.x.xIE5||jive.ext.x.xIE6;jive.ext.x.xIE=true}}if(jive.ext.x.xUA.indexOf("safari")!=-1||jive.ext.x.xUA.indexOf("Safari")!=-1){jive.ext.x.xSafari=true}jive.ext.x.xGetElementById=function(b,a){if(!$obj(a)){a=b.ownerDocument}if(b==null){return b}if(typeof(b)!="string"){return b}if(a.getElementById){b=a.getElementById(b)}else{if(a.all){b=a.all[b]}else{b=null}}return b};jive.ext.x.xParent=function(c,b){if(!(c=jive.ext.x.xGetElementById(c))){return null}var a=null;if(!b&&$def(c.offsetParent)){a=c.offsetParent}else{if($def(c.parentNode)){a=c.parentNode}else{if($def(c.parentElement)){a=c.parentElement}}}return a};var $def=function(a){return(typeof(a)!="undefined")};var $obj=function(a){return(typeof(a)=="object")};var $arr=function(a){return a!=null&&$obj(a)&&$def(a.splice)};$str=function(a){return typeof(a)=="string"};var $num=function(a){return typeof(a)=="number"};jive.ext.x.xShow=function(a){if(!(a=jive.ext.x.xGetElementById(a))){return}if(a.style&&$def(a.style.visibility)){a.style.visibility="visible"}};jive.ext.x.xHide=function(a){if(!(a=jive.ext.x.xGetElementById(a))){return}if(a.style&&$def(a.style.visibility)){a.style.visibility="hidden"}};jive.ext.x.xDisplay=function(b,a){if(!(b=jive.ext.x.xGetElementById(b))){return null}if(b.style&&$def(b.style.display)){if($str(a)){b.style.display=a}return b.style.display}return null};jive.ext.x.xDisplayNone=function(a){if(!(a=jive.ext.x.xGetElementById(a))){return}if(a.style&&$def(a.style.display)){a.style.display="none"}};jive.ext.x.xDisplayBlock=function(a){if(!(a=jive.ext.x.xGetElementById(a))){return}if(a.style&&$def(a.style.display)){a.style.display="block"}};jive.ext.x.xDisplayInline=function(a){if(!(a=jive.ext.x.xGetElementById(a))){return}if(a.style&&$def(a.style.display)){a.style.display="inline"}};jive.ext.x.xZIndex=function(b,a){if(!(b=jive.ext.x.xGetElementById(b))){return 0}if(b.style&&$def(b.style.zIndex)){if($num(a)){b.style.zIndex=a}a=parseInt(b.style.zIndex)}return a};jive.ext.x.xMoveTo=function(b,a,c){jive.ext.x.xLeft(b,a);jive.ext.x.xTop(b,c)};jive.ext.x.xLeft=function(c,a){if(!(c=jive.ext.x.xGetElementById(c))){return 0}var b=$def(c.style);if(b&&$str(c.style.left)){if($num(a)){c.style.left=a+"px"}else{a=parseInt(c.style.left);if(isNaN(a)){a=0}}}else{if(b&&$def(c.style.pixelLeft)){if($num(a)){c.style.pixelLeft=a}else{a=c.style.pixelLeft}}}return a};jive.ext.x.xTop=function(b,c){if(!(b=jive.ext.x.xGetElementById(b))){return 0}var a=$def(b.style);if(a&&$str(b.style.top)){if($num(c)){b.style.top=c+"px"}else{c=parseInt(b.style.top);if(isNaN(c)){c=0}}}else{if(a&&$def(b.style.pixelTop)){if($num(c)){b.style.pixelTop=c}else{c=b.style.pixelTop}}}return c};jive.ext.x.xPageX=function(a){var b=0;if(a.offsetParent){while(1){b+=a.offsetLeft;if(!a.offsetParent){break}a=a.offsetParent}}else{if(a.x){b+=a.x}}return b};jive.ext.x.xPageY=function(b){var a=0;if(b.offsetParent){while(1){a+=b.offsetTop;if(!b.offsetParent){break}b=b.offsetParent}}else{if(b.y){a+=b.y}}return a};jive.ext.x.xScrollLeft=function(b){var c=0,a=b.ownerDocument;if(!(b=jive.ext.x.xGetElementById(b))){if(a.documentElement&&a.documentElement.scrollLeft){c=a.documentElement.scrollLeft}else{if(a.body&&$def(a.body.scrollLeft)){c=a.body.scrollLeft}}}else{if($num(b.scrollLeft)){c=b.scrollLeft}}return c};jive.ext.x.xScrollTop=function(b){var c=0,a=b.ownerDocument;if(!(b=jive.ext.x.xGetElementById(b))){if(a.documentElement&&a.documentElement.scrollTop){c=a.documentElement.scrollTop}else{if(a.body&&$def(a.body.scrollTop)){c=a.body.scrollTop}}}else{if($num(b.scrollTop)){c=b.scrollTop}}return c};jive.ext.x.xWidth=function(g,b){if(!(g=jive.ext.x.xGetElementById(g))){return 0}if($num(b)){if(b<0){b=0}else{b=Math.round(b)}}else{b=-1}var d=$def(g.style);if(g==document||g.tagName.toLowerCase()=="html"||g.tagName.toLowerCase()=="body"){b=jive.ext.x.xClientWidth()}else{if(d&&$def(g.offsetWidth)&&$str(g.style.width)){if(b>=0){var f=0,i=0,h=0,c=0;if(document.compatMode=="CSS1Compat"){var a=jive.ext.x.xGetCS;f=a(g,"padding-left",1);if(f!==null){i=a(g,"padding-right",1);h=a(g,"border-left-width",1);c=a(g,"border-right-width",1)}else{if($def(g.offsetWidth,g.style.width)){g.style.width=b+"px";f=g.offsetWidth-b}}}b-=(f+i+h+c);if(isNaN(b)||b<0){return}else{g.style.width=b+"px"}}b=g.offsetWidth}else{if(d&&$def(g.style.pixelWidth)){if(b>=0){g.style.pixelWidth=b}b=g.style.pixelWidth}}}return b};jive.ext.x.xCamelize=function(d){var e,g,b=d.split("-");var f=b[0];for(e=1;e<b.length;++e){g=b[e].charAt(0);f+=b[e].replace(g,g.toUpperCase())}return f};jive.ext.x.xGetCS=function(f,d){try{if(!(f=jive.ext.x.xGetElementById(f))){return null}var c,a="undefined",b=f.ownerDocument.defaultView;if(b&&b.getComputedStyle){c=b.getComputedStyle(f,"");if(c){a=c.getPropertyValue(d)}}else{if(f.currentStyle){a=f.currentStyle[jive.ext.x.xCamelize(d)]}else{return null}}if($str(a)&&a.indexOf("px")>0){a=a.substr(0,a.indexOf("px"));a=parseInt(a)}return a}catch(f){return""}};jive.ext.x.xGetCSFunc=function(f,d){try{if(!(f=jive.ext.x.xGetElementById(f))){return null}var c,a="undefined",b=f.ownerDocument.defaultView;if(b&&b.getComputedStyle){c=b.getComputedStyle(f,"");if(c){return function(e){return function(h){var g=e.getPropertyValue(h);if($str(g)&&g.indexOf("px")>0){g=g.substr(0,g.indexOf("px"));g=parseInt(g)}return g}}(c)}}else{if(f.currentStyle){return function(e){return function(h){var g=e[jive.ext.x.xCamelize(h)];if($str(g)&&g.indexOf("px")>0){g=g.substr(0,g.indexOf("px"));g=parseInt(g)}return g}}(f.currentStyle)}else{return function(){return"undefined"}}}}catch(f){return function(){return"undefined"}}};jive.ext.x.xSetCH=function(e,d){var g=0,b=0,a=0,h=0,f=e.ownerDocument;if($def(f.defaultView)&&$def(f.defaultView.getComputedStyle)){g=jive.ext.x.xGetCS(e,"padding-top");b=jive.ext.x.xGetCS(e,"padding-bottom");a=jive.ext.x.xGetCS(e,"border-top-width");h=jive.ext.x.xGetCS(e,"border-bottom-width")}else{if($def(e.currentStyle,f.compatMode)){if(f.compatMode=="CSS1Compat"){g=parseInt(e.currentStyle.paddingTop);b=parseInt(e.currentStyle.paddingBottom);a=parseInt(e.currentStyle.borderTopWidth);h=parseInt(e.currentStyle.borderBottomWidth)}}else{if($def(e.offsetHeight,e.style.height)){e.style.height=d+"px";g=e.offsetHeight-d}}}if(isNaN(g)){g=0}if(isNaN(b)){b=0}if(isNaN(a)){a=0}if(isNaN(h)){h=0}var c=d-(g+b+a+h);if(isNaN(c)||c<0){return}else{e.style.height=c+"px"}};jive.ext.x.xHeight=function(c,b){if(!(c=jive.ext.x.xGetElementById(c))){return 0}if($num(b)){if(b<0){b=0}else{b=Math.round(b)}}else{b=0}var a=$def(c.style);if(a&&$def(c.offsetHeight)&&$str(c.style.height)){if(b){jive.ext.x.xSetCH(c,b)}b=c.offsetHeight}else{if(a&&$def(c.style.pixelHeight)){if(b){c.style.pixelHeight=b}b=c.style.pixelHeight}}return b};jive.ext.x.xHasPoint=function(i,e,d,b,c,a,f){if(!$num(b)){b=c=a=f=0}else{if(!$num(c)){c=a=f=b}else{if(!$num(a)){f=c;a=b}}}var h=jive.ext.x.xPageX(i),g=jive.ext.x.xPageY(i);return(e>=h+f&&e<=h+jive.ext.x.xWidth(i)-c&&d>=g+b&&d<=g+jive.ext.x.xHeight(i)-a)};jive.ext.x.xClientWidth=function(){var a=0;if(jive.ext.x.xOp5or6){a=window.innerWidth}else{if(!window.opera&&document.documentElement&&document.documentElement.clientWidth){a=document.documentElement.clientWidth}else{if(document.body&&document.body.clientWidth){a=document.body.clientWidth}else{if($def(window.innerWidth,window.innerHeight,document.height)){a=window.innerWidth;if(document.height>window.innerHeight){a-=16}}}}}return a};jive.ext.x.xClientHeight=function(){var a=0;if(jive.ext.x.xOp5or6){a=window.innerHeight}else{if(!window.opera&&document.documentElement&&document.documentElement.clientHeight){a=document.documentElement.clientHeight}else{if(document.body&&document.body.clientHeight){a=document.body.clientHeight}else{if($def(window.innerWidth,window.innerHeight,document.width)){a=window.innerHeight;if(document.width>window.innerWidth){a-=16}}}}}return a};jive.ext.x.xDocHeight=function(h){if(h){var c=h.body,g=h.documentElement}else{var c=document.body,g=document.documentElement}var d=0,i=0,f=0,a=0;if(g){d=g.scrollHeight;i=g.offsetHeight}if(c){f=c.scrollHeight;a=c.offsetHeight}return Math.max(d,i,f,a)};

jive.ext.x.xAddEventListener=function(e,eventType,eventListener,useCapture){if(!(e=jive.ext.x.xGetElementById(e))){return}eventType=eventType.toLowerCase();if((!jive.ext.x.xIE4Up&&!jive.ext.x.xOp7)&&e==window){if(eventType=="resize"){jive.ext.x.xPCW=jive.ext.x.xClientWidth();jive.ext.x.xPCH=jive.ext.x.xClientHeight();jive.ext.x.xREL=eventListener;jive.ext.x.xResizeEvent();return}if(eventType=="scroll"){jive.ext.x.xPSL=jive.ext.x.xScrollLeft();jive.ext.x.xPST=jive.ext.x.xScrollTop();jive.ext.x.xSEL=eventListener;jive.ext.x.xScrollEvent();return}}if(e.addEventListener){e.addEventListener(eventType,eventListener,useCapture)}else{if(e.attachEvent){e.attachEvent("on"+eventType,eventListener)}else{if(e.captureEvents){if(useCapture||(eventType.indexOf("mousemove")!=-1)){e.captureEvents(eval("Event."+eventType.toUpperCase()))}var eh="e.on"+eventType+"=eventListener";eval(eh)}else{var eh="e.on"+eventType+"=eventListener";eval(eh)}}}};jive.ext.x.xRemoveEventListener=function(e,eventType,eventListener,useCapture){if(!(e=jive.ext.x.xGetElementById(e))){return}eventType=eventType.toLowerCase();if((!jive.ext.x.xIE4Up&&!jive.ext.x.xOp7)&&e==window){if(eventType=="resize"){jive.ext.x.xREL=null;return}if(eventType=="scroll"){jive.ext.x.xSEL=null;return}}var eh="e.on"+eventType+"=null";if(e.removeEventListener){e.removeEventListener(eventType,eventListener,useCapture)}else{if(e.detachEvent){e.detachEvent("on"+eventType,eventListener)}else{if(e.releaseEvents){if(useCapture||(eventType.indexOf("mousemove")!=-1)){e.releaseEvents(eval("Event."+eventType.toUpperCase()))}eval(eh)}else{eval(eh)}}}};jive.ext.x.xStopPropagation=function(a){if(a&&a.stopPropagation){a.stopPropagation()}else{if(window.event){window.event.cancelBubble=true}}};jive.ext.x.xEvent=function(b){this.type="";this.target=null;this.keyCode=0;var f=b?b:window.event;if(!f){return}if(f.type){this.type=f.type}if(f.target){this.target=f.target}else{if(f.srcElement){this.target=f.srcElement}}var d=null;var c=null;this.pageX=function(){if(d==null){if(jive.ext.x.xOp5or6){d=f.clientX;c=f.clientY}else{if(jive.ext.x.xDef(f.clientX,f.clientY)){d=f.clientX+jive.ext.x.xScrollLeft();c=f.clientY+jive.ext.x.xScrollTop()}}}return d};this.pageY=function(){if(c==null){if(jive.ext.x.xOp5or6){d=f.clientX;c=f.clientY}else{if(jive.ext.x.xDef(f.clientX,f.clientY)){d=f.clientX+jive.ext.x.xScrollLeft();c=f.clientY+jive.ext.x.xScrollTop()}}}return c};var a=null;var g=null;this.offsetX=function(){if(a==null){if(jive.ext.x.xDef(f.layerX,f.layerY)){a=f.layerX;g=f.layerY}else{if(jive.ext.x.xDef(f.offsetX,f.offsetY)){a=f.offsetX;g=f.offsetY}else{a=this.pageX-jive.ext.x.xPageX(this.target);g=this.pageY-jive.ext.x.xPageY(this.target)}}}return a};this.offsetY=function(){if(g==null){if(jive.ext.x.xDef(f.layerX,f.layerY)){a=f.layerX;g=f.layerY}else{if(jive.ext.x.xDef(f.offsetX,f.offsetY)){a=f.offsetX;g=f.offsetY}else{a=this.pageX-jive.ext.x.xPageX(this.target);g=this.pageY-jive.ext.x.xPageY(this.target)}}}return g};if(f.keyCode){this.keyCode=f.keyCode}else{if(jive.ext.x.xDef(f.which)){this.keyCode=f.which}}};jive.ext.x.xResizeEvent=function(){if(jive.ext.x.xREL){setTimeout("jive.ext.x.xResizeEvent()",250)}var a=jive.ext.x.xClientWidth(),b=jive.ext.x.xClientHeight();if(jive.ext.x.xPCW!=a||jive.ext.x.xPCH!=b){jive.ext.x.xPCW=a;jive.ext.x.xPCH=b;if(jive.ext.x.xREL){jive.ext.x.xREL()}}};jive.ext.x.xScrollEvent=function(){if(jive.ext.x.xSEL){setTimeout("jive.ext.x.xScrollEvent()",250)}var a=jive.ext.x.xScrollLeft(),b=jive.ext.x.xScrollTop();if(jive.ext.x.xPSL!=a||jive.ext.x.xPST!=b){jive.ext.x.xPSL=a;jive.ext.x.xPST=b;if(jive.ext.x.xSEL){jive.ext.x.xSEL()}}};

jive.ext.x.xTimerMgr=function(){this.set=function(d,f,c,b,e){return(this.timers[this.timers.length]=new a(d,f,c,b,e))};this.timers=new Array();this.running=false;this.run=function(){if(this.running){return}this.running=true;var e,c,f=new Date(),b=f.getTime();for(e=0;e<this.timers.length;++e){c=this.timers[e];if(c&&c.running){c.elapsed=b-c.time0;if(c.elapsed>=c.preset){c.obj[c.mthd](c);if(c.type.charAt(0)=="i"){c.time0=b}else{c.stop()}}}}this.running=false};function a(b,e,f,c,d){this.stop=function(){this.running=false};this.start=function(){this.running=true};this.reset=function(){var g=new Date();this.time0=g.getTime();this.elapsed=0;this.running=true};this.data=d;this.type=b;this.obj=e;this.mthd=f;this.preset=c;this.reset()}};jive.ext.x.xTimer=new jive.ext.x.xTimerMgr();jive.ext.x.xAddEventListener(window,"load",function(){setInterval("jive.ext.x.xTimer.run()",250)});

jive.ext.y.HashTable=function(){var b=this;var a=0;this.getCount=function(){return a};this.undefined=new Object();this.cache=new Array();this.put=function(c,d){b.clear(c);b.cache[c]=d;a=a+1};this.get=function(c){if(typeof(b.cache[c])!="undefined"&&b.cache[c]!=b.undefined){return b.cache[c]}else{return false}};this.clear=function(c){if(b.cache[c]!=b.undefined&&b.cache[c]!=null){a=a-1}b.cache[c]=b.undefined};this.toArray=function(e){var c=new Array();for(var d in b.cache){if(typeof(e)=="function"&&e(b.cache[d])){c.push(b.cache[d])}else{if(typeof(e)!="function"&&b.cache[d]!=b.undefined&&b.cache[d]!=Array.prototype.find&&b.cache[d]!=Array.prototype.jFind&&b.cache[d]!=Array.prototype.remove&&b.cache[d]!=Array.prototype.______array&&b.cache[d]!=null){c.push(b.cache[d])}}}return c};this.toKeysArray=function(e){var c=new Array();for(var d in b.cache){c.push(d)}return c}};jive.ext.y.yBottom=function(b,c){if(!(b=jive.ext.x.xGetElementById(b))){return 0}var a=$def(b.style);if(a&&$str(b.style.bottom)){if($num(c)){b.style.bottom=c+"px"}else{c=parseInt(b.style.bottom);if(isNaN(c)){c=0}}}else{if(a&&$def(b.style.pixelBottom)){if($num(c)){b.style.pixelBottom=c}else{c=b.style.pixelBottom}}}return c};jive.ext.y.yOpacity=function(a,b){if(!(a=jive.ext.x.xGetElementById(a))){return}if(jotlet.external.x.xNum(b)){if(b<0){b=0}else{if(b>100){b=100}else{b=Math.round(b)}}if(jotlet.external.x.xDef(a.style.MozOpacity)){a.style.MozOpacity=(b/100);return a.style.MozOpacity*100}if(jotlet.external.x.xDef(a.style.opacity)){a.style.opacity=(b/100);return a.style.opacity*100}if(jotlet.external.x.xStr(a.style.filter)){a.style.filter="alpha(opacity="+(b)+")";a.yOpacity=b;return a.yOpacity}}if(jotlet.external.x.xDef(a.style.MozOpacity)){return a.style.MozOpacity*100}if(jotlet.external.x.xDef(a.style.opacity)){return a.style.opacity*100}if(jotlet.external.x.xDef(a.filters)&&jotlet.external.x.xDef(a.filters.alpha)&&jotlet.external.x.xDef(a.filters.alpha.opacity)){return a.filters.alpha.opacity}};

jive.ext.y.yAjax=function(a,d){var f=false;if(window.XMLHttpRequest){f=new XMLHttpRequest();if(f.overrideMimeType){f.overrideMimeType("text/xml")}}else{if(window.ActiveXObject){try{f=new ActiveXObject("Msxml2.XMLHTTP")}catch(c){try{f=new ActiveXObject("Microsoft.XMLHTTP")}catch(c){}}}}if(!f){return false}f.onreadystatechange=b;function b(){try{if(f.readyState==4){if(f.status==200){a(f.responseText)}else{d()}}}catch(g){}}this.POST=function(e,g){f.open("POST",e,true);f.setRequestHeader("Content-type","application/x-www-form-urlencoded");f.setRequestHeader("Content-length",g.length);f.setRequestHeader("Connection","close");f.send(g)}};

jive.xml._Xparse_count=0;jive.xml._Xparse_index=new Array();jive.xml._entity=function(b){var a=new Array();a=b.split("&lt;");b=a.join("<");a=b.split("&gt;");b=a.join(">");a=b.split("&quot;");b=a.join('"');a=b.split("&apos;");b=a.join("'");a=b.split("&amp;");b=a.join("&");return b};jive.xml._strip=function(b){var a=new Array();a=b.split("\n");b=a.join("");a=b.split(" ");b=a.join("");a=b.split("\t");b=a.join("");return b};jive.xml._normalize=function(b){var a=new Array();a=b.split("\n");b=a.join(" ");a=b.split("\t");b=a.join(" ");return b};jive.xml._element=function(){this.type="element";this.tagName=new String();this.attributes=new Array();this.childNodes=new Array();this.nodeValue="";this.uid=jive.xml._Xparse_count++;jive.xml._Xparse_index[this.uid]=this};jive.xml._chardata=function(){this.type="chardata";this.value=new String()};jive.xml._pi=function(){this.type="pi";this.value=new String()};jive.xml._comment=function(){this.type="comment";this.value=new String()};jive.xml._frag=function(){this.str=new String();this.ary=new Array();this.end=new String()};jive.xml._tag_element=function(i){var j=i.str.indexOf(">");var f=(i.str.substring(j-1,j)=="/");if(f){j-=1}var g=jive.xml._normalize(i.str.substring(1,j));var c=g.indexOf(" ");var a=new String();var b=new String();if(c!=-1){b=g.substring(0,c);a=g.substring(c+1,g.length)}else{b=g}var h=i.ary.length;i.ary[h]=new jive.xml._element();i.ary[h].tagName=jive.xml._strip(b);if(a.length>0){i.ary[h].attributes=jive.xml._attribution(a)}if(!f){var e=new jive.xml._frag();e.str=i.str.substring(j+1,i.str.length);e.end=b;var d=e;e=jive.xml._compile(e);i.ary[h].childNodes=e.ary;i.ary[h].nodeValue=d;i.str=e.str}else{i.str=i.str.substring(j+2,i.str.length)}return i};jive.xml._tag_pi=function(d){var c=d.str.indexOf("?>");var b=d.str.substring(2,c);var a=d.ary.length;d.ary[a]=new jive.xml._pi();d.ary[a].nodeValue=b;d.str=d.str.substring(c+2,d.str.length);return d};jive.xml._tag_comment=function(d){var c=d.str.indexOf("-->");var b=d.str.substring(4,c);var a=d.ary.length;d.ary[a]=new jive.xml._comment();d.ary[a].nodeValue=b;d.str=d.str.substring(c+3,d.str.length);return d};jive.xml._tag_cdata=function(d){var c=d.str.indexOf("]]>");var b=d.str.substring(9,c);var a=d.ary.length;d.ary[a]=new jive.xml._chardata();d.ary[a].nodeValue=b;d.str=d.str.substring(c+3,d.str.length);return d};jive.xml._attribution=function(e){var f=new Array();while(1){var i=e.indexOf("=");if(e.length==0||i==-1){return f}var h=e.indexOf("'");var g=e.indexOf('"');var a=new Number();var c=new String();if((h<g&&h!=-1)||g==-1){a=h;c="'"}if((g<h||h==-1)&&g!=-1){a=g;c='"'}var j=e.indexOf(c,a+1);var d=e.substring(a+1,j);var b=jive.xml._strip(e.substring(0,i));f[b]=jive.xml._entity(d);e=e.substring(j+1,e.length)}return""};jive.xml._compile=function(c){while(1){if(c.str.length==0){return c}var a=c.str.indexOf("<");if(a!=0){var b=c.ary.length;c.ary[b]=new jive.xml._chardata();if(a==-1){c.ary[b].nodeValue=jive.xml._entity(c.str);c.str=""}else{c.ary[b].nodeValue=jive.xml._entity(c.str.substring(0,a));c.str=c.str.substring(a,c.str.length)}}else{if(c.str.substring(1,2)=="?"){c=jive.xml._tag_pi(c)}else{if(c.str.substring(1,4)=="!--"){c=jive.xml._tag_comment(c)}else{if(c.str.substring(1,9)=="![CDATA["){c=jive.xml._tag_cdata(c)}else{if(c.str.substring(1,c.end.length+3)=="/"+c.end+">"||jive.xml._strip(c.str.substring(1,c.end.length+3))=="/"+c.end){c.str=c.str.substring(c.end.length+3,c.str.length);c.end="";return c}else{c=jive.xml._tag_element(c)}}}}}}return""};jive.xml._prolog=function(c){var a=new Array();a=c.split("\r\n");c=a.join("\n");a=c.split("\r");c=a.join("\n");var e=c.indexOf("<");if(c.substring(e,e+3)=="<?x"||c.substring(e,e+3)=="<?X"){var b=c.indexOf("?>");c=c.substring(b+2,c.length)}var e=c.indexOf("<!DOCTYPE");if(e!=-1){var b=c.indexOf(">",e)+1;var d=c.indexOf("[",e);if(d<b&&d!=-1){b=c.indexOf("]>",e)+2}c=c.substring(b,c.length)}return c};jive.xml.Xparse=function(b){var c=new jive.xml._frag();c.str=jive.xml._prolog(b);var a=new Object();c=jive.xml._compile(c);if(c.ary.length>0){a.documentElement=c.ary[0]}else{a.documentElement=null}a.tagName="ROOT";a.index=jive.xml._Xparse_index;jive.xml._Xparse_index=new Array();return a};

jive.xml.XMLParser=function(){var g=null;if(window.ActiveXObject){var a=["MSXML4.DOMDocument","MSXML3.DOMDocument","MSXML2.DOMDocument","MSXML.DOMDocument","Microsoft.XmlDom"];var d=null;if(d==null){var c=false;for(var b=0;b<a.length&&!c;b++){try{d=new ActiveXObject(a[b]);c=true}catch(f){}}}if(d==null){alert("No XML parser available");return}g=function(e){d.async="false";d.loadXML(e);return d}}if(g==null&&window.DOMParser){var d=new DOMParser();g=function(i){var h=d.parseFromString(i,"text/xml");var e=h.documentElement;if((e.tagName=="parserError")||(e.namespaceURI=="http://www.mozilla.org/newlayout/xml/parsererror.xml")){return null}return h}}else{if(g==null&&document.implementation&&document.implementation.createDocument){var d=document.implementation.createDocument("","",null);g=function(e){d.async="false";d.loadXML(e);return d}}else{g=function(e){return jive.xml.Xparse(e)}}}this.parse=function(e){if(g!=null){return g(e)}else{throw"no xml parser defined"}}};

jive.model.Ajax=function(c,a,d){var b=this;this.POST=function(f,g){var e=function(j){try{var k=null;if(!$obj(k)||k==null||!$obj(k.documentElement)||k.documentElement==null){var m=new jive.xml.XMLParser();try{k=m.parse(j)}catch(l){d("XML Parse exception");return}}if($obj(k)&&k!=null&&$obj(k.documentElement)&&k.documentElement!=null){k=k.documentElement}else{d("XML Parse exception");return}if(k.tagName=="br"){d("Server Exception")}else{if(k.tagName=="NotLoggedInException"){c.handleLogIn(function(){b.POST(f,g)})}else{c.poke();a(k)}}}catch(l){alert("ajax error:"+l)}};var i=function(){d("500 Status")};var h=new jive.ext.y.yAjax(e,i);h.POST(f,g)}};

jive.model.Controller=function(){var f=this;var a=new Object();a.childNodes=new Array();this.newAjax=function(m,n){return new jive.model.Ajax(f,m,n)};var c=new jive.model.LoginManager(f);this.getLoginManager=function(){return c};var d=new jive.model.SettingsManager(f);this.getSettingsManager=function(){return d};var i=new jive.model.RefreshManager(f);this.getRefreshManager=function(){return i};var e=new jive.model.LanguageManager(f,default_lang);this.getLanguageManager=function(){return e};var l=new jive.model.ProjectCache(f);this.getProjectCache=function(){return l};var g=new jive.model.UserCache(f);this.getUserCache=function(){return g};var b=new jive.model.TaskCache(f);this.getTaskCache=function(){return b};var j=new jive.model.PlacesCache(f);this.getPlacesCache=function(){return j};this.handleLogIn=function(m){f.getRefreshManager().loggedOut()};this.poke=function(){f.getRefreshManager().poke()};this.isCalendarVisibleHuh=function(m){return true};this.isReadOnly=function(){return false};this.addListener=function(m){h.push(m)};var h=new Array();var k=new Array();this.addListenerAction=function(m){k.push(m)};this.executeListenerActions=function(){while(k.length>0){k[0]();k.splice(0,1)}};this.removeListener=function(n){for(var m=0;m<h.length;m++){if(h[m]==n){h.splice(m,1)}}};this.notifyTinyMCELoaded=function(){for(var m=0;m<h.length;m++){h[m].tinyMCELoaded()}f.executeListenerActions()}};

jive.model.dateLTEQ=function(b,a){return(b.getFullYear()<a.getFullYear()||b.getFullYear()==a.getFullYear()&&(b.getMonth()<a.getMonth()||b.getMonth()==a.getMonth()&&(b.getDate()<=a.getDate())))};jive.model.dateLT=function(b,a){return(b.getFullYear()<a.getFullYear()||b.getFullYear()==a.getFullYear()&&(b.getMonth()<a.getMonth()||b.getMonth()==a.getMonth()&&(b.getDate()<a.getDate())))};jive.model.dateGT=function(b,a){return jive.model.dateLT(a,b)};jive.model.dateGTEQ=function(b,a){return jive.model.dateLTEQ(a,b)};jive.model.monthYearEQ=function(b,a){return b.getMonth()==a.getMonth()&&b.getFullYear()==a.getFullYear()};jive.model.dateEQ=function(b,a){return(b.getDate()==a.getDate()&&b.getMonth()==a.getMonth()&&b.getFullYear()==a.getFullYear())};jive.model.datetimeEQ=function(b,a){return(b.getFullYear()==a.getFullYear()&&b.getMonth()==a.getMonth()&&b.getDate()==a.getDate()&&b.getHours()==a.getHours()&&b.getMinutes()==a.getMinutes())};jive.model.datetimeLTEQ=function(b,a){return(b.getFullYear()<a.getFullYear()||(b.getFullYear()==a.getFullYear()&&(b.getMonth()<a.getMonth()||b.getMonth()==a.getMonth()&&(b.getDate()<a.getDate()||b.getDate()==a.getDate()&&(b.getHours()<a.getHours()||b.getHours()==a.getHours()&&b.getMinutes()<=a.getMinutes())))))};jive.model.dateMinusMonth=function(b){var a=b.getMonth();if(b.getMonth()==0){b.setFullYear(b.getFullYear()-1);b.setMonth(11)}else{b.setMonth(b.getMonth()-1)}while(b.getMonth()==a){b.setDate(b.getDate()-1)}};jive.model.dateMinusWeek=function(a){a.setDate(a.getDate()-7)};jive.model.dateMinusDay=function(a){if(a.getDate()==0&&a.getDate()==1){a.setFullYear(a.getFullYear()-1);a.setMonth(11);a.setDate(31)}else{a.setDate(a.getDate()-1)}};jive.model.DateHelper=function(d){var a=d.getSettingsManager();var c=d.getLanguageManager();var b=this;this.readableDifference=function(g,f){var j=g.getTime()-f.getTime();j=j/1000;var i=false;if(j<=0){i=true;j=-1*j}var k="";if(j<10){return"just now"}else{if(j<20){k="a few seconds"}else{if(j<60){k="less than a minute"}else{if(j<90){k="about a minute"}else{var h=Math.ceil(j/60);if(h<=50){var n=(h==1)?"":"s";k=h+" minute"+n}else{var l=Math.ceil(h/60);if(l<20){var n=(l==1)?"":"s";k=l+" hour"+n}else{var m=Math.round(l/24);if(m<7){var n=(m==1)?"":"s";k=m+" day"+n}else{var e=Math.ceil(m/7);var n=(e==1)?"":"s";k=e+" week"+n}}}}}}}if(i){return k+" ago"}else{return"in "+k}};this.readableDateDifference=function(l,i){var g=new Date();g.setTime(l.getTime());g.setHours(0);g.setMinutes(0);g.setSeconds(0);g.setMilliseconds(0);var f=new Date();f.setTime(i.getTime());f.setHours(0);f.setMinutes(0);f.setSeconds(0);f.setMilliseconds(0);var k=g.getTime()-f.getTime();k=k/1000;var j=false;if(jive.model.dateLT(g,f)){j=true}k=Math.abs(k);var m="";var h=Math.ceil(k/60);var n=Math.ceil(h/60);var o=Math.floor(n/24);if(o==0){m="today"}else{if(o==1&&j){m="yesterday"}else{if(o==1&&!j){m="tomorrow"}else{if(o<7){var p=(o==1)?"":"s";m=o+" day"+p;if(j){m=m+" ago"}else{m="in "+m}}else{var e=Math.ceil(o/7);var p=(e==1)?"":"s";m=e+" week"+p;if(j){m=m+" ago"}else{m="in "+m}}}}}return m};this.formatToDateTime=function(k){var h=k.getFullYear();var i=k.getMonth()+1;if(i<10){i="0"+i}var f=k.getDate();if(f<10){f="0"+f}var e=k.getHours();if(e<10){e="0"+e}var j=k.getMinutes();if(j<10){j="0"+j}var g=k.getSeconds();if(g<10){g="0"+g}return h+"-"+i+"-"+f+" "+e+":"+j+":"+g};this.formatTo12HourTime=function(i){var g=a.getTimeFormat();if(g=="3:00p"){var e=i.getHours();var h=i.getMinutes();if(h<10){h="0"+h}var f="a";if(e>=12){f="p";e-=12}if(e==0){e=12}return e+":"+h+f}else{var e=i.getHours();var h=i.getMinutes();if(h<10){h="0"+h}return e+":"+h}};this.formatToHourTime=function(h){var g=a.getTimeFormat();if(g=="3:00p"){var e=h.getHours();var f="a";if(e>=12){f="p";e-=12}if(e==0){e=12}return e+f}else{var e=h.getHours();return e}};this.formatToStandardTime=function(k){var h=""+k.getFullYear();var i=k.getMonth()+1;if(i<10){i="0"+i}var f=k.getDate();if(f<10){f="0"+f}var e=k.getHours();if(e<10){e="0"+e}var j=k.getMinutes();if(j<10){j="0"+j}var g=k.getSeconds();if(g<10){g="0"+g}return h+"-"+i+"-"+f};this.formatToShortDate=function(h){var g=h.getMonth()+1;var e=h.getDate();var f=a.getDateFormat();if(f=="4/30"){return g+"/"+e}else{return e+"/"+g}};this.formatToLongDate=function(j){var e=c.getActiveLanguage();var i=e.longDay(j.getDay())+", ";var h=e.longMonth(j.getMonth());var f=j.getDate();var g=a.getDateFormat();if(g=="4/30"){if(j.getDate()==1||j.getDate()==21||j.getDate()==31){f+="st"}else{if(j.getDate()==2||j.getDate()==22){f+="nd"}else{if(j.getDate()==3||j.getDate()==23){f+="rd"}else{f+="th"}}}i+=h+" "+f}else{i+=f+" "+h}i+=", "+j.getFullYear();return i};this.formatToMediumDate=function(f){var e=b.formatToMediumDateNoYear(f);e+=", "+f.getFullYear();return e};this.formatToMediumDateNoYear=function(j){var e=c.getActiveLanguage();var i=e.shortDay(j.getDay())+", ";var h=e.shortMonth(j.getMonth());var f=j.getDate();var g=a.getDateFormat();if(g=="4/30"){if(j.getDate()==1||j.getDate()==21||j.getDate()==31){f+="st"}else{if(j.getDate()==2||j.getDate()==22){f+="nd"}else{if(j.getDate()==3||j.getDate()==23){f+="rd"}else{f+="th"}}}i+=h+" "+f}else{i+=f+" "+h}return i};this.formatToMedDate=function(k){var e=c.getActiveLanguage();var i=e.shortMonth(k.getMonth());var f=k.getDate();var j="";var h=a.getDateFormat();if(h=="4/30"){var g="";if(k.getDate()==1||k.getDate()==21||k.getDate()==31){g="st"}else{if(k.getDate()==2||k.getDate()==22){g="nd"}else{if(k.getDate()==3||k.getDate()==23){g="rd"}else{g="th"}}}j=i+" "+f+g}else{j=f+" "+i}return j};this.formatToMedLongDate=function(k){var e=c.getActiveLanguage();var i=e.longMonth(k.getMonth());var f=k.getDate();var j="";var h=a.getDateFormat();if(h=="4/30"){var g="";if(k.getDate()==1||k.getDate()==21||k.getDate()==31){g="st"}else{if(k.getDate()==2||k.getDate()==22){g="nd"}else{if(k.getDate()==3||k.getDate()==23){g="rd"}else{g="th"}}}j=i+" "+f+g}else{j=f+" "+i}return j};this.getMonthName=function(f){var e=c.getActiveLanguage();return e.longMonth(f.getMonth())}};

var default_lang={childNodes:[{childNodes:[{tagName:"lang_id",childNodes:[{nodeValue:"1"}]},{tagName:"name",childNodes:[{nodeValue:"English"}]},{childNodes:[{tagName:"eng_name",childNodes:[{nodeValue:"English"}]},{tagName:"name",childNodes:[{nodeValue:"English"}]},{tagName:"january",childNodes:[{nodeValue:"January"}]},{tagName:"february",childNodes:[{nodeValue:"February"}]},{tagName:"march",childNodes:[{nodeValue:"March"}]},{tagName:"april",childNodes:[{nodeValue:"April"}]},{tagName:"may",childNodes:[{nodeValue:"May"}]},{tagName:"june",childNodes:[{nodeValue:"June"}]},{tagName:"july",childNodes:[{nodeValue:"July"}]},{tagName:"august",childNodes:[{nodeValue:"August"}]},{tagName:"september",childNodes:[{nodeValue:"September"}]},{tagName:"october",childNodes:[{nodeValue:"October"}]},{tagName:"november",childNodes:[{nodeValue:"November"}]},{tagName:"december",childNodes:[{nodeValue:"December"}]},{tagName:"sunday",childNodes:[{nodeValue:"Sunday"}]},{tagName:"monday",childNodes:[{nodeValue:"Monday"}]},{tagName:"tuesday",childNodes:[{nodeValue:"Tuesday"}]},{tagName:"wednesday",childNodes:[{nodeValue:"Wednesday"}]},{tagName:"thursday",childNodes:[{nodeValue:"Thursday"}]},{tagName:"friday",childNodes:[{nodeValue:"Friday"}]},{tagName:"saturday",childNodes:[{nodeValue:"Saturday"}]},{tagName:"sh_january",childNodes:[{nodeValue:"Jan"}]},{tagName:"sh_february",childNodes:[{nodeValue:"Feb"}]},{tagName:"sh_march",childNodes:[{nodeValue:"Mar"}]},{tagName:"sh_april",childNodes:[{nodeValue:"Apr"}]},{tagName:"sh_may",childNodes:[{nodeValue:"May"}]},{tagName:"sh_june",childNodes:[{nodeValue:"Jun"}]},{tagName:"sh_july",childNodes:[{nodeValue:"Jul"}]},{tagName:"sh_august",childNodes:[{nodeValue:"Aug"}]},{tagName:"sh_september",childNodes:[{nodeValue:"Sep"}]},{tagName:"sh_october",childNodes:[{nodeValue:"Oct"}]},{tagName:"sh_november",childNodes:[{nodeValue:"Nov"}]},{tagName:"sh_december",childNodes:[{nodeValue:"Dec"}]},{tagName:"sh_sunday",childNodes:[{nodeValue:"Sun"}]},{tagName:"sh_monday",childNodes:[{nodeValue:"Mon"}]},{tagName:"sh_tuesday",childNodes:[{nodeValue:"Tue"}]},{tagName:"sh_wednesday",childNodes:[{nodeValue:"Wed"}]},{tagName:"sh_thursday",childNodes:[{nodeValue:"Thu"}]},{tagName:"sh_friday",childNodes:[{nodeValue:"Fri"}]},{tagName:"sh_saturday",childNodes:[{nodeValue:"Sat"}]},{tagName:"loading",childNodes:[{nodeValue:"Loading..."}]},{tagName:"sb_actions",childNodes:[{nodeValue:"Actions"}]},{tagName:"sb_my_calendars",childNodes:[{nodeValue:"My Calendars"}]},{tagName:"sb_other_calendars",childNodes:[{nodeValue:"Other Calendars"}]},{tagName:"sb_alerts",childNodes:[{nodeValue:"Alerts"}]},{tagName:"sb_general_tasks",childNodes:[{nodeValue:"General Tasks"}]},{tagName:"sb_no_tasks",childNodes:[{nodeValue:"no tasks"}]},{tagName:"sb_reminder",childNodes:[{nodeValue:"Reminder"}]},{tagName:"sb_reminders",childNodes:[{nodeValue:"Reminders"}]},{tagName:"sb_alert",childNodes:[{nodeValue:"Alert"}]},{tagName:"motto",childNodes:[{nodeValue:"Simply Spectacular Time Management"}]},{tagName:"nav_month",childNodes:[{nodeValue:"month"}]},{tagName:"nav_week",childNodes:[{nodeValue:"week"}]},{tagName:"nav_day",childNodes:[{nodeValue:"day"}]},{tagName:"nav_today",childNodes:[{nodeValue:"today"}]},{tagName:"nav_tomorrow",childNodes:[{nodeValue:"tomorrow"}]},{tagName:"nav_refresh",childNodes:[{nodeValue:"refresh"}]},{tagName:"nav_list",childNodes:[{nodeValue:"list"}]},{tagName:"nav_overview",childNodes:[{nodeValue:"overview"}]},{tagName:"nav_feedback",childNodes:[{nodeValue:"feedback"}]},{tagName:"nav_send",childNodes:[{nodeValue:"Send"}]},{tagName:"nav_settings",childNodes:[{nodeValue:"settings"}]},{tagName:"nav_advanced",childNodes:[{nodeValue:"advanced"}]},{tagName:"nav_logout",childNodes:[{nodeValue:"logout"}]},{tagName:"nav_prelogout",childNodes:[{nodeValue:"Any unsaved changes will be lost!"}]},{tagName:"nav_back",childNodes:[{nodeValue:"Back to:"}]},{tagName:"nav_event",childNodes:[{nodeValue:"event"}]},{tagName:"nav_task",childNodes:[{nodeValue:"task"}]},{tagName:"nav_invite",childNodes:[{nodeValue:"Invite!"}]},{tagName:"nav_save",childNodes:[{nodeValue:"Save"}]},{tagName:"nav_filter",childNodes:[{nodeValue:"filter"}]},{tagName:"feedback_title",childNodes:[{nodeValue:"What do you think about Jotlet?"}]},{tagName:"feedback_name",childNodes:[{nodeValue:"your name:"}]},{tagName:"feedback_body",childNodes:[{nodeValue:"we welcome brutal honesty:"}]},{tagName:"feedback_error",childNodes:[{nodeValue:"There was an error sending your feedback. Please try again in a few minutes."}]},{tagName:"feedback_thanks",childNodes:[{nodeValue:"Thanks for your feedback!"}]},{tagName:"cal_create",childNodes:[{nodeValue:"create a calendar"}]},{tagName:"cal_add",childNodes:[{nodeValue:"Add Calendar"}]},{tagName:"cal_edit",childNodes:[{nodeValue:"Edit Calendar"}]},{tagName:"cal_delete",childNodes:[{nodeValue:"Delete Calendar"}]},{tagName:"cal_remove",childNodes:[{nodeValue:"Remove Calendar"}]},{tagName:"cal_name",childNodes:[{nodeValue:"calendar name"}]},{tagName:"cal_color",childNodes:[{nodeValue:"select a color for this calendar:"}]},{tagName:"color_red",childNodes:[{nodeValue:"red"}]},{tagName:"color_blue",childNodes:[{nodeValue:"blue"}]},{tagName:"color_green",childNodes:[{nodeValue:"green"}]},{tagName:"color_pink",childNodes:[{nodeValue:"pink"}]},{tagName:"color_purple",childNodes:[{nodeValue:"purple"}]},{tagName:"color_orange",childNodes:[{nodeValue:"orange"}]},{tagName:"color_yellow",childNodes:[{nodeValue:"yellow"}]},{tagName:"color_grey",childNodes:[{nodeValue:"grey"}]},{tagName:"nav_close",childNodes:[{nodeValue:"Close"}]},{tagName:"nav_cancel",childNodes:[{nodeValue:"Cancel"}]},{tagName:"event_menu",childNodes:[{nodeValue:"Add Event to..."}]},{tagName:"event_edit",childNodes:[{nodeValue:"edit event"}]},{tagName:"event_edit_cap",childNodes:[{nodeValue:"Edit Event"}]},{tagName:"event_loading",childNodes:[{nodeValue:"Loading Add Event Page..."}]},{tagName:"event_add",childNodes:[{nodeValue:"add event"}]},{tagName:"event_title",childNodes:[{nodeValue:"event title"}]},{tagName:"event_dt",childNodes:[{nodeValue:"date &amp; time"}]},{tagName:"event_begins",childNodes:[{nodeValue:"begins"}]},{tagName:"event_ends",childNodes:[{nodeValue:"ends"}]},{tagName:"event_at",childNodes:[{nodeValue:"at"}]},{tagName:"event_allday",childNodes:[{nodeValue:"This event is an all day event"}]},{tagName:"event_repeats",childNodes:[{nodeValue:"This event repeats"}]},{tagName:"event_desc",childNodes:[{nodeValue:"description"}]},{tagName:"event_add_cap",childNodes:[{nodeValue:"Add Event"}]},{tagName:"event_update",childNodes:[{nodeValue:"Update Event"}]},{tagName:"event_remind",childNodes:[{nodeValue:"Add Reminder"}]},{tagName:"event_sb_delete",childNodes:[{nodeValue:"Delete this event"}]},{tagName:"event_sb_delete_series",childNodes:[{nodeValue:"Delete this series"}]},{tagName:"event_sb_edit",childNodes:[{nodeValue:"Edit this event"}]},{tagName:"event_sb_export",childNodes:[{nodeValue:"Download this event"}]},{tagName:"event_sb_perm",childNodes:[{nodeValue:"This is a shared calendar. You do not have permission to edit or delete information."}]},{tagName:"task_menu",childNodes:[{nodeValue:"Add Task to..."}]},{tagName:"task_edit",childNodes:[{nodeValue:"edit task"}]},{tagName:"task_loading",childNodes:[{nodeValue:"Loading Add Task Page..."}]},{tagName:"task_title",childNodes:[{nodeValue:"task title"}]},{tagName:"task_due_date",childNodes:[{nodeValue:"due date"}]},{tagName:"task_due",childNodes:[{nodeValue:"due"}]},{tagName:"task_no_due",childNodes:[{nodeValue:"This task does not have a due date"}]},{tagName:"task_repeats",childNodes:[{nodeValue:"This task repeats"}]},{tagName:"task_add_cap",childNodes:[{nodeValue:"Add Task"}]},{tagName:"task_update",childNodes:[{nodeValue:"Update Task"}]},{tagName:"task_add",childNodes:[{nodeValue:"add task"}]},{tagName:"task_sb_delete",childNodes:[{nodeValue:"Delete this task"}]},{tagName:"task_sb_delete_series",childNodes:[{nodeValue:"Delete this series"}]},{tagName:"task_sb_edit",childNodes:[{nodeValue:"Edit this task"}]},{tagName:"task_sb_export",childNodes:[{nodeValue:"Download this task"}]},{tagName:"task_sb_perm",childNodes:[{nodeValue:"This is a shared calendar. You do not have permission to edit   or delete information."}]},{tagName:"info_in_cal",childNodes:[{nodeValue:"in the %sub% calendar"}]},{tagName:"info_no_desc",childNodes:[{nodeValue:"no description"}]},{tagName:"info_on",childNodes:[{nodeValue:"on"}]},{tagName:"info_never",childNodes:[{nodeValue:"never"}]},{tagName:"info_no_title",childNodes:[{nodeValue:"no title"}]},{tagName:"info_more",childNodes:[{nodeValue:"More Info"}]},{tagName:"info_allday",childNodes:[{nodeValue:"All Day"}]},{tagName:"info_minutes",childNodes:[{nodeValue:"minutes"}]},{tagName:"info_hours",childNodes:[{nodeValue:"hours"}]},{tagName:"info_duration",childNodes:[{nodeValue:"duration"}]},{tagName:"day_notes",childNodes:[{nodeValue:"click to add daily notes"}]},{tagName:"day_tasks",childNodes:[{nodeValue:"Tasks for the Day"}]},{tagName:"day_add_task",childNodes:[{nodeValue:"add new task"}]},{tagName:"day_all_day",childNodes:[{nodeValue:"All Day Events"}]},{tagName:"day_click",childNodes:[{nodeValue:"click here to add some notes"}]},{tagName:"day_saving",childNodes:[{nodeValue:"saving..."}]},{tagName:"day_loading",childNodes:[{nodeValue:"loading..."}]},{tagName:"manage_cal",childNodes:[{nodeValue:"Calendar Management"}]},{tagName:"manage_prop",childNodes:[{nodeValue:"calendar properties"}]},{tagName:"manage_share",childNodes:[{nodeValue:"share calendar"}]},{tagName:"manage_export",childNodes:[{nodeValue:"export calendar"}]},{tagName:"manage_delete",childNodes:[{nodeValue:"delete calendar: "}]},{tagName:"manage_remove",childNodes:[{nodeValue:"remove calendar: "}]},{tagName:"manage_edit",childNodes:[{nodeValue:"edit a calendar"}]},{tagName:"manage_select_buddies",childNodes:[{nodeValue:"Select which buddies to share with from the list on the right"}]},{tagName:"manage_add_buddy",childNodes:[{nodeValue:"Add Buddy"}]},{tagName:"manage_add_buddy_link",childNodes:[{nodeValue:"Add a Buddy!"}]},{tagName:"manage_no_buddies",childNodes:[{nodeValue:"No Buddies Here :("}]},{tagName:"manage_buddy_email",childNodes:[{nodeValue:"enter buddy's email address"}]},{tagName:"manage_buddy_name",childNodes:[{nodeValue:"Buddy Name:"}]},{tagName:"manage_invite_buddy",childNodes:[{nodeValue:"Invite Your Buddy!"}]},{tagName:"manage_invite_buddy_to",childNodes:[{nodeValue:"Invite %sub% to Jotlet!"}]},{tagName:"manage_go_back",childNodes:[{nodeValue:"Go Back"}]},{tagName:"manage_share_bang",childNodes:[{nodeValue:"Share!"}]},{tagName:"manage_share_self",childNodes:[{nodeValue:"You can't share with yourself! :)"}]},{tagName:"manage_buddy_in_list",childNodes:[{nodeValue:"%sub% is already in your buddy list"}]},{tagName:"manage_valid_email",childNodes:[{nodeValue:"Please enter a valid email address"}]},{tagName:"manage_searching",childNodes:[{nodeValue:"Searching..."}]},{tagName:"manage_adding_buddy",childNodes:[{nodeValue:"Adding Buddy..."}]},{tagName:"manage_done_sharing",childNodes:[{nodeValue:"Done Sharing!"}]},{tagName:"manage_error",childNodes:[{nodeValue:"There was an error trying to share"}]},{tagName:"manage_sharing",childNodes:[{nodeValue:"Sharing with Buddy..."}]},{tagName:"manage_add_fail",childNodes:[{nodeValue:"could not add buddy :("}]},{tagName:"manage_inviting",childNodes:[{nodeValue:"Inviting Buddy..."}]},{tagName:"manage_done_inviting",childNodes:[{nodeValue:"Done Inviting!"}]},{tagName:"manage_fail_inviting",childNodes:[{nodeValue:"Error Inviting"}]},{tagName:"manage_done_invite_msg",childNodes:[{nodeValue:"We'll let you know when your buddy has accepted the invitation to Jotlet."}]},{tagName:"manage_fail_invite_msg",childNodes:[{nodeValue:"There was an error inviting your buddy. Please try again in a few minutes."}]},{tagName:"manage_subscribe",childNodes:[{nodeValue:"Subscribe"}]},{tagName:"manage_export_bang",childNodes:[{nodeValue:"Export"}]},{tagName:"confirm_del_cal",childNodes:[{nodeValue:'Delete calendar "%sub%"?\nThis cannot be undone!'}]},{tagName:"confirm_rem_cal",childNodes:[{nodeValue:'Remove calendar "%sub%"?\nThis cannot be undone!'}]},{tagName:"confirm_del_event",childNodes:[{nodeValue:'Delete event "%sub%"?\nThis cannot be undone!'}]},{tagName:"confirm_del_event_s",childNodes:[{nodeValue:'Delete event series containing "%sub%"?\nThis cannot be undone!'}]},{tagName:"confirm_del_task",childNodes:[{nodeValue:'Delete task "%sub%"?\nThis cannot be undone!'}]},{tagName:"confirm_del_task_s",childNodes:[{nodeValue:'Delete task series containing "%sub%"?\nThis cannot be undone!'}]},{tagName:"setting_title",childNodes:[{nodeValue:"Personal Settings"}]},{tagName:"setting_first",childNodes:[{nodeValue:"First Name"}]},{tagName:"setting_last",childNodes:[{nodeValue:"Last Name"}]},{tagName:"setting_email",childNodes:[{nodeValue:"Email"}]},{tagName:"setting_sms",childNodes:[{nodeValue:"SMS"}]},{tagName:"setting_zip",childNodes:[{nodeValue:"Postal Code"}]},{tagName:"setting_language",childNodes:[{nodeValue:"Language"}]},{tagName:"setting_save",childNodes:[{nodeValue:"Save Profile"}]},{tagName:"setting_old_pass",childNodes:[{nodeValue:"Old Password"}]},{tagName:"setting_new_pass",childNodes:[{nodeValue:"New Password"}]},{tagName:"setting_confirm",childNodes:[{nodeValue:"Confirm"}]},{tagName:"setting_save_pass",childNodes:[{nodeValue:"Update Password"}]},{tagName:"setting_zone",childNodes:[{nodeValue:"Time zone"}]},{tagName:"setting_zone_desc",childNodes:[{nodeValue:"Time zones are listed with an * if they respect Daylight Savings Time"}]},{tagName:"setting_save_zone",childNodes:[{nodeValue:"Save Local Settings"}]},{tagName:"setting_zoom",childNodes:[{nodeValue:"Zoom Level"}]},{tagName:"setting_zoom_desc",childNodes:[{nodeValue:"The zoom level affects how much time each row in day view represents. The 1 hour zoom will show a compact view, while the 15 minute zoom will show more detail."}]},{tagName:"setting_zoom_15_min",childNodes:[{nodeValue:"15 minutes"}]},{tagName:"setting_zoom_30_min",childNodes:[{nodeValue:"30 minutes"}]},{tagName:"setting_zoom_1_hour",childNodes:[{nodeValue:"1 hour"}]},{tagName:"setting_save_zoom",childNodes:[{nodeValue:"Save Zoom"}]},{tagName:"setting_shade",childNodes:[{nodeValue:"Smart-Shading day cells"}]},{tagName:"setting_shade_desc",childNodes:[{nodeValue:"Smart-Shading will automatically darken the background of busier days in month view. The busier the day, the darker the cell."}]},{tagName:"setting_save_shade",childNodes:[{nodeValue:"Save Month Settings"}]},{tagName:"setting_profile",childNodes:[{nodeValue:"user profile"}]},{tagName:"setting_change_pass",childNodes:[{nodeValue:"change password"}]},{tagName:"setting_time_zones",childNodes:[{nodeValue:"time zones"}]},{tagName:"setting_day_view",childNodes:[{nodeValue:"day view"}]},{tagName:"setting_month_view",childNodes:[{nodeValue:"month view"}]},{tagName:"setting_start_week",childNodes:[{nodeValue:"Start of Week:  "}]},{tagName:"err_cal_name",childNodes:[{nodeValue:"Please enter a name for the calendar"}]},{tagName:"email_invite",childNodes:[{nodeValue:"Hey!\n\nCheck out Jotlet Calendar at www.jotlet.net! It's a great looking and easy to use online calendar.\n\nSign up so I can share my schedule with you!"}]},{tagName:"err_task_title",childNodes:[{nodeValue:"Please enter a title for your task."}]},{tagName:"err_event_title",childNodes:[{nodeValue:"Please enter a title for your event."}]},{tagName:"remind_adding",childNodes:[{nodeValue:"Adding Reminder..."}]},{tagName:"remind_loading",childNodes:[{nodeValue:"Loading Reminder..."}]},{tagName:"remind_email",childNodes:[{nodeValue:"Email"}]},{tagName:"remind_sms",childNodes:[{nodeValue:"Text Message"}]},{tagName:"remind_both",childNodes:[{nodeValue:"Both"}]},{tagName:"remind_5_min",childNodes:[{nodeValue:"5 minutes"}]},{tagName:"remind_4_hour",childNodes:[{nodeValue:"4 hours"}]},{tagName:"remind_0_day",childNodes:[{nodeValue:"the same day"}]},{tagName:"remind_1_day",childNodes:[{nodeValue:"the day before"}]},{tagName:"remind_2_day",childNodes:[{nodeValue:"2 days before"}]},{tagName:"remind_3_day",childNodes:[{nodeValue:"3 days before"}]},{tagName:"remind_4_day",childNodes:[{nodeValue:"4 days before"}]},{tagName:"remind_5_day",childNodes:[{nodeValue:"5 days before"}]},{tagName:"remind_1_week",childNodes:[{nodeValue:"1 week before"}]},{tagName:"remind_2_week",childNodes:[{nodeValue:"2 weeks before"}]},{tagName:"remind_event",childNodes:[{nodeValue:"%email% me %time% before this event"}]},{tagName:"remind_task_due",childNodes:[{nodeValue:"%email% me at %time%%date% its due"}]},{tagName:"remind_task_no",childNodes:[{nodeValue:"%email% me at %time% on %date%"}]},{tagName:"recur_daily",childNodes:[{nodeValue:"daily"}]},{tagName:"recur_daily_num",childNodes:[{nodeValue:"every %num% days"}]},{tagName:"recur_daily_weekday",childNodes:[{nodeValue:"every weekday"}]},{tagName:"recur_weekly",childNodes:[{nodeValue:"weekly"}]},{tagName:"recur_weekly_num",childNodes:[{nodeValue:"every %num% weeks on:"}]},{tagName:"recur_monthly",childNodes:[{nodeValue:"monthly"}]},{tagName:"recur_monthly_num",childNodes:[{nodeValue:"day %num% of every %num2% months"}]},{tagName:"recur_monthly_date",childNodes:[{nodeValue:"the %first% %weekday% of every %num% months"}]},{tagName:"recur_yearly",childNodes:[{nodeValue:"yearly"}]},{tagName:"recur_yearly_exact",childNodes:[{nodeValue:"every %month% %day%"}]},{tagName:"recur_yearly_rel",childNodes:[{nodeValue:"the %first% %weekday% of %month%"}]},{tagName:"recur_custom",childNodes:[{nodeValue:"custom"}]},{tagName:"recur_custom_desc",childNodes:[{nodeValue:"Select your custom series of dates from the small calendar on the left."}]},{tagName:"recur_custom_dates",childNodes:[{nodeValue:"Selected Dates: "}]},{tagName:"recur_end",childNodes:[{nodeValue:"End Series:"}]},{tagName:"recur_end_after_e",childNodes:[{nodeValue:"End after %num% events"}]},{tagName:"recur_end_after_t",childNodes:[{nodeValue:"End after %num% tasks"}]},{tagName:"recur_end_by",childNodes:[{nodeValue:"by %date%"}]},{tagName:"recur_event",childNodes:[{nodeValue:"Repeat this event: "}]},{tagName:"recur_task",childNodes:[{nodeValue:"Repeat this task: "}]},{tagName:"recur_first",childNodes:[{nodeValue:"first"}]},{tagName:"recur_second",childNodes:[{nodeValue:"second"}]},{tagName:"recur_third",childNodes:[{nodeValue:"third"}]},{tagName:"recur_fourth",childNodes:[{nodeValue:"fourth"}]},{tagName:"recur_fifth",childNodes:[{nodeValue:"fifth"}]},{tagName:"recur_last",childNodes:[{nodeValue:"last"}]}],tagName:"lang_table"}],tagName:"language"}],tagName:"languages"};

jive.model.isLanguage=function(a){return $def(a)&&$obj(a)&&a!=null&&$def(a.translate)&&$def(a.getId)};jive.model.Language=function(e,b,d){var c=this;this.getId=function(){return e};this.getName=function(){return b};this.translate=function(f){var g=d.get(f);if(g==false){alert('Language Exception: key "'+f+'" not found')}else{if(g=="_"){return" "}else{g=g.replace(/#xD#xA/g,"\r\n");return g}}};var a=new Array();a.push("red"),a.push("blue"),a.push("green"),a.push("pink"),a.push("purple"),a.push("orange"),a.push("yellow"),a.push("grey");this.color=function(f){return c.translate("color_"+a[f])};this.longMonth=function(f){var g=new Array();g.push("january");g.push("february");g.push("march");g.push("april");g.push("may");g.push("june");g.push("july");g.push("august");g.push("september");g.push("october");g.push("november");g.push("december");return c.translate(g[f])};this.shortMonth=function(f){var g=new Array();g.push("sh_january");g.push("sh_february");g.push("sh_march");g.push("sh_april");g.push("sh_may");g.push("sh_june");g.push("sh_july");g.push("sh_august");g.push("sh_september");g.push("sh_october");g.push("sh_november");g.push("sh_december");return c.translate(g[f])};this.longDay=function(f){var g=new Array();g.push("sunday");g.push("monday");g.push("tuesday");g.push("wednesday");g.push("thursday");g.push("friday");g.push("saturday");return c.translate(g[f])};this.shortDay=function(f){var g=new Array();g.push("sh_sunday");g.push("sh_monday");g.push("sh_tuesday");g.push("sh_wednesday");g.push("sh_thursday");g.push("sh_friday");g.push("sh_saturday");return c.translate(g[f])};this.weekNumber=function(f){var g=new Array();g.push("recur_first");g.push("recur_second");g.push("recur_third");g.push("recur_fourth");g.push("recur_fifth");g.push("recur_last");return c.translate(g[f])}};jive.model.LanguageManager=function(d,k){var h=this;var f=null;var g=new Array();var a=new jive.ext.y.HashTable();var j=new Array();this.getActiveLanguage=function(){return f};this.setActiveLanguage=function(e){if(jive.model.isLanguage(e)){f=e;h.notifyLanguageChanged(f)}else{return false}};this.getLanguageList=function(){return a.toArray()};this.getSilentLanguages=function(){return g};this.loadLanguage=function(l){h.notifyLoadBegin();var e=d.newAjax(h.loadOk,h.loadFail);e.POST(HOSTURL+AJAXPATH+"?load_language","lang_id="+l)};this.saveLanguage=function(l){h.notifyLoadBegin();var m=function(o){return function(p){h.loadOk(p);var q=a.get(o);if($obj(q)&&q!=null){h.setActiveLanguage(q)}}}(l);var n=a.get(l);if($obj(n)&&n!=null){m=function(o){return function(p){h.setActiveLanguage(a.get(o))}}(l)}var e=d.newAjax(m,h.loadFail);e.POST(HOSTURL+AJAXPATH+"?save_language","lang_id="+l)};function c(p){var e;if(p.childNodes.length>0){if(p.childNodes[0].tagName=="language"){if(p.childNodes[0].childNodes.length>0){b=p.childNodes[0];var n="";var r=0;var q=new jive.ext.y.HashTable();for(var m=0;m<b.childNodes.length;m++){if(b.childNodes[m].tagName=="name"){n=b.childNodes[m].childNodes[0].nodeValue}else{if(b.childNodes[m].tagName=="lang_id"){r=b.childNodes[m].childNodes[0].nodeValue}else{if(b.childNodes[m].tagName=="lang_table"){var o=b.childNodes[m];for(var l=0;l<o.childNodes.length;l++){q.put(o.childNodes[l].tagName,o.childNodes[l].childNodes[0].nodeValue)}}}}}b=new jive.model.Language(r,n,q);a.put(b.getId(),b)}else{return false}}else{return false}}else{return false}return b}this.loadOk=function(e){if(!c(e)){h.notifyLoadFail()}else{h.notifyLoadFinish()}};this.loadFail=function(){h.notifyLoadFail()};this.addListener=function(e){j.push(e)};this.removeListener=function(l){for(var e=0;e<j.length;e++){if(j[e]==l){j.splice(e,1)}}};this.notifyLoadBegin=function(){for(var e=0;e<j.length;e++){j[e].beginLoadingLanguages()}};this.notifyLoad=function(l){for(var e=0;e<j.length;e++){j[e].loadLanguage(l)}};this.notifyLoadFinish=function(){for(var e=0;e<j.length;e++){j[e].doneLoadingLanguages()}};this.notifyLoadFail=function(){for(var e=0;e<j.length;e++){j[e].loadingLanguagesFailed()}};this.notifyLanguageChanged=function(l){for(var e=0;e<j.length;e++){j[e].languageChanged(l)}};try{if($def(k)){var b=c(k);if($obj(b)&&b!=null){h.setActiveLanguage(b)}else{alert("error parsing")}}else{alert("no default langauge")}}catch(i){alert("language: "+i)}};

jive.model.LoginManager=function(h){var f=this;var e=new Array();var b=new Array();function a(i){try{var l=new jive.xml.XMLParser();var j=l.parse(i);if($obj(j.documentElement)&&j.documentElement!=null){j=j.documentElement}else{j=new Object();j.childNodes=new Array();j.tagName="failed"}if(j.tagName=="success"){f.notifyLoginOk()}else{f.notifyLoginFail()}}catch(k){alert(k)}}function d(){f.notifyLoginFail()}this.login=function(j){var i=new jotlet.external.y.yAjax(a,d);alert("logging in via ajax")};var c=false;function g(){while(b.length>0){b[0]();b.splice(0,1)}}this.addListener=function(i){if(!c){e.push(i)}else{b.push(function(){f.addListener(i)})}};this.removeListener=function(k){if(!c){for(var j=0;j<e.length;j++){if(e[j]==k){e.splice(j,1)}}}else{b.push(function(){f.removeListener(k)})}};this.notifyLoginOk=function(){c=true;for(var j=0;j<e.length;j++){e[j].loginOk()}c=false;g()};this.notifyLoginFail=function(){c=true;for(var j=0;j<e.length;j++){e[j].loginFail()}c=false;g()}};

jive.model.RefreshManager=function(h){var i=this;var l=new Array();var a=h.getSettingsManager().getGMT();var d=h.getSettingsManager().getGMT();var b=true;this.poke=function(){try{if(b){a=h.getSettingsManager().getGMT()}}catch(n){alert("refresh error:"+n)}};this.loggedOut=function(){b=false};function f(s,q){try{i.notifyRefreshing();s.setTime(s.getTime()-5);var t=new jive.model.DateHelper(h);var r=t.formatToDateTime(s);var o=h.newAjax(e,g);var p=t.formatToDateTime(h.getEventCache().getMinTime());var n=t.formatToDateTime(h.getEventCache().getMaxTime());o.POST(HOSTURL+AJAXPATH+"?refresh","dt="+encodeURIComponent(r)+"&mindt="+p+"&maxdt="+n+(q?"&all":""))}catch(u){alert("refreshing: "+u)}}this.refresh=function(){if(b){f(d,false)}};this.reload=function(o){var n=d;i.notifyRefreshing();e(o);d=n};var k=new jive.ext.y.HashTable();this.getCustomCache=function(n){var o=k.get(n);if(!$obj(o)){o=new jive.ext.y.HashTable();k.put(n,o)}return o};function c(n){var o=new jive.ext.y.HashTable();k.put(n,o);return o}function m(p){for(var o=0;o<p.childNodes.length;o++){var r=c(p.childNodes[o].tagName);for(var n=0;n<p.childNodes[o].childNodes.length;n++){var q=parseInt(p.childNodes[o].childNodes[n].childNodes[0].nodeValue);r.put(q,true)}}}function e(u){try{b=true;for(var r=0;r<u.childNodes.length;r++){if(u.childNodes[r].tagName=="projects"){if(u.childNodes[r].childNodes.length>0){h.getProjectCache().loadExternalProjects(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="events"){if(u.childNodes[r].childNodes.length>0){h.getEventCache().reloadEvents(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="del_cals"){try{if(u.childNodes[r].childNodes.length>0){h.getCalendarCache().unloadCalendars(u.childNodes[r])}}catch(t){alert("error unloading calendars: "+t)}}else{if(u.childNodes[r].tagName=="del_events"){try{if(u.childNodes[r].childNodes.length>0){h.getEventCache().unloadEvents(u.childNodes[r])}}catch(t){alert("error unloading calendars: "+t)}}else{if(u.childNodes[r].tagName=="event_cache"){try{if(u.childNodes[r].childNodes.length>0){m(u.childNodes[r])}}catch(t){alert("error unloading calendars: "+t)}}else{if(u.childNodes[r].tagName=="reminders"){if(u.childNodes[r].childNodes.length>0){h.getReminderCache().reloadReminders(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="comments"){if(u.childNodes[r].childNodes.length>0){h.getCommentCache().reloadComments(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="forms"){if(u.childNodes[r].childNodes.length>0){h.getFormManager().reloadForms(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="sync"){if($def(h.getSyncManager)){h.getSyncManager().reloadSync(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="calendars"){if(u.childNodes[r].childNodes.length>0){h.getCalendarCache().reloadCalendars(u.childNodes[r])}}else{if(u.childNodes[r].tagName=="settings"){h.getSettingsManager().reloadSettings(u.childNodes[r])}else{if(u.childNodes[r].tagName=="deleted"){try{var w=u.childNodes[r];for(var q=0;q<w.childNodes.length;q++){if(w.childNodes[r].tagName=="event"){var x=parseInt(w.childNodes[q].nodeValue);var o=h.getEventCache().getTaskSilent(v);h.getEventCache().notifyDeletingEvent(o);h.getEventCache().notifyDoneDeletingEvent(o)}else{if(w.childNodes[r].tagName=="task"){var v=parseInt(w.childNodes[q].nodeValue);var p=h.getEventCache().getTaskSilent(v);h.getEventCache().notifyDeletingTask(p);h.getEventCache().notifyDoneDeletingTask(p)}else{if(w.childNodes[r].tagName=="calendar"){var s=parseInt(w.childNodes[q].nodeValue);var n=h.getCalendarCache().getCalendar(s);if($obj(n)&&n!=null){h.getCalendarCache().notifyDeletingCalendar(n);h.getCalendarCache().notifyDoneDeletingCalendar(n)}}}}}}catch(t){alert("exception refreshing deleted items: "+t)}}}}}}}}}}}}}}d=h.getSettingsManager().getGMT();i.notifyDoneRefreshing()}catch(t){alert("refresh.js:loadXML: "+t)}}function g(){i.notifyRefreshingFailed()}this.loadRemoteXML=function(n){i.notifyRefreshing();e(n)};this.addListener=function(n){l.push(n)};this.removeListener=function(o){for(var n=0;n<l.length;n++){if(l[n]==o){l.splice(n,1)}}};this.notifyRefreshing=function(){for(var n=0;n<l.length;n++){l[n].refreshing()}};this.notifyDoneRefreshing=function(){for(var n=0;n<l.length;n++){l[n].doneRefreshing()}};this.notifyRefreshingFailed=function(){for(var n=0;n<l.length;n++){l[n].refreshingFailed()}};var j=new Object();j.loginOk=function(){var o=new jive.model.DateHelper(h);if(a.getTime()<d.getTime()){var n=a}else{var n=d}f(n,true)};j.loginFail=function(){};h.getLoginManager().addListener(j)};

jive.model.SettingsManager=function(c){var a=null;var b=(new Date()).getTime();this.getGMT=function(){var f=new Date();if(a!=null&&f.getTime()<b+500){return a}var f=new Date();var e=new Date();e.setTime(Date.parse(f.toUTCString().substring(0,f.toUTCString().length-3)));a=e;return e};this.getNOW=function(){return new Date()};this.getStartWeekOn=function(){return 1};this.getSmartShading=function(){return true};this.getWeatherImage=function(d){return""};this.getDateFormat=function(){return"4/30"};this.getPreferredEditorMode=function(){if(preferredMode==""&&$def(WikiTextConverter)){WikiTextConverter.getPreferredEditorMode({callback:function(d){preferredMode=d},timeout:DWRTimeout,errorHandler:editorErrorHandler})}if(preferredMode==""){preferredMode="text"}return preferredMode}};

jive.model.User=function(){var e=this;var d=new Array();function b(h,i){return function(){h(i)}}this.clearRevertActions=function(){d=new Array()};this.revert=function(){while(d.length>0){d[0]();d.splice(0,1)}};var g;var f;var a;var c;this.getID=function(){return g};this.getUsername=function(){return f};this.getFullName=function(){return a};this.getURL=function(){return c};this.setID=function(h){g=h};this.setUsername=function(h){f=h};this.setFullName=function(h){d.push(b(function(i){a=i},a));a=h};this.setURL=function(h){c=h};this.cleanAfterInit=function(){e.clearRevertActions();e.setID=null;e.setUsername=null;this.setURL=null}};jive.model.UserCache=function(f){var e=this;var b=new jive.ext.y.HashTable();function g(h){var i=b.get(h.getID());if($obj(i)){i.setFullName(h.getFullName());i.clearRevertActions()}else{b.put(h.getID(),h)}e.notifyLoadUser(h)}function a(k){var h=new jive.model.User();for(var i=0;i<k.childNodes.length;i++){if(k.childNodes[i].tagName=="i"){if(k.childNodes[i].childNodes.length>0){h.setID(parseInt(k.childNodes[i].childNodes[0].nodeValue))}}else{if(k.childNodes[i].tagName=="u"){h.setUsername(k.childNodes[i].childNodes[0].nodeValue)}else{if(k.childNodes[i].tagName=="n"){h.setFullName(k.childNodes[i].childNodes[0].nodeValue)}else{if(k.childNodes[i].tagName=="url"){h.setURL(k.childNodes[i].childNodes[0].nodeValue)}}}}}h.cleanAfterInit();g(h);return h}this.loadExternalUser=function(i){e.notifyLoadBegin();try{var h=a(i);e.notifyLoadFinish();return h}catch(j){e.notifyLoadFail()}return null};this.addListener=function(h){d.push(h)};var d=new Array();var c=new Array();this.addListenerAction=function(h){c.push(h)};this.executeListenerActions=function(){while(c.length>0){c[0]();c.splice(0,1)}};this.removeListener=function(j){for(var h=0;h<d.length;h++){if(d[h]==j){d.splice(h,1)}}};this.notifyLoadUser=function(j){for(var h=0;h<d.length;h++){d[h].loadUser(j)}e.executeListenerActions()};this.notifyLoadBegin=function(){for(var h=0;h<d.length;h++){d[h].beginLoadingUsers()}e.executeListenerActions()};this.notifyLoadFinish=function(){for(var h=0;h<d.length;h++){d[h].doneLoadingUsers()}e.executeListenerActions()};this.notifyLoadFail=function(){for(var h=0;h<d.length;h++){d[h].loadingUsersFailed()}e.executeListenerActions()}};

jive.model.PlacesCache=function(c){var e=this;var f=new Array();f.push("FOLLOWED_ALL");f.push("FOLLOWED_COMMUNITY");f.push("FOLLOWED_PROJECT");f.push("FOLLOWED_GROUP");f.push("COMMUNITY");f.push("PROJECT");f.push("GROUP");var a=new jive.ext.y.HashTable();for(var d=0;d<f.length;d++){a.put(f[d],new Array())}this.getPlaces=function(i){return a.get(i)};var b=false;this.isInitialized=function(){return b};this.loadPlaces=function(o,m){var n=a.get(m).length;for(var l=0;l<o.length;l++){var k=o[l];var p=a.get(k.type);p.push(k);a.put(k.type,p)}return n};this.morePlaces=function(i){e.notifyLoadBegin();if(i.type.startsWith("FOLLOWED")){PlacesActionBean.getFollowedPlaces(i.page,{callback:function(l){var k=e.loadPlaces(l,i.type);if(i.refreshAllFollowedTypes){e.notifyLoadFinish({type:"FOLLOWED_ALL",startIndex:0});e.notifyLoadFinish({type:"FOLLOWED_COMMUNITY",startIndex:0});e.notifyLoadFinish({type:"FOLLOWED_PROJECT",startIndex:0});e.notifyLoadFinish({type:"FOLLOWED_GROUP",startIndex:0})}else{e.notifyLoadFinish(i,k)}},errorHandler:function(l,k){e.notifyLoadFail()}})}else{if("COMMUNITY"==i.type){PlacesActionBean.getCommunities(i.communityID,i.page,{callback:function(l){var k=e.loadPlaces(l,i.type);e.notifyLoadFinish(i,k)},errorHandler:function(l,k){e.notifyLoadFail()}})}else{if("GROUP"==i.type){PlacesActionBean.getGroups(i.page,{callback:function(l){var k=e.loadPlaces(l,i.type);e.notifyLoadFinish(i,k)},errorHandler:function(l,k){e.notifyLoadFail()}})}else{if("PROJECT"==i.type){PlacesActionBean.getProjects(i.page,{callback:function(l){var k=e.loadPlaces(l,i.type);e.notifyLoadFinish(i,k)},errorHandler:function(l,k){e.notifyLoadFail()}})}}}}};this.loadExternalPlaces=function(n){try{var m=n.toKeysArray();for(var l=0;l<m.length;l++){for(var k=0;k<f.length;k++){if(m[l]==f[k]){e.loadPlaces(n.get(m[l]),m[l]);e.notifyLoadPlaces(m[l])}}}}catch(o){e.notifyLoadFail()}b=true;return null};this.reloadPlaces=function(i){if(i.startsWith("FOLLOWED")){e.notifyResetPlaces("FOLLOWED_ALL");a.put("FOLLOWED_ALL",new Array());a.put("FOLLOWED_COMMUNITY",new Array());a.put("FOLLOWED_GROUP",new Array());a.put("FOLLOWED_PROJECT",new Array());e.morePlaces({type:"FOLLOWED_ALL",page:-1,refreshAllFollowedTypes:true})}};this.addListener=function(i){g.push(i)};var g=new Array();var h=0;var j=new Array();this.addListenerAction=function(i){j.push(i)};this.executeListenerActions=function(){while(j.length>0){j[0]();j.splice(0,1)}};this.removeListener=function(l){if(h==0){for(var k=0;k<g.length;k++){if(g[k]==l){g.splice(k,1)}}}else{e.addListenerAction(function(i){return function(){e.removeListener(i)}}(l))}};this.notifyLoadPlaces=function(l){h++;for(var k=0;k<g.length;k++){g[k].loadPlaces(l)}h--;e.executeListenerActions()};this.notifyLoadBegin=function(){h++;for(var k=0;k<g.length;k++){g[k].beginLoadingPlaces()}h--;e.executeListenerActions()};this.notifyLoadFinish=function(l,m){h++;for(var k=0;k<g.length;k++){g[k].doneLoadingPlaces(l,m)}h--;e.executeListenerActions()};this.notifyLoadFail=function(){h++;for(var k=0;k<g.length;k++){g[k].loadingPlacesFailed()}h--;e.executeListenerActions()};this.notifyResetPlaces=function(l){h++;for(var k=0;k<g.length;k++){g[k].resetPlaces(l)}h--;e.executeListenerActions()}};

jive.model.isCheckPoint=function(a){return $def(a)&&$obj(a)&&a!=null&&$def(a.isCheckPoint)};jive.model.CheckPoint=function(c){var i=this;var e=new Array();function k(l,m){return function(){l(m)}}this.clearRevertActions=function(){e=new Array()};this.revert=function(){while(e.length>0){e[0]();e.splice(0,1)}};var f=c;this.getProject=function(){return f};var b;var g=null;var d=null;var a="";var h="";var j=null;this.isCheckPoint=function(){return true};this.getID=function(){return b};this.getCreatedOn=function(){return g};this.getLastModifiedOn=function(){return d};this.getName=function(){return a};this.getDescription=function(){return h};this.getDueDate=function(){return j};this.setID=function(l){b=l};this.setCreatedOn=function(l){g=l};this.setLastModifiedOn=function(l){d=l};this.setName=function(l){e.push(k(function(m){a=m},a));a=l};this.setDescription=function(l){e.push(k(function(m){h=m},h));h=l};this.setDueDate=function(l){e.push(k(function(m){j=m},j));j=l};this.cleanAfterInit=function(){i.clearRevertActions();i.setID=null;i.setCreatedOn=null;i.setLastModifiedOn=null}};jive.model.Project=function(){var j=this;var f=new Array();function l(m,n){return function(){m(n)}}this.clearRevertActions=function(){f=new Array()};this.revert=function(){while(f.length>0){f[0]();f.splice(0,1)}};var c;var a="";var i="";var e;var k;var b;var g;var d=false;var h=new Array();this.getID=function(){return c};this.getCreator=function(){return e};this.getLastModifiedOn=function(){return b};this.getName=function(){return a};this.getDescription=function(){return i};this.getDueDate=function(){return k};this.getTasks=function(){return g};this.isEditable=function(){return d};this.getCheckPoints=function(){return h};this.setID=function(m){c=m};this.setCreator=function(m){e=m};this.setEditable=function(m){d=m};this.setLastModifiedOn=function(m){b=m};this.setName=function(m){f.push(l(function(n){a=n},a));a=m};this.setDescription=function(m){f.push(l(function(n){i=n},i));i=m};this.setDueDate=function(m){f.push(l(function(n){k=n},k));k=m};this.setTasks=function(m){g=m};this.setCheckPoints=function(m){h=m};this.cleanAfterInit=function(){j.clearRevertActions();j.setID=null;j.setCreator=null;j.setEditable=null;j.setLastModifiedOn=null;j.setCheckPoints=null}};jive.model.ProjectCache=function(g){var f=this;var c=new jive.ext.y.HashTable();this.getProject=function(i){return c.get(i)};function b(i){var j=c.get(i.getID());if($obj(j)){j.setCreator(i.getCreator());j.setDescription(i.getDescription());j.setDueDate(i.getDueDate());j.clearRevertActions()}else{c.put(i.getID(),i)}f.notifyLoadProject(i)}function h(t){var v=new Array();for(var r=0;r<t.childNodes.length;r++){var p=new jive.model.Project();var y=t.childNodes[r];var s=new Array();for(var q=0;q<y.childNodes.length;q++){if(y.childNodes[q].tagName=="id"){if(y.childNodes[q].childNodes.length>0){p.setID(y.childNodes[q].childNodes[0].nodeValue)}}else{if(y.childNodes[q].tagName=="name"){if(y.childNodes[q].childNodes.length>0){p.setName(y.childNodes[q].childNodes[0].nodeValue)}}else{if(y.childNodes[q].tagName=="desc"){if(y.childNodes[q].childNodes.length>0){p.setDescription(y.childNodes[q].childNodes[0].nodeValue)}}else{if(y.childNodes[q].tagName=="creator"){var w=y.childNodes[q];var A=g.getUserCache().loadExternalUser(w.childNodes[0]);p.setCreator(A)}else{if(y.childNodes[q].tagName=="d_on"){var m=y.childNodes[q].childNodes[0].nodeValue;if(m!=null){p.setDueDate(new Date(m.replace(/-/g,"/")))}else{p.setDueDate(null)}}else{if(y.childNodes[q].tagName=="m_on"){var m=y.childNodes[q].childNodes[0].nodeValue;if(m!=null){p.setLastModifiedOn(new Date(m.replace(/-/g,"/")))}else{p.setLastModifiedOn(null)}}else{if(y.childNodes[q].tagName=="editable"){p.setEditable(true)}else{if(y.childNodes[q].tagName=="tasks"){var w=y.childNodes[q];var A=g.getTaskCache().loadExternalTasks(w);p.setTasks(A)}else{if(y.childNodes[q].tagName=="cps"){var w=y.childNodes[q];for(var o=0;o<w.childNodes.length;o++){var z=w.childNodes[o];var x=new jive.model.CheckPoint(p);for(var n=0;n<z.childNodes.length;n++){if(z.childNodes[n].tagName=="id"){if(z.childNodes[n].childNodes.length>0){x.setID(z.childNodes[n].childNodes[0].nodeValue)}}else{if(z.childNodes[n].tagName=="c_on"){var m=z.childNodes[n].childNodes[0].nodeValue;if(m!=null){x.setCreatedOn(new Date(m.replace(/-/g,"/")))}else{x.setCreatedOn(null)}}else{if(z.childNodes[n].tagName=="m_on"){var m=z.childNodes[n].childNodes[0].nodeValue;if(m!=null){x.setLastModifiedOn(new Date(m.replace(/-/g,"/")))}else{x.setLastModifiedOn(null)}}else{if(z.childNodes[n].tagName=="nm"){if(z.childNodes[n].childNodes.length>0){x.setName(z.childNodes[n].childNodes[0].nodeValue)}}else{if(z.childNodes[n].tagName=="desc"){if(z.childNodes[n].childNodes.length>0){x.setName(z.childNodes[n].childNodes[0].nodeValue)}}else{if(z.childNodes[n].tagName=="due"){if(z.childNodes[n].childNodes.length>0){var m=z.childNodes[n].childNodes[0].nodeValue;if(m!=null){x.setDueDate(new Date(m.replace(/-/g,"/")))}else{x.setDueDate(null)}}}}}}}}}s.push(x);p.setCheckPoints(s)}}}}}}}}}}}p.cleanAfterInit();b(p);v.push(p)}return v}this.loadExternalProjects=function(j){f.notifyLoadBegin();try{var i=h(j);f.notifyLoadFinish();return i}catch(k){f.notifyLoadFail()}return null};this.canEditProjectHuh=function(i){if(i==0){return true}};this.addListener=function(i){e.push(i)};var e=new Array();var a=0;var d=new Array();this.addListenerAction=function(i){d.push(i)};this.executeListenerActions=function(){while(d.length>0){d[0]();d.splice(0,1)}};this.removeListener=function(k){if(a==0){for(var j=0;j<e.length;j++){if(e[j]==k){e.splice(j,1)}}}else{f.addListenerAction(function(i){return function(){f.removeListener(i)}}(k))}};this.notifyLoadProject=function(k){a++;for(var j=0;j<e.length;j++){e[j].loadProject(k)}a--;f.executeListenerActions()};this.notifyLoadBegin=function(){a++;for(var j=0;j<e.length;j++){e[j].beginLoadingProjects()}a--;f.executeListenerActions()};this.notifyLoadFinish=function(){a++;for(var j=0;j<e.length;j++){e[j].doneLoadingProjects()}a--;f.executeListenerActions()};this.notifyLoadFail=function(){a++;for(var j=0;j<e.length;j++){e[j].loadingProjectsFailed()}a--;f.executeListenerActions()}};

jive.model.ProjectCacheListener=function(){this.loadProject=function(a){};this.beginLoadingProjects=function(){};this.doneLoadingProjects=function(){};this.loadingProjectsFailed=function(){}};

jive.model.isDocument=function(a){return $obj(a)&&a!=null&&$def(a.getBody)&&$def(a.getSubject)};jive.model.Document=function(){var e=this;var d=new Array();function a(g,h){return function(){g(h)}}this.clearRevertActions=function(){d=new Array()};this.revert=function(){while(d.length>0){d[0]();d.splice(0,1)}};this.confirm=function(){e.notifyTaskChanged()};var f;var b;this.getID=function(){return f};this.getHTML=function(){return b};this.setID=function(g){f=g};this.setHTML=function(g){d.push(a(function(h){b=h},b));b=g};this.cleanAfterInit=function(){e.clearRevertActions();e.setID=null};this.convertToWiki=function(){objectLookupSessionKey};var c=new Array();this.addListener=function(g){c.push(g)};this.removeListener=function(h){for(var g=0;g<c.length;g++){if(c[g]==h){c.splice(g,1)}}};this.notifyDocumentChanged=function(){for(var g=0;g<c.length;g++){c[g].documentChanged(e)}}};jive.model.DocumentCache=function(d){var f=this;var a=new jive.ext.y.HashTable();function j(){this.documentChanged=function(k){f.notifyDocumentChanged(k)}}function e(l){var k=a.get(l.getID());if($obj(k)){k.clearRevertActions()}else{l.addListener(new j());a.put(l.getID(),l)}f.notifyLoadDocument(l)}this.saveDocument=function(m){f.notifySavingDocument(m);try{var l=d.getSettingsManager();var n=new jive.model.DateHelper(d);var k=d.newAjax(function(q){try{if(q.tagName=="success"){f.notifyDoneSavingDocument(m)}else{f.notifySavingDocumentFailed(m)}}catch(r){alert(r)}},function(){try{f.notifySavingDocumentFailed(m)}catch(q){alert("saving failed: "+q)}})}catch(o){f.notifySavingDocumentFailed(m)}};function c(k){f.notifyNewDocumentFromWiki(new jive.model.Document("",k))}this.newDocumentFromWiki=function(k){if(!$def(window.objectLookupSessionKey)){throw"window.objectLookupSessionKey must be defined to use newDocumentFromWiki()"}if(!$def(WikiTextConverter)){throw"WikiTextConverter must be defined to use newDocumentFromWiki()"}WikiTextConverter.convertFromWiki(k,window.objectLookupSessionKey,{callback:c,timeout:DWRTimeout,errorHandler:f.notifyNewDocumentFromWikiFailed})};function b(o){var m=new Array();for(var n=0;n<o.childNodes.length;n++){var k=new jive.model.Document();var q=o.childNodes[n];for(var l=0;l<q.childNodes.length;l++){if(q.childNodes[l].tagName=="id"){if(q.childNodes[l].childNodes.length>0){k.setID(q.childNodes[l].childNodes[0].nodeValue)}}}m.push(k);k.cleanAfterInit();e(k)}return m}this.loadExternalDocuments=function(l){f.notifyLoadBegin();try{var k=loadDocumentsXML(l);f.notifyLoadFinish();return k}catch(m){f.notifyLoadFail()}return null};this.addListener=function(k){h.push(k)};var h=new Array();var i=new Array();this.addListenerAction=function(k){i.push(k)};this.executeListenerActions=function(){while(i.length>0){i[0]();i.splice(0,1)}};this.removeListener=function(l){for(var k=0;k<h.length;k++){if(h[k]==l){h.splice(k,1)}}};this.notifyDocumentChanged=function(l){for(var k=0;k<h.length;k++){h[k].documentChanged(l)}f.executeListenerActions()};this.notifyLoadDocument=function(l){for(var k=0;k<h.length;k++){h[k].loadDocument(l)}f.executeListenerActions()};this.notifyLoadBegin=function(){for(var k=0;k<h.length;k++){h[k].beginLoadingDocuments()}f.executeListenerActions()};this.notifyLoadFinish=function(){for(var k=0;k<h.length;k++){h[k].doneLoadingDocuments()}f.executeListenerActions()};this.notifyLoadFail=function(){for(var k=0;k<h.length;k++){h[k].loadingDocumentsFailed()}f.executeListenerActions()};this.notifySavingDocument=function(l){for(var k=0;k<h.length;k++){h[k].savingDocument(l)}f.executeListenerActions()};this.notifyDoneSavingDocument=function(l){for(var k=0;k<h.length;k++){h[k].doneSavingDocument(l)}f.executeListenerActions()};this.notifySavingDocumentFailed=function(l){for(var k=0;k<h.length;k++){h[k].savingDocumentFailed(l)}f.executeListenerActions()};this.notifyNewDocumentFromWiki=function(l){for(var k=0;k<h.length;k++){h[k].newDocumentFromWiki(l)}f.executeListenerActions()};this.notifyNewDocumentFromWikiFailed=function(){for(var k=0;k<h.length;k++){h[k].newDocumentFromWikiFailed(p)}f.executeListenerActions()};var g=new jive.model.DocumentCacheListener();g.documentChanged=function(k){f.saveDocument(k)};f.addListener(g)};

jive.model.DocumentCacheListener=function(){this.loadingDocumentsFailed=function(){};this.doneLoadingDocuments=function(){};this.beginLoadingDocuments=function(){};this.loadDocument=function(){};this.documentChanged=function(){};this.savingDocument=function(){};this.doneSavingDocument=function(){};this.savingDocumentFailed=function(){};this.newDocumentFromWikiFailed=function(){}};

jive.model.TaskCacheListener=function(){this.loadingTasksFailed=function(){};this.doneLoadingTasks=function(){};this.beginLoadingTasks=function(){};this.loadTask=function(){};this.taskChanged=function(){}};

jive.model.isEvent=function(a){return $obj(a)&&a!=null&&$def(a.getStart)&&$def(a.getEnd)};jive.model.isTask=function(a){return $obj(a)&&a!=null&&$def(a.getDueDate)&&$def(a.getProjectID)};jive.model.Task=function(){var h=this;var e=0;var d=new Array();function p(q,r){return function(){q(r)}}this.clearRevertActions=function(){d=new Array()};this.revert=function(){while(d.length>0){d[0]();d.splice(0,1)}};this.confirm=function(){h.notifyTaskChanged()};var c;var o=e;var i=null;var k;var m;var g;var f;var n;var l;var b;var a;this.getID=function(){return c};this.getProjectID=function(){return o};this.getDueDate=function(){return i};this.hasDueDate=function(){return i!=null};this.getSubject=function(){return k};this.getDescription=function(){return m};this.getCreatedBy=function(){return g};this.getCreatedOn=function(){return f};this.getAssignedBy=function(){return l};this.getAssignedTo=function(){return n};this.getURL=function(){return a};this.isComplete=function(){return b};this.setID=function(q){c=q};this.setProjectID=function(q){o=q};this.setCreatedBy=function(q){g=q};this.setCreatedOn=function(q){f=q};this.setComplete=function(q){b=q};this.setURL=function(q){a=q};this.setDueDate=function(q){d.push(p(function(r){i=r},i));i=q};this.setSubject=function(q){d.push(p(function(r){k=r},k));k=q};this.setDescription=function(q){d.push(p(function(r){m=r},m));m=q};this.setAssignedBy=function(q){d.push(p(function(r){l=r},l));l=q};this.setAssignedTo=function(q){d.push(p(function(r){n=r},n));n=q};this.cleanAfterInit=function(){h.clearRevertActions();h.setID=null;h.setCreatedBy=null;h.setCreatedOn=null;h.setURL=null};var j=new Array();this.addListener=function(q){j.push(q)};this.removeListener=function(r){for(var q=0;q<j.length;q++){if(j[q]==r){j.splice(q,1)}}};this.notifyTaskChanged=function(){for(var q=0;q<j.length;q++){j[q].taskChanged(h)}}};jive.model.TaskCache=function(d){var f=this;var a=new jive.ext.y.HashTable();function c(){this.taskChanged=function(j){f.notifyTaskChanged(j)}}function e(k){var j=a.get(k.getID());if($obj(j)){j.setDueDate(k.getDueDate());j.setSubject(k.getSubject());j.setDescription(k.getDescription());j.setAssignedTo(k.getAssignedTo());j.setAssignedBy(k.getAssignedBy());j.clearRevertActions()}else{k.addListener(new c());a.put(k.getID(),k)}f.notifyLoadTask(k)}this.saveTask=function(j){f.notifySavingTask(j);try{var l=d.getSettingsManager();var q=new jive.model.DateHelper(d);var s=d.newAjax(function(u){try{if(u.tagName=="success"){f.notifyDoneSavingTask(j)}else{f.notifySavingTaskFailed(j)}}catch(v){alert(v)}},function(){try{f.notifySavingTaskFailed(j)}catch(u){alert("saving failed: "+u)}});var p=j.getDueDate();p=(p!=null)?q.formatToDateTime(p):"";var m=!j.hasDueDate();var n=j.getStatus();var r=j.getSubject();var t=j.getDescription();var k=j.getProjectID();s.POST(HOSTURL+AJAXPATH+"?save_task","task_id="+encodeURIComponent(j.getID())+"&due="+encodeURIComponent(p)+"&status="+encodeURIComponent(n)+"&title="+encodeURIComponent(r)+"&description="+encodeURIComponent(t)+"&never_due="+encodeURIComponent(m?"1":"0")+"&project_id="+k)}catch(o){f.notifySavingTaskFailed(j)}};function b(p){var m=new Array();for(var n=0;n<p.childNodes.length;n++){var k=new jive.model.Task();var q=p.childNodes[n];for(var l=0;l<q.childNodes.length;l++){if(q.childNodes[l].tagName=="id"){if(q.childNodes[l].childNodes.length>0){k.setID(q.childNodes[l].childNodes[0].nodeValue)}}else{if(q.childNodes[l].tagName=="pid"){if(q.childNodes[l].childNodes.length>0){k.setProjectID(q.childNodes[l].childNodes[0].nodeValue)}}else{if(q.childNodes[l].tagName=="due"){var o=q.childNodes[l].childNodes[0].nodeValue;if(o!=null){k.setDueDate(new Date(o.replace(/-/g,"/")))}else{k.setDueDate(null)}}else{if(q.childNodes[l].tagName=="subj"){k.setSubject(q.childNodes[l].childNodes[0].nodeValue)}else{if(q.childNodes[l].tagName=="desc"){k.setDescription(q.childNodes[l].childNodes[0].nodeValue)}else{if(q.childNodes[l].tagName=="c_on"){var o=q.childNodes[l].childNodes[0].nodeValue;if(o!=null){k.setCreatedOn(new Date(o.replace(/-/g,"/")))}else{k.setCreatedOn(null)}}else{if(q.childNodes[l].tagName=="c_by"){k.setCreatedBy(d.getUserCache().loadExternalUser(q.childNodes[l].childNodes[0]))}else{if(q.childNodes[l].tagName=="a_by"){k.setAssignedBy(d.getUserCache().loadExternalUser(q.childNodes[l].childNodes[0]))}else{if(q.childNodes[l].tagName=="a_to"){k.setAssignedTo(d.getUserCache().loadExternalUser(q.childNodes[l].childNodes[0]))}else{if(q.childNodes[l].tagName=="url"){k.setURL(q.childNodes[l].childNodes[0].nodeValue)}else{if(q.childNodes[l].tagName=="status"){k.setComplete(q.childNodes[l].nodeValue=="c")}}}}}}}}}}}}m.push(k);k.cleanAfterInit();e(k)}return m}this.loadExternalTasks=function(k){f.notifyLoadBegin();try{var j=b(k);f.notifyLoadFinish();return j}catch(l){f.notifyLoadFail()}return null};this.addListener=function(j){h.push(j)};var h=new Array();var i=new Array();this.addListenerAction=function(j){i.push(j)};this.executeListenerActions=function(){while(i.length>0){i[0]();i.splice(0,1)}};this.removeListener=function(k){for(var j=0;j<h.length;j++){if(h[j]==k){h.splice(j,1)}}};this.notifyTaskChanged=function(k){for(var j=0;j<h.length;j++){h[j].taskChanged(k)}f.executeListenerActions()};this.notifyLoadTask=function(k){for(var j=0;j<h.length;j++){h[j].loadTask(k)}f.executeListenerActions()};this.notifyLoadBegin=function(){for(var j=0;j<h.length;j++){h[j].beginLoadingTasks()}f.executeListenerActions()};this.notifyLoadFinish=function(){for(var j=0;j<h.length;j++){h[j].doneLoadingTasks()}f.executeListenerActions()};this.notifyLoadFail=function(){for(var j=0;j<h.length;j++){h[j].loadingTasksFailed()}f.executeListenerActions()};var g=new jive.model.TaskCacheListener();g.taskChanged=function(j){f.saveTask(j)};f.addListener(g)};

jive.rte.settings=function(e){function c(g){for(var f=0;f<jive.rte.defaultStyles.length;f++){g+=","+jive.rte.defaultStyles[f]}return g}if(e=="mini-w-quote"){var b=false;var d=false;var a=jive.rte.settings(0);a.content_css=c(CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/content.css");a.theme_advanced_statusbar_location="none";a.theme_advanced_buttons1="bold,italic,underline,strikethrough,spacerbutton,bullist,numlist,spacerbutton,jiveimage,jivevideo,spacerbutton,jivelink,jiveemoticons,jivequote,spellchecker,html";delete a.theme_advanced_buttons2;delete a.theme_advanced_buttons3;a.default_height=29;return a}else{if(e=="mini"){var b=false;var d=d;var a=jive.rte.settings(0);a.content_css=c(CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/content.css");a.theme_advanced_statusbar_location="none";a.theme_advanced_buttons1="bold,italic,underline,strikethrough,spacerbutton,bullist,numlist,spacerbutton,jiveimage,jivevideo,spacerbutton,jivelink,jiveemoticons,spellchecker,html";delete a.theme_advanced_buttons2;delete a.theme_advanced_buttons3;a.default_height=29;return a}else{if(e=="widget"){var b=false;var a=jive.rte.settings(0);a.content_css=c(CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/content.css");a.theme_advanced_statusbar_location="none";return a}else{if(e=="wiki"){var a=jive.rte.settings(0);a.content_css=c(CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/wiki.css");return a}else{if(e=="blog"){var a=jive.rte.settings(0);a.content_css=c(CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/blog.css");return a}else{if(e=="thread"){var a=jive.rte.settings(0);a.content_css=c(CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/thread.css");if(_jive_gui_quote_text&&_jive_gui_quote_text.length>0){a.theme_advanced_buttons1="fontselect, fontsizeselect, removeformat, magicspacer, spacerbutton,bullist, numlist, outdent, indent, spacerbutton,jivevideo,spacerbutton,jivelink,tabletoolbar,extra,jivequote,spellchecker,html"}return a}else{if(e==0){return{ie7_css:"a{\nborder: 1px solid transparent;\n}\nspan.jive_macro.active_link, a.jive_macro.active_link, a.active_link{\nborder: 1px solid blue;\n}\nspan.jive_macro, a.jive_macro{\nborder: 1px solid transparent;\n}",keep_values:true,convert_urls:false,default_height:58,theme_advanced_buttons1:"fontselect, fontsizeselect, removeformat, magicspacer, spacerbutton,bullist, numlist, outdent, indent, spacerbutton,jivevideo,spacerbutton,jivelink,tabletoolbar,extra,spellchecker,html",theme_advanced_buttons2:"bold,italic,underline,strikethrough,forecolor,jivestyle, magicspacer, spacerbutton, justifyleft,justifycenter,justifyright,justifyfull, spacerbutton,jiveimage,spacerbutton,jiveemoticons, jivemacros ",theme_advanced_buttons3:"tablecontrols",fix_list_elements:false,save_callback:"RawHTMLSaveFunction",convert_fonts_to_spans:true,font_size_style_values:"8pt,10pt,12pt,14pt,18pt,24pt,36pt",strict_loading_mode:true,body_class:"jive-widget-formattedtext",theme:"advanced",plugins:"jivebuttons,jiveemoticons,jivestyle,jivelink,jivequote,jivevideo,jiveimage,alignment,safari,spellchecker,html,style,jivelists,table,save,advimage,advlink,iespell,inlinepopups,contextmenu,tabletoolbar,jivemacros,jiveutil",doctype:'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">',theme_advanced_toolbar_location:"top",theme_advanced_toolbar_align:"left",theme_advanced_statusbar_location:"bottom",content_css:CS_BASE_URL+"/resources/scripts/tiny_mce3/themes/advanced/skins/default/wiki.css",theme_advanced_resize_horizontal:false,theme_advanced_resizing:true,apply_source_formatting:true,spellchecker_languages:SPELL_LANGS,spellchecker_rpc_url:CS_BASE_URL+"/spellcheck.jspa",jive_image_picker_url:b,jive_video_picker_url:d,relative_urls:false,valid_elements:"a[accesskey|charset|class|coords|dir<ltr?rtl|href|hreflang|id|lang|name|onblur|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|rel|rev|shape<circle?default?poly?rect|style|tabindex|title|target|type|jivemacro|_.*],abbr[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],acronym[class|dir<ltr?rtl|id|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],address[class|align|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],applet[align<bottom?left?middle?right?top|alt|archive|class|code|codebase|height|hspace|id|name|object|style|title|vspace|width],area[accesskey|alt|class|coords|dir<ltr?rtl|href|id|lang|nohref<nohref|onblur|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|shape<circle?default?poly?rect|style|tabindex|title|target],base[href|target],basefont[color|face|id|size],bdo[class|dir<ltr?rtl|id|lang|style|title],big[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],blockquote[cite|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],body[alink|background|bgcolor|class|dir<ltr?rtl|id|lang|link|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onload|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|onunload|style|title|text|vlink],br[class|clear<all?left?none?right|id|style|title],button[accesskey|class|dir<ltr?rtl|disabled<disabled|id|lang|name|onblur|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|tabindex|title|type|value],caption[align<bottom?left?right?top|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],center[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],cite[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],code[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],col[align<center?char?justify?left?right|char|charoff|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|span|style|title|valign<baseline?bottom?middle?top|width],colgroup[align<center?char?justify?left?right|char|charoff|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|span|style|title|valign<baseline?bottom?middle?top|width],dd[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],del[cite|class|datetime|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],dfn[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],dir[class|compact<compact|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],div[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],dl[class|compact<compact|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],dt[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],em/i[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],embed[width|height|src|pluginspage|name|swliveconnect|play<true?false|loop<true?false|menu<true?false|quality<low?autolow?autohigh?high?medium?high?best|scale<default?exact?noorder|salign<l?t?r?b?tl?tr?bl?br|wmode<window?opaque?transparent|bgcolor|base|flashvars|type|allowfullscreen],fieldset[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],font[class|color|dir<ltr?rtl|face|id|lang|size|style|title],form[accept|accept-charset|action|class|dir<ltr?rtl|enctype|id|lang|method<get?post|name|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|onreset|onsubmit|style|title|target],frame[class|frameborder|id|longdesc|marginheight|marginwidth|name|noresize<noresize|scrolling<auto?no?yes|src|style|title],frameset[class|cols|id|onload|onunload|rows|style|title],h1[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],h2[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],h3[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],h4[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],h5[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],h6[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],head[dir<ltr?rtl|lang|profile],hr[align<center?left?right|class|dir<ltr?rtl|id|lang|noshade<noshade|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|size|style|title|width],html[dir<ltr?rtl|lang|version],iframe[align<bottom?left?middle?right?top|class|frameborder|height|id|longdesc|marginheight|marginwidth|name|scrolling<auto?no?yes|src|style|title|width],img[align<bottom?left?middle?right?top|alt|border|class|dir<ltr?rtl|height|hspace|id|ismap<ismap|lang|longdesc|name|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|src|style|title|usemap|vspace|width|jivemacro|_.*|param_.*],input[accept|accesskey|align<bottom?left?middle?right?top|alt|checked<checked|class|dir<ltr?rtl|disabled<disabled|id|ismap<ismap|lang|maxlength|name|onblur|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|onselect|readonly<readonly|size|src|style|tabindex|title|type<button?checkbox?file?hidden?image?password?radio?reset?submit?text|usemap|value],ins[cite|class|datetime|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],isindex[class|dir<ltr?rtl|id|lang|prompt|style|title],kbd[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],label[accesskey|class|dir<ltr?rtl|for|id|lang|onblur|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],legend[align<bottom?left?right?top|accesskey|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],li[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|type|value],link[charset|class|dir<ltr?rtl|href|hreflang|id|lang|media|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|rel|rev|style|title|target|type],map[class|dir<ltr?rtl|id|lang|name|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],menu[class|compact<compact|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],meta[content|dir<ltr?rtl|http-equiv|lang|name|scheme],noframes[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],noscript[class|dir<ltr?rtl|id|lang|style|title],object[align<bottom?left?middle?right?top|archive|border|class|classid|codebase|codetype|data|declare|dir<ltr?rtl|height|hspace|id|lang|name|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|standby|style|tabindex|title|type|usemap|vspace|width],ol[class|compact<compact|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|start|style|title|type],optgroup[class|dir<ltr?rtl|disabled<disabled|id|label|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],option[class|dir<ltr?rtl|disabled<disabled|id|label|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|selected<selected|style|title|value],p[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],param[id|name|type|value|valuetype<DATA?OBJECT?REF],pre/listing/plaintext/xmp[align|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|width|jivemacro|_.*],q[cite|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],s[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],samp[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],script[charset|defer|language|src|type],select[class|dir<ltr?rtl|disabled<disabled|id|lang|multiple<multiple|name|onblur|onchange|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|size|style|tabindex|title],small[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],span[align<center?justify?left?right|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|jivemacro|_.*],strike[class|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],strong/b[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],style[dir<ltr?rtl|lang|media|title|type],sub[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],sup[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],table[align<center?left?right|bgcolor|border|cellpadding|cellspacing|class|dir<ltr?rtl|frame|height|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|rules|style|summary|title|width],tbody[align<center?char?justify?left?right|char|class|charoff|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|valign<baseline?bottom?middle?top],td[abbr|align<center?char?justify?left?right|axis|bgcolor|char|charoff|class|colspan|dir<ltr?rtl|headers|height|id|lang|nowrap<nowrap|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|rowspan|scope<col?colgroup?row?rowgroup|style|title|valign<baseline?bottom?middle?top|width],textarea[accesskey|class|cols|dir<ltr?rtl|disabled<disabled|id|lang|name|onblur|onclick|ondblclick|onfocus|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|onselect|readonly<readonly|rows|style|tabindex|title],tfoot[align<center?char?justify?left?right|char|charoff|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|valign<baseline?bottom?middle?top],th[abbr|align<center?char?justify?left?right|axis|bgcolor|char|charoff|class|colspan|dir<ltr?rtl|headers|height|id|lang|nowrap<nowrap|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|rowspan|scope<col?colgroup?row?rowgroup|style|title|valign<baseline?bottom?middle?top|width],thead[align<center?char?justify?left?right|char|charoff|class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|valign<baseline?bottom?middle?top],title[dir<ltr?rtl|lang],tr[abbr|align<center?char?justify?left?right|bgcolor|char|charoff|class|rowspan|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|valign<baseline?bottom?middle?top],tt[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],u[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title],ul[class|compact<compact|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title|type],var[class|dir<ltr?rtl|id|lang|onclick|ondblclick|onkeydown|onkeypress|onkeyup|onmousedown|onmousemove|onmouseout|onmouseover|onmouseup|style|title]"}}}}}}}}};

jive.rte.ParamSet=function(){var a=this;this.name="";this.deleteAll=false;this.params=new Array();this.addParam=function(c,b){a.params.push({name:c,value:b})}};

jive.rte.RTE=function(f,k,b){var g=this;var n=false;var l=$(k);var m=document.createElement("TEXTAREA");m.style.display="none";l.parentNode.insertBefore(m,l);if(!$def(b)){b=0}var c=jive.rte.settings(b);c.mode="exact";c.elements=k;c.images_enabled=window._images_enabled;try{if(!c.jive_image_picker_url&&_jive_image_picker_url){c.jive_image_picker_url=_jive_image_picker_url}}catch(i){}if(typeof(tinyMCE)=="undefined"){n=true;m.style.display="none";l.style.display="block";l.style.height="200px"}else{try{tinyMCE.init(c)}catch(i){n=true;m.style.display="none";l.style.display="block";l.style.height="200px"}}this.isTextOnly=function(){return n};var h=null;var p=true;var d=false;var q=true;function a(){if(!g.isTextOnly()&&h==null){h=tinyMCE.getInstanceById(k);if(!$def(h)||h==null){return null}h.getContainer().childNodes[0].style.width="";h.onKeyUp.add(function(r,s){g.notifyOnKeyUp(s.keyCode)});h.onChange.add(function(r,s){g.notifyOnChange(s.keyCode)});h.onInit.add(function(r){return function(s,t){if(s.id==k){r.notifyInitFinished()}}}(g));h.onBeginSpelling.add(function(){d=true});h.onEndSpelling.add(function(){d=false});h.theme.onResize.add(function(){if(q){q=false;g.resizeTo(g.getHeight()+g.getToolbarHeight()+1);h.theme.onResize.dispatch()}else{q=true;g.notifyResized()}});h.plugins.html.registerToggleFunction(g.toggleEditorMode);window.setTimeout(function(){g.notifyInitFinished()},5000);if(window.autoSave){var e={navigateAway:function(){if(window&&window.autoSave&&g.restoreNavigateAway){window.autoSave.confirmation=g.restoreNavigateAway;g.restoreNavigateAway=false}}};window.autoSave.addListener(e)}}return h}this.isSpellChecking=function(){return d};this.toggleSpellChecker=function(){a().execCommand("mceSpellCheck")};this.closeAllDialogs=function(){var s=a().windowManager.windows;var r=Object.keys(s);for(var e=0;e<r.length;e++){a().windowManager.close(null,s[r[e]].id)}return s};this.addMacro=function(s,e,t){var r=a();var v=r.selection.isCollapsed();var u=r.plugins.jivemacros.insertMacro(s,null,t);r.plugins.jivemacros.applyParameterSet(u,s,e);if(v){u.setAttribute("id","__sel_me__");r.selection.setNode(u);u=r.getDoc().getElementById("__sel_me__");u.removeAttribute("id")}r.nodeChanged();return u};this.destroy=function(){tinyMCE.remove(k);m.parentNode.removeChild(m);a().getContainer().parentNode.removeChild(h.getContainer())};this.getLang=function(r,e){return a().getLang(r,e)};this.isReady=function(){if(g.isTextOnly()){return true}var e=a();return e!=null};this.getDOM=function(){return a().getContainer()};this.getID=function(){return k};this.setHTML=function(e){if(g.isTextOnly()){return l.value=e}m.value=e;return a().setContent(e)};this.getHTML=function(){if(g.isTextOnly()){return l.value}if(this.isHidden()){this.setHTML(m.value)}var e=a().getContent();if((this.trim(e).length>0)&&e.indexOf("<body")!=0){e="<body>"+e+"</body>"}return this.replaceWhiteSpace(e)};this.replaceWhiteSpace=function(s){var r=[];var t=0;var e=-1;while((e=s.indexOf("  ",t))>=0){if(e<t){break}r.push(s.substring(t,e));r.push("&nbsp;");t=e+1}if(t<s.length){r.push(s.substring(t))}return r.join("")};this.trim=function(r){var t=r.replace(/^\s\s*/,"");var e=/\s/;var s=t.length;while(e.test(t.charAt(--s))){}return t.slice(0,s+1)};this.show=function(){a().show();g.notifyShowing()};this.getWindow=function(){return a().getWin()};this.getBody=function(){return a().getBody()};this.focus=function(){try{if(this.isHidden()){m.focus()}else{a().focus()}}catch(r){}};this.collapseSelection=function(){var e=a();e.selection.select(e.selection.getNode());e.selection.collapse()};this.hide=function(){a().hide()};this.isHidden=function(){return m.style.display=="block"};this.resizeTo=function(e){var u=a().getContainer();var t=u.firstChild;if(t.nodeName.toLowerCase()!="table"){t=t.childNodes[0]}var r=jive.ext.x.xHeight(t.rows[0].cells[0]);if(t.rows.length>2){r+=jive.ext.x.xHeight(t.rows[t.rows.length-1].cells[0])}var s=a().getContentAreaContainer();var v=a().getContentAreaContainer().firstChild;tinymce.DOM.setStyle(v,"height",e-r);tinymce.DOM.setStyle(t,"height",e)};this.getHeight=function(){var e=a().getContentAreaContainer().firstChild;return jive.ext.x.xHeight(e)};this.getToolbarHeight=function(){var s=a().getContainer();var r=s.firstChild;if(r.nodeName.toLowerCase()!="table"){r=r.childNodes[0]}var e=jive.ext.x.xHeight(r.rows[0].cells[0]);if(r.rows.length>2){e+=jive.ext.x.xHeight(r.rows[r.rows.length-1].cells[0])}return e};this.toggleEditorMode=function(r){if(r==k){if(window&&window.autoSave){g.restoreNavigateAway=window.autoSave.confirmation;window.autoSave.confirmation=false}var s=$(k+"_parent");if(g.isHidden()){var t=jive.ext.x.xHeight(m);m.style.display="none";g.show();g.setHTML(m.value);g.focus();g.resizeTo(t);a().plugins.jivemacros.removeDuplicateMacros(a(),a().getBody());a().plugins.jivemacros.fixBodyParagraphs()}else{var e=$(k+"_tbl");var t=jive.ext.x.xHeight(e);m.value=g.getHTML(true);g.hide();m.style.display="block";l.style.display="none";jive.ext.x.xHeight(m,t);g.focus()}g.notifyDoneTogglingMode()}};this.addListener=function(e){if($def(e.onShow)){e.onShow()}j.push(e)};var j=new Array();var o=new Array();this.addListenerAction=function(e){o.push(e)};this.executeListenerActions=function(){while(o.length>0){o[0]();o.splice(0,1)}};this.removeListener=function(r){for(var e=0;e<j.length;e++){if(j[e]==r){j.splice(e,1)}}};this.initted=false;this.notifyInitFinished=function(){if(!g.initted){g.initted=true;for(var e=0;e<j.length;e++){j[e].initFinished()}g.executeListenerActions()}};this.notifyOnKeyUp=function(r){for(var e=0;e<j.length;e++){j[e].onKeyUp(r)}g.executeListenerActions()};this.notifyOnChange=function(){if(p){p=false;return}for(var e=0;e<j.length;e++){j[e].onChange()}g.executeListenerActions()};this.notifyResized=function(){for(var e=0;e<j.length;e++){j[e].onResize()}g.executeListenerActions()};this.notifyShowing=function(){for(var e=0;e<j.length;e++){j[e].onShow()}g.executeListenerActions()};this.notifyDoneTogglingMode=function(){for(var e=0;e<j.length;e++){j[e].doneTogglingMode()}g.executeListenerActions()}};

jive.rte.Macro=function(d,a,e,i,b,j,c,h,f){var g=this;this.getName=function(){return d};this.getUrl=function(){return a};this.isButton=function(){return f};this.isEnabled=function(){return h};this.isShowSettings=function(){return i};this.isShowInMacroList=function(){return b};this.getMacroType=function(){return e};this.getParameterSets=function(){return j};this.getAllowedParameters=function(){return c};this.refresh=function(k,m){if(m.getAttribute("jivemacro")==this.getName()){if(this.getMacroType().toLowerCase()=="inline"){var p=m.getAttribute("_title");if($def(p)&&p!=null&&p.length>0){m.innerHTML=p;m.attributes.removeNamedItem("_title")}else{if(tinyMCE.activeEditor.dom.hasClass(m,"default_title")){var l=m.getAttribute("jivemacro");var q=m.getAttribute("___default_attr");var o=tinyMCE.activeEditor.plugins.jivemacros.getTitleFor(l,q);if(o&&m.innerHTML!=o[0]){m.innerHTML=o[0]}if(m.innerHTML==""){m.innerHTML="unknown"}}}}else{if(this.getMacroType().toLowerCase()=="image"){if(m.src==""){var n=window.CS_BASE_URL+"/resources/scripts/tiny_mce3/plugins/jiveemoticons/images/spacer.gif";m.setAttribute("src",n);m.setAttribute("mce_src",n)}}}}}};

jive.rte.EmoticonMacro=function(){var c=this;var d=new Array();var e=new Array();d.push({name:"__jive_emoticon_name",value:["happy","laugh","silly","wink","plain","angry","blush","confused","cool","cry","devil","grin","love","mischief","sad","shocked"]});for(var a=0;a<d[0].value.length;a++){e.push({name:d[0].value[a],deleteAll:true,params:[{name:d[0].name,value:d[0].value[a]}]})}var b=new jive.rte.Macro("emoticon","","img",false,true,e,d,true,false);this.getName=b.getName;this.getUrl=b.getUrl;this.isShowInMacroList=b.isShowInMacroList;this.isShowSettings=b.isShowSettings;this.getMacroType=b.getMacroType;this.getParameterSets=b.getParameterSets;this.getAllowedParameters=b.getAllowedParameters;this.refresh=function(f,h){b.refresh(f,h);var g=h.getAttribute("_"+d[0].name);h.setAttribute("class","jive_macro jive_emote");h.setAttribute("src",window.CS_BASE_URL+"/images/emoticons/"+g+".gif");h.setAttribute("mce_src",window.CS_BASE_URL+"/images/emoticons/"+g+".gif")}};jive.rte.macros.push(new jive.rte.EmoticonMacro());

jive.rte.RTEListener=function(){this.onKeyUp=function(a){};this.onChange=function(){};this.onResize=function(){};this.onShow=function(){};this.doneTogglingMode=function(){};this.initFinished=function(){}};

jive.gui.CPDOM=function(d,h,a,g){var f=this;var i=document.createElement("DIV");i.setAttribute("class","jive-link-checkpoint jiveTT-hover-checkpoint");i.className="jive-link-checkpoint jiveTT-hover-checkpoint";var j=document.createElement("SPAN");var c=h.getName();if(c.length==0){c="(no title)"}var b=document.createTextNode(c);var e=document.createElement("SPAN");e.setAttribute("class","month_day_cell_event_desc");e.className="month_day_cell_event_desc";var k="";if(h.getDescription().unescapeHTML().length>0){k=": "+h.getDescription().unescapeHTML()}e.appendChild(document.createTextNode(k));j.appendChild(b);j.appendChild(e);i.appendChild(j);i.getCheckPoint=function(l){return function(){return l}}(h);this.lighten=function(){i.setAttribute("class","month_day_cell_item month_lighten_dom");i.className="month_day_cell_item month_lighten_dom"};this.darken=function(){i.setAttribute("class","month_day_cell_item");i.className="month_day_cell_item"};this.refresh=function(){j.removeChild(j.childNodes[1]);j.removeChild(j.childNodes[0]);j.appendChild(document.createTextNode(h.getName()));var l="";if(h.getDescription().unescapeHTML().length>0){l=": "+h.getDescription().unescapeHTML()}e.removeChild(e.childNodes[0]);e.appendChild(document.createTextNode(l));j.appendChild(e)};this.showDescription=function(l){if(l){jive.ext.x.xDisplayInline(e)}else{jive.ext.x.xDisplayNone(e)}};jive.ext.x.xAddEventListener(i,"click",function(l,m,n){return function(o){l(m);jive.ext.x.xStopPropagation(o);n.setAttribute("class","month_view_day_task_title");n.className="month_view_day_task_title"}}(a,h,j));jive.ext.x.xAddEventListener(i,"dblclick",function(l,m,n){return function(o){l(m);jive.ext.x.xStopPropagation(o);n.setAttribute("class","month_view_day_task_title");n.className="month_view_day_task_title"}}(g,h,j));this.getDOM=function(){return i};this.killYourself=function(){h=null;d=null};this.getCheckPoint=i.getCheckPoint;this.setHighlight=function(l){if(l){i.setAttribute("class","month_day_cell_item_highlight");i.className="month_day_cell_item_highlight"}else{i.setAttribute("class","month_day_cell_item");i.className="month_day_cell_item"}}};

jive.gui.TaskDOM=function(g,a,c,j){var i=this;var m=document.createElement("A");m.setAttribute("class","month_day_cell_item");m.className="month_day_cell_item";var o=document.createElement("SPAN");o.setAttribute("class","month_view_day_task_title");o.className="month_view_day_task_title";var e=a.getSubject();if(e.length==0){e="(no title)"}var d=document.createTextNode(e);var h=document.createElement("SPAN");h.setAttribute("class","month_day_cell_event_desc");h.className="month_day_cell_event_desc";var p="";if(a.getDescription().unescapeHTML().length>0){p=": "+a.getDescription().unescapeHTML()}h.appendChild(document.createTextNode(p));var b=document.createElement("INPUT");b.setAttribute("type","checkbox");b.type="checkbox";if(a.isComplete()){b.checked=true;b.checkedCache=true}else{b.checkedCache=false}jive.ext.x.xAddEventListener(b,"click",function(n,q){return function(r){try{if(n.checkedCache==n.checked){n.checkedCache=!n.checkedCache;n.checked=!n.checked}else{n.checkedCache=!n.checkedCache}if(n.checked){q.setComplete(true)}else{q.setComplete(false)}q.confirm();jive.ext.x.xStopPropagation(r)}catch(r){alert(r)}}}(b,a));m.appendChild(b);o.appendChild(d);o.appendChild(h);m.appendChild(o);m.getTask=function(n){return function(){return n}}(a);m.setDisabled=function(n){return function(q){n.disabled=q}}(b);m.isDisabledHuh=function(n){return function(){return n.disabled}}(b);m.setChecked=function(n){return function(q){n.checked=q}}(b);m.isCheckedHuh=function(n){return function(){return n.checked}}(b);this.lighten=function(){m.setAttribute("class","month_day_cell_item month_lighten_dom");m.className="month_day_cell_item month_lighten_dom"};this.darken=function(){m.setAttribute("class","month_day_cell_item");m.className="month_day_cell_item"};this.refresh=function(){o.removeChild(o.childNodes[1]);o.removeChild(o.childNodes[0]);o.appendChild(document.createTextNode(a.getSubject()));var n="";if(a.getDescription().unescapeHTML().length>0){n=": "+a.getDescription().unescapeHTML()}h.removeChild(h.childNodes[0]);h.appendChild(document.createTextNode(n));o.appendChild(h);if(a.isComplete()){m.setChecked(true)}else{m.setChecked(false)}};this.showDescription=function(n){if(n){jive.ext.x.xDisplayInline(h)}else{jive.ext.x.xDisplayNone(h)}};m.setChecked(a.isComplete());jive.ext.x.xAddEventListener(m,"click",function(n,q,r){return function(s){n(q);jive.ext.x.xStopPropagation(s);r.setAttribute("class","month_view_day_task_title");r.className="month_view_day_task_title"}}(c,a,o));jive.ext.x.xAddEventListener(m,"dblclick",function(n,q,r){return function(s){n(q);jive.ext.x.xStopPropagation(s);r.setAttribute("class","month_view_day_task_title");r.className="month_view_day_task_title"}}(j,a,o));this.getDOM=function(){return m};this.killYourself=function(){a=null;g=null};this.getTask=m.getTask;this.setDisabled=m.setDisabled;this.isDisabledHuh=m.isDisabledHuh;this.setChecked=m.setChecked;this.isCheckedHuh=m.isCheckedHuh;this.setHighlight=function(n){if(n){m.setAttribute("class","month_day_cell_item_highlight");m.className="month_day_cell_item_highlight"}else{m.setAttribute("class","month_day_cell_item");m.className="month_day_cell_item"}};function l(n){if(n==null||n.isEditable()){m.setDisabled(false)}else{m.setDisabled(true)}}if(a.getProjectID()==0){l(null)}else{var f=g.getProjectCache().getProject(a.getProjectID());if($obj(f)&&f!=null){l(f)}else{var k=new jive.model.ProjectCacheListener();k.loadProject=function(n){if(n.getID()==a.getProjectID()){l(n);g.getProjectCache().removeListener(this)}};g.getProjectCache().addListener(k)}}};

jive.gui.isMonthEventDOM=function(a){return $def(a)&&$def(a.getEvent)};jive.gui.isMonthTaskDOM=function(a){return $def(a)&&$def(a.getTask)};jive.gui.MonthView=function(l,g){var k=this;var r=false;var e=null;this.hasAddView=function(){if(e==null){e=$obj(g.getView("add_event"))}return e};this.dayCells=new jive.ext.y.HashTable();this.eventDOMHolders=new jive.ext.y.HashTable();this.taskDOMHolders=new jive.ext.y.HashTable();var C=false;var c=new jive.ext.y.HashTable();var i=new jive.ext.y.HashTable();var t=new jive.ext.y.HashTable();var D=new jive.ext.y.HashTable();var d=document.createElement("DIV");d.setAttribute("class","month_view_holder");d.className="month_view_holder";var p=true;this.setItemVisibility=function(E){p=E};this.getItemVisibility=function(){return p};this.hasPrintView=function(){return true};this.isExpandedHuh=function(){return r};this.expand=function(){r=true;g.showArrows();jive.ext.x.xDisplayBlock(d)};this.collapse=function(){r=false;jive.ext.x.xDisplayNone(d)};function B(){var E=new Date();E.setTime(g.getCurrentDate().getTime());jive.model.dateMinusMonth(E);g.setCurrentDate(E);g.notifyMonthClicked(E)}function o(){var E=new Date();E.setTime(g.getCurrentDate().getTime());E.setMonth(E.getMonth()+1);while(E.getMonth()>g.getCurrentDate().getMonth()+1){jive.model.dateMinusDay(E)}g.setCurrentDate(E);g.notifyMonthClicked(E)}this.getPrevViewFunc=function(){return B};this.getNextViewFunc=function(){return o};this.getMinDate=function(){return g.getMinDate()};this.getMaxDate=function(){return g.getMaxDate()};this.getHeaderText=function(){var F=l.getLanguageManager().getActiveLanguage();var E=new Date();E.setTime(g.getCurrentDate().getTime());return F.longMonth(E.getMonth())};this.go=function(E){g.setCurrentDate(E);k.showMonth(g.getCurrentDate())};this.getName=function(){return"month"};this.getHash=function(){return"month"};this.updateText=function(){if(d.childNodes.length>0){var E=l.getSettingsManager().getStartWeekOn();var G=l.getLanguageManager().getActiveLanguage();for(var F=E;F-E<7;F++){var H=d.childNodes[0].childNodes[0].childNodes[(F-E)%7];if(H.childNodes.length>0){H.removeChild(H.childNodes[0])}H.appendChild(document.createTextNode(G.longDay(F%7)));H.setAttribute("height","2");H.height="2"}}};this.getDOM=function(){return d};var A;function u(H,K){var J;var I;var E;if($def(H.getEvent)){var G=H.getEvent();J=G.getSubject().toLowerCase();I=G.getDescription().toLowerCase();E=G.getCalendarId()}else{if($def(H.getTask)){var F=H.getTask();J=F.getSubject().toLowerCase();I=F.getDescription().toLowerCase();E=F.getProjectID()}}if(l.isCalendarVisibleHuh(E)){if(K.length==0||K.length>0&&(J.indexOf(K)>=0||I.indexOf(K)>=0)){H.darken()}else{H.lighten()}}}var a="";var h=(new Date()).getMonth();this.filter=function(K){if(a!=K||h!=g.getCurrentDate().getMonth()){a=K;h=g.getCurrentDate().getMonth();if(k.isExpandedHuh()){A=""+(new Date()).getTime()+""+Math.random();var J=A;var I=new Date();var H=g.getMinDate();var F=g.getMaxDate();I.setTime(H.getTime());K=K.toLowerCase();while(J==A&&(I.getTime()<F.getTime()+24*60*60*1000)){var E=n(I);for(var G=1;G<E.childNodes.length;G++){u(E.childNodes[G],K)}I.setTime(I.getTime()+24*60*60*1000)}}}};this.addEvent=function(L){try{var F=l.getSettingsManager();var N=f(L);var M=new Date();if(L.isAllDay()){M.setTime(L.getStart().getTime())}else{M.setTime(F.adjustDate(L.getStart()).getTime())}var G=0;var J=new Date();if(L.isAllDay()){J.setTime(L.getEnd().getTime())}else{J.setTime(F.adjustDate(L.getEnd()).getTime())}if(jive.model.dateLT(M,l.getEventCache().getMinTime())){M.setTime(l.getEventCache().getMinTime().getTime())}if(jive.model.dateGT(J,l.getEventCache().getMaxTime())){J.setTime(l.getEventCache().getMaxTime().getTime())}while(jive.model.dateLTEQ(M,J)){var K=n(M);if($def(l.getDragManager)){var H=l.getDragManager();var E=new Date();E.setTime(M.getTime());var O=new jive.gui.CellDragListener(l,L,E,l.notifyStopDrag,l.notifyDragging);if($obj(N[G].monthViewDList)&&N[G].monthViewDList!=null){H.removeDragListener(N[G],N[G].monthViewDList)}N[G].monthViewDList=O;H.enableDrag(N[G]);H.addDragListener(N[G],O)}if(!l.isCalendarVisibleHuh(L.getCalendarId())){jive.ext.x.xDisplayNone(N[G])}else{jive.ext.x.xDisplayBlock(N[G])}var P=g.getFilterText();u(N[G],P);K.appendEventDOM(N[G]);N[G].myParent=K;G++;M.setDate(M.getDate()+1)}}catch(I){alert("error adding event to month view: "+I)}};this.addTask=function(I){try{var H=l.getSettingsManager();var L=j(I);var K=n(I.getDueDate());K.appendTaskDOM(L);L.myParent=K;L.refresh();if($def(l.getDragManager)){var F=l.getDragManager();var G=new Date();G.setTime(I.getDueDate());var E=new jive.gui.CellDragListener(l,I,G,l.notifyStopDrag,l.notifyDragging);if($obj(L.monthViewDList)&&L.monthViewDList!=null){F.removeDragListener(L,L.monthViewDList)}L.monthViewDList=E;F.enableDrag(L);F.addDragListener(L,E)}if(!l.isCalendarVisibleHuh(I.getProjectID())){jive.ext.x.xDisplayNone(L)}else{jive.ext.x.xDisplayBlock(L)}}catch(J){alert(J)}};this.removeEvent=function(G){try{var I=l.getSettingsManager();var E=f(G,true);if(jive.ext.y.yArr(E)){for(var H=0;H<E.length;H++){if($def(l.getDragManager())){var F=l.getDragManager();F.removeDragListener(E[H],E[H].monthViewDList);F.disableDrag(E[H])}if($obj(jive.ext.x.xParent(E[H]))&&jive.ext.x.xParent(E[H])!=null){jive.ext.x.xParent(E[H]).removeChild(E[H]);E[H].myParent=null}else{if($obj(E[H].myParent)&&E[H].myParent!=null){E[H].myParent.removeChild(E[H]);E[H].myParent=null}}E[H].killYourself()}}}catch(J){alert("error removing event: "+J)}};this.removeTask=function(H){try{var G=l.getSettingsManager();var E=j(H);if($obj(E)){if($def(l.getDragManager)){var F=l.getDragManager();F.removeDragListener(E,E.monthViewDList);F.disableDrag(E)}var J=n(H.getDueDate());J.removeTaskDOM(E);E.myParent=null;E.killYourself()}}catch(I){alert("error removing task: "+H.getSubject()+"\nexception: "+I)}};this.flushCalendar=function(G){var F=k.eventDOMHolders.toArray(jive.gui.isMonthEventDOM);for(var E=0;E<F.length;E++){if(F[E].getEvent().getCalendarId()==G.getId()){k.flushEvent(F[E].getEvent())}}var H=k.taskDOMHolders.toArray(jive.gui.isMonthTaskDOM);for(var E=0;E<H.length;E++){if(H[E].getTask().getCalendarId()==G.getId()){k.flushTask(H[E].getTask())}}};this.flushEvent=function(G){try{k.removeEvent(G);k.eventDOMHolders.clear(G.getId());var E=D.get(G.getId());var F=i.get(E);F.clear(G.getId())}catch(H){alert("error flushing event")}};this.flushTask=function(G){try{k.removeTask(G);k.taskDOMHolders.clear(G.getID());var E=t.get(G.getID());var F=c.get(E);F.clear(G.getID())}catch(H){alert("flushEvent: "+H)}};this.refresh=function(){var I=l.getSettingsManager();var E=k.eventDOMHolders.toArray(jive.gui.isMonthEventDOM);try{for(var G=0;G<E.length;G++){var H=E[G].getEvent();var F=I.getOldTimezone();if(!jive.model.dateEQ(I.adjustDate(H.getStart()),I.adjustDate(H.getStart(),F))||!jive.model.dateEQ(I.adjustDate(H.getEnd()),I.adjustDate(H.getEnd(),F))){k.flushEvent(H);k.addEvent(H)}}}catch(J){alert(J)}if(k.isExpandedHuh()){k.showMonth(g.getCurrentDate())}k.refreshShading()};this.init=function(E){E.appendChild(d)};this.killYourself=function(){l=null;g=null};this.refreshWeather=function(){var G=new Date();G.setTime(g.getMinDate().getTime());while(jive.model.dateLTEQ(G,g.getMaxDate())){var E=n(G);var I=l.getSettingsManager().getWeatherImage(G);var F=E.style.backgroundColor;if(I.length>0){var H=22;if(G.getDate()==1){H=42}else{H=22}E.style.background="url("+I+") "+H+"px 2px no-repeat "+E.style.backgroundColor}else{E.style.background=""}E.style.backgroundColor=F;G.setDate(G.getDate()+1)}};this.refreshShading=function(){var L=l.getSettingsManager();var G=L.getStartWeekOn();var K=new Date();K.setTime(g.getMaxDate().getTime());var J=new Date();J.setTime(g.getMinDate().getTime());J.setHours(17);J.setDate(1);var E=J.getDay();if(G!=0&&E==0){E=7}J.setDate(J.getDate()-E+G);var H=new Date();H.setTime(J.getTime());var N=new Array();N[0]="#FFFFFF";N[1]="#EFEFEF";N[2]="#DFDFDF";N[3]="#CFCFCF";N[4]="#BFBFBF";var I=L.getNOW();var Q=L.getSmartShading();var F=g.getCurrentDate().getMonth();while(H.getMonth()<=K.getMonth()&&H.getYear()==K.getYear()||H.getYear()<K.getYear()){var S=n(J);var R=jive.model.dateEQ(J,I);if(Q){var O=S.childNodes.length-1;var P=0;for(var M=0;M<O&&P<=4;M++){if(jive.ext.x.xDisplay(S.childNodes[M+1])=="block"){P++}}if(P>4){P=4}else{if(P<0){P=0}}if(R){S.style.backgroundColor="#e4f6e7";S.outColor="#e4f6e7"}else{S.style.backgroundColor=N[O];S.outColor=N[O]}}else{if(S.getDate().getMonth()!=F){S.style.backgroundColor=N[2];S.outColor=N[2]}else{S.style.backgroundColor=N[0];S.outColor=N[0]}}if(R){S.style.backgroundColor="#e4f6e7";S.setAttribute("class","month_cell month_today_cell");S.className="month_cell month_today_cell";S.overColor="#ffffda"}else{S.setAttribute("class","month_cell month_day_cell");S.className="month_cell month_day_cell";S.overColor="#ffffda"}J.setDate(J.getDate()+1);if(J.getDay()==0){H.setTime(J.getTime())}}k.refreshWeather()};this.calendarVisible=function(I,G){var H=l.getSettingsManager().getShowTasks();var J=c.get(I.getId());if($obj(J)&&J!=null){J=J.toArray();for(var F=0;F<J.length;F++){if(G&&H){jive.ext.x.xDisplayBlock(J[F])}else{jive.ext.x.xDisplayNone(J[F])}}}var J=i.get(I.getId());if($obj(J)&&J!=null){J=J.toArray();for(var F=0;F<J.length;F++){for(var E=0;E<J[F].length;E++){if(G){jive.ext.x.xDisplayBlock(J[F][E])}else{jive.ext.x.xDisplayNone(J[F][E])}}}}k.refreshShading()};this.stopDrag=function(I,E,F,K){var L=false;if(k.isExpandedHuh()){if(d.childNodes.length>0){var M=d.childNodes[0];for(var H=1;H<M.childNodes.length;H++){tr=M.childNodes[H];for(var G=0;G<tr.childNodes.length;G++){if(tr.childNodes[G].childNodes.length>0){var J=tr.childNodes[G];if(jive.ext.x.xHasPoint(J,F,K)){if($def(J.dropPoint)){J.dropPoint(I,E);L=true}}}}}}}return L};var x=null;var b=0;this.dragging=function(J,E,F,L){b++;var N=b;var I=false;if(x!=null){if(jive.ext.x.xHasPoint(x,F,L)){var M=Math.floor(0.95*jive.ext.x.xWidth(x));l.showHoverOver(jive.ext.x.xPageX(x),jive.ext.x.xPageY(x),M,jive.ext.x.xHeight(x));I=true}}if(d.childNodes.length>0&&!I){var O=d.childNodes[0];for(var H=1;H<O.childNodes.length&&N==b&&!I;H++){tr=O.childNodes[H];for(var G=0;G<tr.childNodes.length&&N==b&&!I;G++){var K=tr.childNodes[G];if(jive.ext.x.xHasPoint(K,F,L)){if($def(K.dropPoint)){var M=Math.floor(0.95*jive.ext.x.xWidth(K));l.showHoverOver(jive.ext.x.xPageX(K),jive.ext.x.xPageY(K),M,jive.ext.x.xHeight(K));x=K;I=true}}}}if(N!=b){return}}if(!I){l.hideHover()}return I};this.fixHeight=function(G){try{jive.ext.x.xHeight(d,G);var G=G-20;if(d.childNodes.length>0){var H=d.childNodes[0];G+=G%(H.childNodes.length-1);for(var F=1;F<H.childNodes.length;F++){var I=H.childNodes[F];jive.ext.x.xHeight(I,Math.floor(G/(H.childNodes.length-1)));if(jive.ext.x.xIE4Up){for(var E=0;E<I.childNodes.length;E++){jive.ext.x.xDisplayNone(I.childNodes[E]);jive.ext.x.xDisplayBlock(I.childNodes[E])}}}}}catch(J){alert(J)}};this.getEventsOn=function(H){var G=new Array();var E=n(H);for(var F=1;F<E.childNodes.length;F++){if($def(E.childNodes[F].getEvent)){G.push(E.childNodes[F].getEvent())}}return G};this.getTasksOn=function(F){var G=new Array();var E=n(F);return E.getTasks()};function f(J,M){try{var E=l.getSettingsManager();var K=new Date();var H=new Date();if(J.isAllDay()){K.setTime(J.getStart().getTime());H.setTime(J.getEnd().getTime())}else{K.setTime(E.adjustDate(J.getStart()).getTime());H.setTime(E.adjustDate(J.getEnd()).getTime())}if(jive.model.dateLT(K,l.getEventCache().getMinTime())){K.setTime(l.getEventCache().getMinTime().getTime())}if(jive.model.dateGT(H,l.getEventCache().getMaxTime())){H.setTime(l.getEventCache().getMaxTime().getTime())}}catch(I){alert("top of getdomarray: "+I)}try{var L=k.eventDOMHolders.get(J.getId());if(!$obj(L)){if($def(M)&&M){return null}L=new Array();L.getEvent=function(){return J};k.eventDOMHolders.put(J.getId(),L);D.put(J.getId(),J.getCalendarId());var N=i.get(J.getCalendarId());if(!$obj(N)||N==null){N=new jive.ext.y.HashTable();i.put(J.getCalendarId(),N)}N.put(J.getId(),L)}var G=0;while(jive.model.dateLTEQ(K,H)){if(L.length<=G){var O=function(P){return function(Q){var R=new jive.model.DateHelper(l);if(jive.model.dateEQ(E.adjustDate(Q),P)){return R.formatTo12HourTime(E.adjustDate(Q))}else{return R.formatToShortDate(E.adjustDate(Q))}}}(K);var F=l.getEventDOMFactory().getEventDOM(J,g.notifyEventClicked,g.notifyEventDblClicked,O);F.showTimes(false);F.getDOM().myParent=null;F.getDOM().killYourself=F.killYourself;F.getDOM().refresh=F.refresh;F.getDOM().lighten=F.lighten;F.getDOM().darken=F.darken;F=F.getDOM();L[G]=F}else{L[G].refresh()}G++;K.setDate(K.getDate()+1)}while(L.length>G){if($obj(jive.ext.x.xParent(L[G]))&&jive.ext.x.xParent(L[G])!=null){jive.ext.x.xParent(L[G]).removeChild(L[G]);L[G].myParent=null}else{if($obj(L[G].myParent)&&L[G].myParent!=null){L[G].myParent.removeChild(L[G]);L[G].myParent=null}}L[G].killYourself();L.splice(G,1)}for(var G=0;G<L.length;G++){if(k.getItemVisibility()){L[G].style.visibility="visible"}else{L[G].style.visibility="hidden"}}return L}catch(I){alert("getting array dom in month: "+I)}}function j(H){var G=l.getSettingsManager();var F=k.taskDOMHolders.get(H.getID());if($obj(F)&&F!=null){F.refresh();return F}var I=new jive.gui.TaskDOM(l,H,g.notifyTaskClicked,g.notifyTaskDblClicked);var F=I.getDOM();F.refresh=I.refresh;F.lighten=I.lighten;F.darken=I.darken;F.getTask=I.getTask;F.killYourself=I.killYourself;F.myParent=null;k.taskDOMHolders.put(H.getID(),F);t.put(H.getID(),H.getProjectID());var E=c.get(H.getProjectID());if(!$obj(E)||E==null){E=new jive.ext.y.HashTable();c.put(H.getProjectID(),E)}E.put(H.getID(),F);if(k.getItemVisibility()){F.style.visibility="visible"}else{F.style.visibility="hidden"}return F}function n(H){var J=new Date();J.setTime(H.getTime());var I=J.getDate();var G=k.dayCells.get(I);if($arr(G)){for(var F=0;F<G.length;F++){if(jive.model.monthYearEQ(G[F].getDate(),J)){return G[F].getDOM()}}}else{G=new Array();k.dayCells.put(I,G)}var E=new jive.gui.MonthDayCell(l,g,k,J);G.push(E);return E.getDOM()}var s=null;var w=null;var m=0;this.showMonth=function(P){var X=l.getSettingsManager();var M=X.getStartWeekOn();m++;r=true;var Y=new Date();Y.setTime(P.getTime());Y.setHours(17);Y.setDate(1);var L=Y.getDay();if(M!=0&&L==0){L=7}Y.setDate(Y.getDate()-L+M);var J=new Date();J.setTime(P.getTime());var Z=l.getLanguageManager().getActiveLanguage();var H=new Array();if(C||s==null||!jive.model.dateEQ(s,Y)){C=false;var U=new Date();U.setTime(Y.getTime());g.setMinDate(U);var F;var K;var E;var V=document.createElement("DIV");V.setAttribute("class","month_table");V.className="month_table";while(d.childNodes.length>0){d.removeChild(d.childNodes[0])}E=document.createElement("DIV");V.appendChild(E);jive.ext.x.xHeight(E,20);for(var S=M;S-M<7;S++){K=document.createElement("DIV");E.appendChild(K);K.setAttribute("class","month_table_th");K.className="month_table_th";if(jive.ext.x.xWidth(d)>640){K.appendChild(document.createTextNode(Z.longDay(S%7)))}else{K.appendChild(document.createTextNode(Z.shortDay(S%7)))}K.style.left=((S-M)*14.2857)+"%"}var N=new Array();var G=0;while(J.getMonth()<=P.getMonth()&&J.getYear()==P.getYear()||J.getYear()<P.getYear()){if(Y.getDay()==M){E=document.createElement("DIV");E.setAttribute("class","month_table_row");E.className="month_table_row";N.push(E);G=0}K=n(Y);K.updateText();K.over=false;E.appendChild(K);K.style.left=(G*14.2857)+"%";G++;var W=new Date();W.setTime(Y.getTime());Y=W;Y.setDate(Y.getDate()+1);if(Y.getDay()==M){J.setTime(Y.getTime())}if(jive.ext.x.xIE4Up){var Q=k.getTasksOn(Y);H=H.concat(Q)}}for(var S=0;S<N.length;S++){V.appendChild(N[S])}g.setMaxDate(Y);var I=new Date();I.setTime(P.getTime());I.setHours(17);g.setCurrentDate(I);var Z=l.getLanguageManager().getActiveLanguage();d.appendChild(V);for(var S=1;S<V.childNodes.length;S++){var E=V.childNodes[S];for(var R=0;R<E.childNodes.length;R++){var F=E.childNodes[R];if(F.childNodes.length>0){jive.ext.x.xZIndex(F.childNodes[0],10+S)}}}s=new Date();w=new Date();s.setTime(g.getMinDate().getTime());w.setTime(g.getMaxDate().getTime())}else{if(jive.ext.x.xIE4Up){while(J.getMonth()<=P.getMonth()&&J.getYear()==P.getYear()||J.getYear()<P.getYear()){var W=new Date();W.setTime(Y.getTime());Y=W;Y.setDate(Y.getDate()+1);if(Y.getDay()==M){J.setTime(Y.getTime())}var Q=k.getTasksOn(Y);H=H.concat(Q)}}g.setMinDate(s);g.setMaxDate(w)}if(jive.ext.x.xIE4Up){for(var S=0;S<H.length;S++){var T=j(H[S]);T.refresh()}}k.refreshShading();var O=g.getFilterText();k.filter(O);g.fixHeight()};function v(){if(jive.model.isEvent(g.getSelectedItem())){var F=f(g.getSelectedItem());for(var E=0;E<F.length;E++){u(F[E],g.getFilterText())}}if(jive.model.isTask(g.getSelectedItem())){var F=j(g.getSelectedItem());u(F,g.getFilterText())}}function z(){var F=l.getSettingsManager().getStartWeekOn();var J=g.getCurrentDate();var K=new Date();K.setTime(J.getTime());K.setHours(17);K.setDate(1);var G=K.getDay();if(F!=0&&G==0){G=7}K.setDate(K.getDate()-G+F);var E=new Date();E.setTime(J.getTime());g.setMinDate(K);while(E.getMonth()<=J.getMonth()&&E.getYear()==J.getYear()||E.getYear()<J.getYear()){var L=new Date();L.setTime(K.getTime());K=L;K.setDate(K.getDate()+1);if(K.getDay()==F){E.setTime(K.getTime())}}var I=new Date();I.setTime(K.getTime());I.setDate(I.getDate()+1);g.setMaxDate(I);var H=new Date();H.setTime(J.getTime());H.setHours(17);g.setCurrentDate(H);s=new Date();w=new Date();s.setTime(g.getMinDate().getTime());w.setTime(g.getMaxDate().getTime());C=true}function q(){var H=l.getSettingsManager().getShowTasks();if(H){var I=l.getCalendarCache().getCalendars();for(var G=0;G<I.length;G++){if(l.isCalendarVisibleHuh(I[G].getId())){var E=c.get(I[G].getId());if($obj(E)){var J=E.toArray();for(var F=0;F<J.length;F++){if($def(J[F].getTask)){jive.ext.x.xDisplayBlock(J[F])}}}}}}else{var J=k.taskDOMHolders.toArray(jive.gui.isMonthTaskDOM);for(var G=0;G<J.length;G++){if($def(J[G].getTask)){jive.ext.x.xDisplayNone(J[G])}}}}var y=new Object();y.eventClicked=function(E){v();var G=f(E);if($obj(G)){for(var F=0;F<G.length;F++){G[F].setAttribute("class","month_day_cell_item_highlight");G[F].className="month_day_cell_item_highlight"}}};y.eventDblClicked=function(E){};y.taskClicked=function(E){v();var F=j(E);if($obj(F)){F.setAttribute("class","month_day_cell_item_highlight");F.className="month_day_cell_item_highlight"}};y.taskDblClicked=function(E){};y.unselectAll=function(){v()};g.addEventListener(y);var y=new jive.model.TaskCacheListener();y.loadTask=function(E){if(E.hasDueDate()){k.addTask(E)}};y.doneLoadingTasks=function(){k.refreshShading()};y.taskChanged=function(E){k.refreshShading()};y.savingTask=function(E){var F=j(E);F.setDisabled(true)};y.doneSavingTask=function(G){m++;k.refreshShading();if(G.hasDueDate()){var H=j(G);H.refresh();H.setDisabled(false)}var F=t.get(G.getID());if(F!=G.getProjectID()){var E=c.get(F);E.clear(G.getID());var E=c.get(G.getProjectID());if(!$obj(E)||E==null){E=new jive.ext.y.HashTable();c.put(G.getProjectID(),E)}E.put(G.getID(),H)}};y.savingTaskFailed=function(E){k.refreshShading();var F=j(E);F.setDisabled(false);F.setChecked(E.getStatus()=="Complete")};y.deletingTask=function(E){k.refreshShading()};y.doneDeletingTask=function(E){k.refreshShading()};y.deletingTaskFailed=function(E){k.refreshShading()};y.deletingTaskSeries=function(E){k.refreshShading()};y.doneDeletingTaskSeries=function(E){k.refreshShading()};y.deletingTaskSeriesFailed=function(E){k.refreshShading()};l.getTaskCache().addListener(y);z();jive.ext.x.xDisplayNone(d)};

jive.gui.isMonthEventDOM=function(a){return $def(a)&&$def(a.getEvent)};jive.gui.isMonthTaskDOM=function(a){return $def(a)&&$def(a.getTask)};jive.gui.MiniMonthView=function(o,i){var n=this;var u=false;var f=null;this.hasAddView=function(){if(f==null){f=$obj(i.getView("add_event"))}return f};this.dayCells=new jive.ext.y.HashTable();this.eventDOMHolders=new jive.ext.y.HashTable();this.taskDOMHolders=new jive.ext.y.HashTable();this.cpDOMHolders=new jive.ext.y.HashTable();var G=false;var c=new jive.ext.y.HashTable();var k=new jive.ext.y.HashTable();var F=new jive.ext.y.HashTable();var x=new jive.ext.y.HashTable();var d=new jive.ext.y.HashTable();var H=new jive.ext.y.HashTable();var e=document.createElement("DIV");e.setAttribute("class","month_view_holder");e.className="month_view_holder";var s=true;this.setItemVisibility=function(I){s=I};this.getItemVisibility=function(){return s};function m(K){var J=n.taskDOMHolders.get(K.getID());if($obj(J)&&J!=null){J.refresh();return J}var L=new jive.gui.TaskDOM(o,K,i.notifyTaskClicked,i.notifyTaskDblClicked);J=L.getDOM();J.refresh=L.refresh;J.lighten=L.lighten;J.darken=L.darken;J.getTask=L.getTask;J.killYourself=L.killYourself;J.myParent=null;n.taskDOMHolders.put(K.getID(),J);x.put(K.getID(),K.getProjectID());var I=c.get(K.getProjectID());if(!$obj(I)||I==null){I=new jive.ext.y.HashTable();c.put(K.getProjectID(),I)}I.put(K.getID(),J);if(n.getItemVisibility()){J.style.visibility="visible"}else{J.style.visibility="hidden"}return J}function l(L){var K=n.cpDOMHolders.get(L.getID());if($obj(K)&&K!=null){K.refresh();return K}var J=new jive.gui.CPDOM(o,L,i.notifyCheckPointClicked,i.notifyCheckPointDblClicked);K=J.getDOM();K.refresh=J.refresh;K.lighten=J.lighten;K.darken=J.darken;K.getCheckPoint=J.getCheckPoint;K.killYourself=J.killYourself;K.myParent=null;n.cpDOMHolders.put(L.getID(),K);d.put(L.getID(),L.getProject().getID());var I=F.get(L.getProject().getID());if(!$obj(I)||I==null){I=new jive.ext.y.HashTable();F.put(L.getProject().getID(),I)}I.put(L.getID(),K);if(n.getItemVisibility()){K.style.visibility="visible"}else{K.style.visibility="hidden"}return K}function r(L){var N=new Date();N.setTime(L.getTime());var M=N.getDate();var K=n.dayCells.get(M);if($arr(K)){for(var J=0;J<K.length;J++){if(jive.model.monthYearEQ(K[J].getDate(),N)){return K[J].getDOM()}}}else{K=new Array();n.dayCells.put(M,K)}var I=new jive.gui.MonthDayGroupedCell(o,i,n,N);K.push(I);return I.getDOM()}this.hasPrintView=function(){return true};this.isExpandedHuh=function(){return u};this.expand=function(){u=true;i.showArrows();jive.ext.x.xDisplayBlock(e)};this.collapse=function(){u=false;jive.ext.x.xDisplayNone(e)};function E(){var I=new Date();I.setTime(i.getCurrentDate().getTime());jive.model.dateMinusMonth(I);i.setCurrentDate(I);i.notifyMonthClicked(I)}function q(){var I=new Date();I.setTime(i.getCurrentDate().getTime());I.setMonth(I.getMonth()+1);while(I.getMonth()>i.getCurrentDate().getMonth()+1){jive.model.dateMinusDay(I)}i.setCurrentDate(I);i.notifyMonthClicked(I)}this.getPrevViewFunc=function(){return E};this.getNextViewFunc=function(){return q};this.getMinDate=function(){return i.getMinDate()};this.getMaxDate=function(){return i.getMaxDate()};this.getHeaderText=function(){var J=o.getLanguageManager().getActiveLanguage();var I=new Date();I.setTime(i.getCurrentDate().getTime());return J.longMonth(I.getMonth())};this.go=function(I){i.setCurrentDate(I);n.showMonth(i.getCurrentDate())};this.getName=function(){return"month"};this.getHash=function(){return"month"};this.updateText=function(){if(e.childNodes.length>0){var I=o.getSettingsManager().getStartWeekOn();var K=o.getLanguageManager().getActiveLanguage();for(var J=I;J-I<7;J++){var L=e.childNodes[0].childNodes[0].childNodes[(J-I)%7];if(L.childNodes.length>0){L.removeChild(L.childNodes[0])}L.appendChild(document.createTextNode(K.longDay(J%7)));L.setAttribute("height","2");L.height="2"}}};this.getDOM=function(){return e};var D;function w(L,O){var N;var M;var I;if($def(L.getEvent)){var K=L.getEvent();N=K.getSubject().toLowerCase();M=K.getDescription().toLowerCase();I=K.getCalendarId()}else{if($def(L.getTask)){var J=L.getTask();N=J.getSubject().toLowerCase();M=J.getDescription().toLowerCase();I=J.getProjectID()}}if(o.isCalendarVisibleHuh(I)){if(O.length==0||O.length>0&&(N.indexOf(O)>=0||M.indexOf(O)>=0)){L.darken()}else{L.lighten()}}}var a="";var j=(new Date()).getMonth();this.filter=function(O){if(a!=O||j!=i.getCurrentDate().getMonth()){a=O;j=i.getCurrentDate().getMonth();if(n.isExpandedHuh()){D=""+(new Date()).getTime()+""+Math.random();var N=D;var M=new Date();var L=i.getMinDate();var J=i.getMaxDate();M.setTime(L.getTime());O=O.toLowerCase();while(N==D&&(M.getTime()<J.getTime()+24*60*60*1000)){var I=r(M);for(var K=1;K<I.childNodes.length;K++){w(I.childNodes[K],O)}M.setTime(M.getTime()+24*60*60*1000)}}}};this.addEvent=function(P){try{var J=o.getSettingsManager();var R=h(P);var Q=new Date();if(P.isAllDay()){Q.setTime(P.getStart().getTime())}else{Q.setTime(J.adjustDate(P.getStart()).getTime())}var K=0;var N=new Date();if(P.isAllDay()){N.setTime(P.getEnd().getTime())}else{N.setTime(J.adjustDate(P.getEnd()).getTime())}if(jive.model.dateLT(Q,o.getEventCache().getMinTime())){Q.setTime(o.getEventCache().getMinTime().getTime())}if(jive.model.dateGT(N,o.getEventCache().getMaxTime())){N.setTime(o.getEventCache().getMaxTime().getTime())}while(jive.model.dateLTEQ(Q,N)){var O=r(Q);if($def(o.getDragManager)){var L=o.getDragManager();var I=new Date();I.setTime(Q.getTime());var S=new jive.gui.CellDragListener(o,P,I,o.notifyStopDrag,o.notifyDragging);if($obj(R[K].monthViewDList)&&R[K].monthViewDList!=null){L.removeDragListener(R[K],R[K].monthViewDList)}R[K].monthViewDList=S;L.enableDrag(R[K]);L.addDragListener(R[K],S)}if(!o.isCalendarVisibleHuh(P.getCalendarId())){jive.ext.x.xDisplayNone(R[K])}else{jive.ext.x.xDisplayBlock(R[K])}var T=i.getFilterText();w(R[K],T);O.appendEventDOM(R[K]);R[K].myParent=O;K++;Q.setDate(Q.getDate()+1)}}catch(M){alert("error adding event to month view: "+M)}};this.addCheckPoint=function(M){try{var O=l(M);var N=r(M.getDueDate());N.appendCheckPointDOM(O);O.myParent=N;O.refresh();if($def(o.getDragManager)){var J=o.getDragManager();var K=new Date();K.setTime(ttask.getDueDate());var I=new jive.gui.CellDragListener(o,ttask,K,o.notifyStopDrag,o.notifyDragging);if($obj(O.monthViewDList)&&O.monthViewDList!=null){J.removeDragListener(O,O.monthViewDList)}O.monthViewDList=I;J.enableDrag(O);J.addDragListener(O,I)}if(!o.isCalendarVisibleHuh(M.getProject().getID())){jive.ext.x.xDisplayNone(O)}else{jive.ext.x.xDisplayBlock(O)}}catch(L){alert(L)}};this.addTask=function(L){try{var O=m(L);var N=r(L.getDueDate());N.appendTaskDOM(O);O.myParent=N;O.refresh();if($def(o.getDragManager)){var J=o.getDragManager();var K=new Date();K.setTime(L.getDueDate());var I=new jive.gui.CellDragListener(o,L,K,o.notifyStopDrag,o.notifyDragging);if($obj(O.monthViewDList)&&O.monthViewDList!=null){J.removeDragListener(O,O.monthViewDList)}O.monthViewDList=I;J.enableDrag(O);J.addDragListener(O,I)}if(!o.isCalendarVisibleHuh(L.getProjectID())){jive.ext.x.xDisplayNone(O)}else{jive.ext.x.xDisplayBlock(O)}}catch(M){alert(M)}};this.removeEvent=function(K){try{var M=o.getSettingsManager();var I=h(K,true);if(jive.ext.y.yArr(I)){for(var L=0;L<I.length;L++){if($def(o.getDragManager())){var J=o.getDragManager();J.removeDragListener(I[L],I[L].monthViewDList);J.disableDrag(I[L])}if($obj(jive.ext.x.xParent(I[L]))&&jive.ext.x.xParent(I[L])!=null){jive.ext.x.xParent(I[L]).removeChild(I[L]);I[L].myParent=null}else{if($obj(I[L].myParent)&&I[L].myParent!=null){I[L].myParent.removeChild(I[L]);I[L].myParent=null}}I[L].killYourself()}}}catch(N){alert("error removing event: "+N)}};this.removeTask=function(L){try{var K=o.getSettingsManager();var I=m(L);if($obj(I)){if($def(o.getDragManager)){var J=o.getDragManager();J.removeDragListener(I,I.monthViewDList);J.disableDrag(I)}if($obj(jive.ext.x.xParent(I))&&jive.ext.x.xParent(I)!=null){jive.ext.x.xParent(I).removeChild(I);I.myParent=null}else{if($obj(I.myParent)&&I.myParent!=null){I.myParent.removeChild(I);I.myParent=null}}I.killYourself()}}catch(M){alert("error removing task: "+L.getSubject()+"\nexception: "+M)}};this.flushCalendar=function(K){var J=n.eventDOMHolders.toArray(jive.gui.isMonthEventDOM);for(var I=0;I<J.length;I++){if(J[I].getEvent().getCalendarId()==K.getId()){n.flushEvent(J[I].getEvent())}}var L=n.taskDOMHolders.toArray(jive.gui.isMonthTaskDOM);for(var I=0;I<L.length;I++){if(L[I].getTask().getCalendarId()==K.getId()){n.flushTask(L[I].getTask())}}};this.flushEvent=function(K){try{n.removeEvent(K);n.eventDOMHolders.clear(K.getId());var I=H.get(K.getId());var J=k.get(I);J.clear(K.getId())}catch(L){alert("error flushing event")}};this.flushTask=function(K){try{n.removeTask(K);n.taskDOMHolders.clear(K.getID());var I=x.get(K.getID());var J=c.get(I);J.clear(K.getID())}catch(L){alert("flushEvent: "+L)}};this.refresh=function(){var M=o.getSettingsManager();var I=n.eventDOMHolders.toArray(jive.gui.isMonthEventDOM);try{for(var K=0;K<I.length;K++){var L=I[K].getEvent();var J=M.getOldTimezone();if(!jive.model.dateEQ(M.adjustDate(L.getStart()),M.adjustDate(L.getStart(),J))||!jive.model.dateEQ(M.adjustDate(L.getEnd()),M.adjustDate(L.getEnd(),J))){n.flushEvent(L);n.addEvent(L)}}}catch(N){alert(N)}if(n.isExpandedHuh()){n.showMonth(i.getCurrentDate())}n.refreshShading()};this.init=function(I){I.appendChild(e)};this.killYourself=function(){o=null;i=null};this.refreshWeather=function(){var K=new Date();K.setTime(i.getMinDate().getTime());while(jive.model.dateLTEQ(K,i.getMaxDate())){var I=r(K);var M=o.getSettingsManager().getWeatherImage(K);var J=I.style.backgroundColor;if(M.length>0){var L=22;if(K.getDate()==1){L=42}else{L=22}I.style.background="url("+M+") "+L+"px 2px no-repeat "+I.style.backgroundColor}else{I.style.background=""}I.style.backgroundColor=J;K.setDate(K.getDate()+1)}};this.refreshShading=function(){var P=o.getSettingsManager();var K=P.getStartWeekOn();var O=new Date();O.setTime(i.getMaxDate().getTime());var N=new Date();N.setTime(i.getMinDate().getTime());N.setHours(17);N.setDate(1);var I=N.getDay();if(K!=0&&I==0){I=7}N.setDate(N.getDate()-I+K);var L=new Date();L.setTime(N.getTime());var Q=new Array();Q[0]="#FFFFFF";Q[1]="#EFEFEF";Q[2]="#DFDFDF";Q[3]="#CFCFCF";Q[4]="#BFBFBF";var M=P.getNOW();var S=P.getSmartShading();var J=i.getCurrentDate().getMonth();while(L.getMonth()<=O.getMonth()&&L.getYear()==O.getYear()||L.getYear()<O.getYear()){var U=r(N);var T=jive.model.dateEQ(N,M);if(S){var R=U.countVisibleItems();if(R>4){R=4}else{if(R<0){R=0}}if(T){U.style.backgroundColor="#e4f6e7";U.outColor="#e4f6e7"}else{U.style.backgroundColor=Q[R];U.outColor=Q[R]}}else{if(U.getDate().getMonth()!=J){U.style.backgroundColor=Q[2];U.outColor=Q[2]}else{U.style.backgroundColor=Q[0];U.outColor=Q[0]}}if(T){U.style.backgroundColor="#e4f6e7";U.setAttribute("class","month_cell month_today_cell");U.className="month_cell month_today_cell";U.overColor="#ffffda"}else{U.setAttribute("class","month_cell month_day_cell");U.className="month_cell month_day_cell";U.overColor="#ffffda"}N.setDate(N.getDate()+1);if(N.getDay()==0){L.setTime(N.getTime())}}n.refreshWeather()};this.calendarVisible=function(M,K){var L=o.getSettingsManager().getShowTasks();var N=c.get(M.getId());if($obj(N)&&N!=null){N=N.toArray();for(var J=0;J<N.length;J++){if(K&&L){jive.ext.x.xDisplayBlock(N[J])}else{jive.ext.x.xDisplayNone(N[J])}}}var N=k.get(M.getId());if($obj(N)&&N!=null){N=N.toArray();for(var J=0;J<N.length;J++){for(var I=0;I<N[J].length;I++){if(K){jive.ext.x.xDisplayBlock(N[J][I])}else{jive.ext.x.xDisplayNone(N[J][I])}}}}n.refreshShading()};this.stopDrag=function(M,I,J,O){var P=false;if(n.isExpandedHuh()){if(e.childNodes.length>0){var Q=e.childNodes[0];for(var L=1;L<Q.childNodes.length;L++){tr=Q.childNodes[L];for(var K=0;K<tr.childNodes.length;K++){if(tr.childNodes[K].childNodes.length>0){var N=tr.childNodes[K];if(jive.ext.x.xHasPoint(N,J,O)){if($def(N.dropPoint)){N.dropPoint(M,I);P=true}}}}}}}return P};var A=null;var b=0;this.dragging=function(N,I,J,P){b++;var R=b;var M=false;if(A!=null){if(jive.ext.x.xHasPoint(A,J,P)){var Q=Math.floor(0.95*jive.ext.x.xWidth(A));o.showHoverOver(jive.ext.x.xPageX(A),jive.ext.x.xPageY(A),Q,jive.ext.x.xHeight(A));M=true}}if(e.childNodes.length>0&&!M){var S=e.childNodes[0];for(var L=1;L<S.childNodes.length&&R==b&&!M;L++){tr=S.childNodes[L];for(var K=0;K<tr.childNodes.length&&R==b&&!M;K++){var O=tr.childNodes[K];if(jive.ext.x.xHasPoint(O,J,P)){if($def(O.dropPoint)){var Q=Math.floor(0.95*jive.ext.x.xWidth(O));o.showHoverOver(jive.ext.x.xPageX(O),jive.ext.x.xPageY(O),Q,jive.ext.x.xHeight(O));A=O;M=true}}}}if(R!=b){return}}if(!M){o.hideHover()}return M};this.fixHeight=function(K){try{jive.ext.x.xHeight(e,K);var K=K-20;if(e.childNodes.length>0){var L=e.childNodes[0];K+=K%(L.childNodes.length-1);for(var J=1;J<L.childNodes.length;J++){var M=L.childNodes[J];jive.ext.x.xHeight(M,Math.floor(K/(L.childNodes.length-1)));if(jive.ext.x.xIE4Up){for(var I=0;I<M.childNodes.length;I++){jive.ext.x.xDisplayNone(M.childNodes[I]);jive.ext.x.xDisplayBlock(M.childNodes[I])}}}}}catch(N){alert(N)}};this.getEventsOn=function(L){var K=new Array();var I=r(L);for(var J=1;J<I.childNodes.length;J++){if($def(I.childNodes[J].getEvent)){K.push(I.childNodes[J].getEvent())}}return K};this.getTasksOn=function(K){var L=new Array();var I=r(K);for(var J=1;J<I.childNodes.length;J++){if($def(I.childNodes[J].getTask)){L.push(I.childNodes[J].getTask())}}return L};function h(N,Q){try{var I=o.getSettingsManager();var O=new Date();var L=new Date();if(N.isAllDay()){O.setTime(N.getStart().getTime());L.setTime(N.getEnd().getTime())}else{O.setTime(I.adjustDate(N.getStart()).getTime());L.setTime(I.adjustDate(N.getEnd()).getTime())}if(jive.model.dateLT(O,o.getEventCache().getMinTime())){O.setTime(o.getEventCache().getMinTime().getTime())}if(jive.model.dateGT(L,o.getEventCache().getMaxTime())){L.setTime(o.getEventCache().getMaxTime().getTime())}}catch(M){alert("top of getdomarray: "+M)}try{var P=n.eventDOMHolders.get(N.getId());if(!$obj(P)){if($def(Q)&&Q){return null}P=new Array();P.getEvent=function(){return N};n.eventDOMHolders.put(N.getId(),P);H.put(N.getId(),N.getCalendarId());var R=k.get(N.getCalendarId());if(!$obj(R)||R==null){R=new jive.ext.y.HashTable();k.put(N.getCalendarId(),R)}R.put(N.getId(),P)}var K=0;while(jive.model.dateLTEQ(O,L)){if(P.length<=K){var S=function(T){return function(U){var V=new jive.model.DateHelper(o);if(jive.model.dateEQ(I.adjustDate(U),T)){return V.formatTo12HourTime(I.adjustDate(U))}else{return V.formatToShortDate(I.adjustDate(U))}}}(O);var J=o.getEventDOMFactory().getEventDOM(N,i.notifyEventClicked,i.notifyEventDblClicked,S);J.showTimes(false);J.getDOM().myParent=null;J.getDOM().killYourself=J.killYourself;J.getDOM().refresh=J.refresh;J.getDOM().lighten=J.lighten;J.getDOM().darken=J.darken;J=J.getDOM();P[K]=J}else{P[K].refresh()}K++;O.setDate(O.getDate()+1)}while(P.length>K){if($obj(jive.ext.x.xParent(P[K]))&&jive.ext.x.xParent(P[K])!=null){jive.ext.x.xParent(P[K]).removeChild(P[K]);P[K].myParent=null}else{if($obj(P[K].myParent)&&P[K].myParent!=null){P[K].myParent.removeChild(P[K]);P[K].myParent=null}}P[K].killYourself();P.splice(K,1)}for(var K=0;K<P.length;K++){if(n.getItemVisibility()){P[K].style.visibility="visible"}else{P[K].style.visibility="hidden"}}return P}catch(M){alert("getting array dom in month: "+M)}}var g=2;this.setNumWeeks=function(I){g=I};var v=null;var z=null;var p=0;this.showMonth=function(S){var aa=o.getSettingsManager();var P=aa.getStartWeekOn();p++;u=true;var ab=new Date();ab.setTime(S.getTime());ab.setHours(17);P=ab.getDay();var N=new Date();N.setTime(S.getTime());var ac=o.getLanguageManager().getActiveLanguage();var L=new Array();if(G||v==null||!jive.model.dateEQ(v,ab)){G=false;var X=new Date();X.setTime(ab.getTime());i.setMinDate(X);var J;var O;var I;var Y=document.createElement("DIV");Y.setAttribute("class","month_table");Y.className="month_table";while(e.childNodes.length>0){e.removeChild(e.childNodes[0])}I=document.createElement("DIV");Y.appendChild(I);jive.ext.x.xHeight(I,20);for(var V=P;V-P<7;V++){O=document.createElement("DIV");I.appendChild(O);O.setAttribute("class","month_table_th");O.className="month_table_th";if(jive.ext.x.xWidth(e)>640){O.appendChild(document.createTextNode(ac.longDay(V%7)))}else{O.appendChild(document.createTextNode(ac.shortDay(V%7)))}O.style.left=((V-P)*14.2857)+"%"}var Q=new Array();var K=0;for(var V=0;V<g*7;V++){if(ab.getDay()==P){I=document.createElement("DIV");I.setAttribute("class","month_table_row");I.className="month_table_row";Q.push(I);K=0}O=r(ab);O.updateText();O.over=false;I.appendChild(O);O.style.left=(K*14.2857)+"%";K++;var Z=new Date();Z.setTime(ab.getTime());ab=Z;ab.setDate(ab.getDate()+1);if(ab.getDay()==P){N.setTime(ab.getTime())}if(jive.ext.x.xIE4Up){var T=n.getTasksOn(ab);L=L.concat(T)}}for(var V=0;V<Q.length;V++){Y.appendChild(Q[V])}i.setMaxDate(ab);var M=new Date();M.setTime(S.getTime());M.setHours(17);i.setCurrentDate(M);var ac=o.getLanguageManager().getActiveLanguage();e.appendChild(Y);for(var V=1;V<Y.childNodes.length;V++){var I=Y.childNodes[V];for(var U=0;U<I.childNodes.length;U++){var J=I.childNodes[U];if(J.childNodes.length>0){jive.ext.x.xZIndex(J.childNodes[0],10+V)}}}v=new Date();z=new Date();v.setTime(i.getMinDate().getTime());z.setTime(i.getMaxDate().getTime())}else{if(jive.ext.x.xIE4Up){while(N.getMonth()<=S.getMonth()&&N.getYear()==S.getYear()||N.getYear()<S.getYear()){var Z=new Date();Z.setTime(ab.getTime());ab=Z;ab.setDate(ab.getDate()+1);if(ab.getDay()==P){N.setTime(ab.getTime())}var T=n.getTasksOn(ab);L=L.concat(T)}}i.setMinDate(v);i.setMaxDate(z)}if(jive.ext.x.xIE4Up){for(var V=0;V<L.length;V++){var W=m(L[V]);W.refresh()}}n.refreshShading();var R=i.getFilterText();n.filter(R);i.fixHeight()};function y(){if(jive.model.isEvent(i.getSelectedItem())){var J=h(i.getSelectedItem());for(var I=0;I<J.length;I++){w(J[I],i.getFilterText())}}if(jive.model.isTask(i.getSelectedItem())){var J=m(i.getSelectedItem());w(J,i.getFilterText())}}function C(){var J=o.getSettingsManager().getStartWeekOn();var N=i.getCurrentDate();var O=new Date();O.setTime(N.getTime());O.setHours(17);O.setDate(1);var K=O.getDay();if(J!=0&&K==0){K=7}O.setDate(O.getDate()-K+J);var I=new Date();I.setTime(N.getTime());i.setMinDate(O);while(I.getMonth()<=N.getMonth()&&I.getYear()==N.getYear()||I.getYear()<N.getYear()){var P=new Date();P.setTime(O.getTime());O=P;O.setDate(O.getDate()+1);if(O.getDay()==J){I.setTime(O.getTime())}}var M=new Date();M.setTime(O.getTime());M.setDate(M.getDate()+1);i.setMaxDate(M);var L=new Date();L.setTime(N.getTime());L.setHours(17);i.setCurrentDate(L);v=new Date();z=new Date();v.setTime(i.getMinDate().getTime());z.setTime(i.getMaxDate().getTime());G=true}function t(){var L=o.getSettingsManager().getShowTasks();if(L){var M=o.getCalendarCache().getCalendars();for(var K=0;K<M.length;K++){if(o.isCalendarVisibleHuh(M[K].getId())){var I=c.get(M[K].getId());if($obj(I)){var N=I.toArray();for(var J=0;J<N.length;J++){if($def(N[J].getTask)){jive.ext.x.xDisplayBlock(N[J])}}}}}}else{var N=n.taskDOMHolders.toArray(jive.gui.isMonthTaskDOM);for(var K=0;K<N.length;K++){if($def(N[K].getTask)){jive.ext.x.xDisplayNone(N[K])}}}}var B=new Object();B.eventClicked=function(I){y();var K=h(I);if($obj(K)){for(var J=0;J<K.length;J++){K[J].setAttribute("class","month_day_cell_item_highlight");K[J].className="month_day_cell_item_highlight"}}};B.eventDblClicked=function(I){};B.taskClicked=function(I){y();var J=m(I);if($obj(J)){J.setAttribute("class","month_day_cell_item_highlight");J.className="month_day_cell_item_highlight"}};B.taskDblClicked=function(I){};B.unselectAll=function(){y()};i.addEventListener(B);var B=new jive.model.ProjectCacheListener();B.loadProject=function(J){var K=J.getCheckPoints();for(var I=0;I<K.length;I++){n.addCheckPoint(K[I])}};o.getProjectCache().addListener(B);var B=new jive.model.TaskCacheListener();B.loadTask=function(I){if(I.hasDueDate()){n.addTask(I)}};B.doneLoadingTasks=function(){n.refreshShading()};B.taskChanged=function(I){n.refreshShading()};B.savingTask=function(I){var J=m(I);J.setDisabled(true)};B.doneSavingTask=function(K){p++;n.refreshShading();if(K.hasDueDate()){var L=m(K);L.refresh();L.setDisabled(false)}var J=x.get(K.getID());if(J!=K.getProjectID()){var I=c.get(J);I.clear(K.getID());var I=c.get(K.getProjectID());if(!$obj(I)||I==null){I=new jive.ext.y.HashTable();c.put(K.getProjectID(),I)}I.put(K.getID(),L)}};B.savingTaskFailed=function(I){n.refreshShading();var J=m(I);J.setDisabled(false);J.setChecked(I.getStatus()=="Complete")};B.deletingTask=function(I){n.refreshShading()};B.doneDeletingTask=function(I){n.refreshShading()};B.deletingTaskFailed=function(I){n.refreshShading()};B.deletingTaskSeries=function(I){n.refreshShading()};B.doneDeletingTaskSeries=function(I){n.refreshShading()};B.deletingTaskSeriesFailed=function(I){n.refreshShading()};o.getTaskCache().addListener(B);C();jive.ext.x.xDisplayNone(e)};

jive.gui.MonthDayCell=function(e,c,f,d){var a=new jive.gui.MonthDayGroupedCell(e,c,f,d);var b=a.getDOM();this.getTasks=b.getTasks;b.appendTaskDOM=function(g){var j=g.getTask().getSubject().toLowerCase();for(var h=0;h<b.childNodes.length;h++){if($def(b.childNodes[h].getEvent)){b.insertBefore(g,b.childNodes[h]);break}else{if($def(b.childNodes[h].getTask)){if(b.childNodes[h].getTask().getSubject().toLowerCase()>j){b.insertBefore(g,b.childNodes[h]);break}}}}if(h==b.childNodes.length){b.appendChild(g)}};this.appendTaskDOM=b.appendTaskDOM;b.removeTaskDOM=function(g){b.removeChild(g)};this.removeTaskDOM=b.removeTaskDOM;b.getTasks=function(){var g=b;var j=new Array();for(var h=1;h<g.childNodes.length;h++){if($def(g.childNodes[h].getTask)){j.push(g.childNodes[h].getTask())}}return j};this.getDOM=function(){return b}};

jive.gui.MonthDayGroupedCell=function(g,c,q,i){var e=this;var h;var j=g.getLanguageManager().getActiveLanguage();var p=document.createElement("DIV");var o=i.getDate();if(i.getDate()==1){o=j.shortMonth(i.getMonth())+" "+o}var r=new jive.ext.y.HashTable();var f=new jive.ext.y.HashTable();var b=document.createElement("SPAN");b.getDate=function(t){return function(){return t}}(i);b.setAttribute("class","month_day_cell_number");b.className="month_day_cell_number";var n=document.createElement("SPAN");n.id="add_link";n.setAttribute("class","month_day_cell_number_link");n.className="month_day_cell_number_link";n.appendChild(document.createTextNode("[ + ]"));jive.ext.x.xDisplayNone(n);b.appendChild(n);b.appendChild(document.createTextNode(o));p.appendChild(b);var m=0;var l=document.createElement("DIV");var s=document.createElement("span");l.appendChild(s);s.className="jive-icon-med jive-icon-checkpoint";s.setAttribute("class","jive-icon-med jive-icon-checkpoint");l.href="javascript:;";l.className="jive-cal-checkpoint jiveTT-hover-tasks";l.setAttribute("class","jive-cal-checkpoint jiveTT-hover-tasks");p.appendChild(l);jive.ext.x.xDisplayNone(l);var a=0;var d=document.createElement("DIV");var k=document.createElement("span");d.appendChild(k);k.className="jive-icon-med jive-icon-checkpoint";k.setAttribute("class","jive-icon-med jive-icon-task");d.href="javascript:;";d.className="jiveTT-hover-tasks";d.setAttribute("class","jiveTT-hover-tasks");p.appendChild(d);jive.ext.x.xDisplayNone(d);jive.ext.x.xAddEventListener(d,"mouseover",function(t){return function(B){var y=h.getDOM();while(y.childNodes.length>0){y.removeChild(y.childNodes[0])}var F=document.createElement("strong");var I=(d!=1)?"s":"";var D=new jive.model.DateHelper(g);F.appendChild(document.createTextNode(D.formatToMedDate(e.getDate())+", "+e.getDate().getFullYear()+" - "+a+" task"+I));var C=document.createElement("UL");var x=e.getTasks();for(var A=0;A<x.length;A++){var v=x[A];var H=document.createElement("LI");var E=document.createElement("A");E.className="jiveTT-hover-user jive-username-link";E.href=v.getAssignedTo().getURL();var z=document.createElement("IMG");z.className="jive-avatar";z.setAttribute("class","jive-avatar");z.src=CS_BASE_URL+"/people/"+v.getAssignedTo().getUsername()+"/avatar/22.png";E.appendChild(z);var G=document.createElement("SPAN");var u=document.createElement("A");u.href=v.getAssignedTo().getURL();u.className="jiveTT-hover-user jive-username-link";u.setAttribute("class","jiveTT-hover-user jive-username-link");u.appendChild(document.createTextNode(v.getAssignedTo().getFullName()));jive.ext.x.xAddEventListener(u,"mouseover",function(J){return function(){quickuserprofile.getUserProfileTooltip(J)}}(v.getAssignedTo().getID()));jive.ext.x.xAddEventListener(u,"mouseout",function(){quickuserprofile.cancelTooltip()});var w=document.createElement("A");w.href=v.getURL();w.appendChild(document.createTextNode(v.getSubject()));G.appendChild(w);G.appendChild(document.createTextNode(" : "));G.appendChild(u);H.appendChild(E);H.appendChild(G);C.appendChild(H)}y.appendChild(F);y.appendChild(C)}}(i));jive.ext.x.xAddEventListener(l,"mouseover",function(t){return function(A){var x=h.getDOM();while(x.childNodes.length>0){x.removeChild(x.childNodes[0])}var E=document.createElement("strong");var J=(m!=1)?"s":"";var D=new jive.model.DateHelper(g);E.appendChild(document.createTextNode(D.formatToMedDate(e.getDate())+", "+e.getDate().getFullYear()+" - "+m+" checkpoint"+J));var B=document.createElement("UL");var z=e.getCheckPoints();for(var y=0;y<z.length;y++){var C=z[y];var H=document.createElement("LI");var G=document.createElement("SPAN");G.id="jive-note-checkpoint-body";var u=document.createElement("STRONG");var w=document.createElement("span");u.insert(w);w.className="jive-icon-med jive-icon-checkpoint";w.setAttribute("class","jive-icon-med jive-icon-checkpoint");u.appendChild(document.createTextNode(C.getName()));G.appendChild(u);if(C.getProject().isEditable()){var v=document.createElement("P");var F=document.createElement("A");F.href=CS_BASE_URL+"/edit-checkpoint!input.jspa?project="+C.getProject().getID()+"&checkPointID="+C.getID();F.appendChild(document.createTextNode("Edit"));var I=document.createElement("A");I.href=CS_BASE_URL+"/delete-checkpoint!input.jspa?project="+C.getProject().getID()+"&checkPointID="+C.getID();I.appendChild(document.createTextNode("Delete"));v.appendChild(F);v.appendChild(I);G.appendChild(v)}H.appendChild(G);B.appendChild(H)}x.appendChild(E);x.appendChild(B)}}(i));p.mouseover=function(){if(typeof(jive)!="undefined"){try{if(!p.overed){p.outColor=p.style.backgroundColor}if(!g.isReadOnly()&&q.getItemVisibility()&&q.hasAddView()){jive.ext.x.xDisplayBlock(n)}p.style.backgroundColor=p.overColor;p.overed=true}catch(t){}}};p.mouseout=function(){if(typeof(jive)!="undefined"){try{jive.ext.x.xDisplayNone(n);p.style.backgroundColor=p.outColor;p.overed=false}catch(t){}}};p.updateText=function(){var t=g.getLanguageManager().getActiveLanguage();var v=i.getDate();if(i.getDate()==1){var u=b.childNodes[0];v=t.shortMonth(i.getMonth())+" "+v;while(b.childNodes.length>0){b.removeChild(b.childNodes[0])}b.appendChild(u);b.appendChild(document.createTextNode(v))}};p.getDate=function(t){return function(){return t}}(i);p.dropPoint=function(t,w){if(w!=null){var y=new Date();y.setTime(p.getDate().getTime());y.setHours(w.getHours());y.setMinutes(w.getMinutes());y.setSeconds(w.getSeconds());y.setMilliseconds(w.getMilliseconds());var z=y.getTime()-w.getTime()}if(w!=null&&z!=0&&jive.model.isEvent(t)){var v=new Date();v.setTime(t.getStart().getTime());var x=new Date();x.setTime(t.getEnd().getTime());var u=x.getTime()-v.getTime();v.setTime(v.getTime()+z);x.setTime(v.getTime()+u);t.setStart(v);t.setEnd(x);t.confirm()}else{if((w==null||z!=0)&&jive.model.isTask(t)){if(w!=null){var y=new Date();y.setTime(t.getDueDate().getTime()+z);t.setDueDate(y)}else{var y=new Date();y.setTime(p.getDate().getTime());t.setDueDate(y)}t.confirm()}}};p.appendTaskDOM=function(t){r.put(t.getTask().getID(),t.getTask());h=new JiveProjectTooltip(t.getTask().getProjectID(),"jive-note-checkpoint-body","jive-note-tasks-body","","","","","");jive.ext.x.xAddEventListener(d,"mouseout",h.cancelTooltip);a++;jive.ext.x.xDisplayNone(t);while(d.childNodes.length>1){d.removeChild(d.childNodes[0])}d.appendChild(document.createTextNode(a+" tasks"));jive.ext.x.xDisplayBlock(d)};this.appendTaskDOM=p.appendTaskDOM;p.removeTaskDOM=function(t){r.clear(t.getTask().getID());a--;if(a==0){jive.ext.x.xDisplayNone(d)}};this.removeTaskDOM=p.removeTaskDOM;p.getTasks=function(){return r.toArray(jive.model.isTask)};this.getTasks=p.getTasks;d.getTasks=e.getTasks;p.getCheckPoints=function(){return f.toArray(jive.model.isCheckPoint)};this.getCheckPoints=p.getCheckPoints;l.getCheckPoints=p.getCheckPoints;p.appendEventDOM=function(t){var u=t.getEvent();for(var v=0;v<p.childNodes.length;v++){if($def(p.childNodes[v].getEvent)){if(p.childNodes[v].getEvent().getStart()>u.getStart()){p.insertBefore(t,p.childNodes[v]);break}}}if(v==p.childNodes.length){p.appendChild(t)}};p.appendCheckPointDOM=function(t){f.put(t.getCheckPoint().getID(),t.getCheckPoint());h=new JiveProjectTooltip(t.getCheckPoint().getProject().getID(),"jive-note-checkpoint-body","jive-note-tasks-body","","","","","");jive.ext.x.xAddEventListener(l,"mouseout",h.cancelTooltip);m++;jive.ext.x.xDisplayNone(t);while(l.childNodes.length>1){l.removeChild(l.childNodes[0])}var u=(m!=1)?"s":"";l.appendChild(document.createTextNode(m+" checkpoint"+u));jive.ext.x.xDisplayBlock(l)};p.countVisibleItems=function(){return e.getTasks().length+e.getCheckPoints().length};this.countVisibleItems=p.countVisibleItems;jive.ext.x.xAddEventListener(n,"click",function(t,u){return function(v){t.notifyAddEventClicked(u.getDate());jive.ext.x.xStopPropagation(v)}}(c,b),true);jive.ext.x.xAddEventListener(p,"click",function(t,u){return function(){t.notifyDayClicked(u.getDate())}}(c,b),false);jive.ext.x.xAddEventListener(p,"mouseover",p.mouseover);jive.ext.x.xAddEventListener(p,"mouseout",p.mouseout);this.getDate=p.getDate;this.getDOM=function(){return p}};

jive.gui.BasicGui=function(l){var b=null;var o=new Array();var p=new Array();this.addPriorityEventListener=function(z){p.splice(0,0,z)};this.addEventListener=function(z){p.push(z)};var h=new Date();h.setHours(17);var u=new Date();u.setHours(17);var x=new Date();x.setHours(17);var i=this;var q=false;this.hasInitHuh=function(){return q};var e=document.createElement("DIV");e.className="month_view_very_inner";var m=document.createElement("DIV");m.setAttribute("class","month_view_main");m.className="month_view_main";var s=new jive.gui.SimpleHeader(l);var y=document.createElement("DIV");y.setAttribute("class","month_view_inner");y.className="month_view_inner";var n=true;this.showPrintHuh=function(z){n=z;if(z&&i.getActiveView().hasPrintView()){i.getHeader().showPrintHuh(true)}else{i.getHeader().showPrintHuh(false)}};this.shouldShowPrintHuh=function(){return n};this.setNavFilter=function(z){i.getHeader().setNavFilter(z)};this.showFilterHuh=function(z){i.getHeader().showFilterHuh(z)};this.getFilterText=function(){return i.getHeader().getFilterText()};this.getHeaderFooterHeight=function(){return i.getHeader().getHeight()};var w=function(){};var f=function(){};function d(){return w}function a(){return f}var j=new jive.ext.y.HashTable();this.isViewHuh=function(z){return z!=null&&$obj(z)&&$def(z.isExpandedHuh)};this.addView=function(z){var A=i.getView(z.getName());if(!$obj(A)||A==null){j.put(z.getHash(),z);if(i.hasInitHuh()){z.init(e);z.collapse()}}};this.removeView=function(z){j.clear(z)};this.getAllViews=function(){return j.toArray(i.isViewHuh)};this.getView=function(z){return j.get(z)};this.showView=function(D,C){var A=i.getAllViews();var z=false;for(var B=0;B<A.length;B++){if(A[B].getHash()==C){z=true}}if(!z){return i.showView(D,"month")}for(var B=0;B<A.length;B++){if(A[B].getHash()==C){if(!A[B].isExpandedHuh()){A[B].expand()}if(A[B].hasPrintView()&&n){i.getHeader().showPrintHuh(true)}else{i.getHeader().showPrintHuh(false)}A[B].go(D);i.getHeader().setTitleText(A[B].getHeaderText(D).escapeHTML());w=A[B].getPrevViewFunc();f=A[B].getNextViewFunc();u.setTime(A[B].getMinDate());x.setTime(A[B].getMaxDate());i.notifyTimesChanged(A[B].getMinDate(),A[B].getMaxDate())}else{if(A[B].isExpandedHuh()){A[B].collapse()}}}i.fixHeight()};this.getCurrentDate=function(){var z=new Date();z.setTime(h.getTime());return z};this.setCurrentDate=function(z){h.setTime(z.getTime())};this.notifyPrintClicked=function(A){var B=new Date();B.setTime(A.getTime());for(var z=0;z<o.length;z++){o[z].printClicked(B)}};this.hideArrows=function(){i.getHeader().showArrowsHuh(false)};this.showArrows=function(){i.getHeader().showArrowsHuh(true)};this.ensureMinDate=function(z){if(jive.model.dateLT(z,u)){u.setTime(z.getTime())}};this.ensureMaxDate=function(z){if(jive.model.dateGT(z,x)){x.setTime(z.getTime())}};this.getMinDate=function(){return u};this.setMinDate=function(z){u.setTime(z.getTime())};this.getMaxDate=function(){return x};this.setMaxDate=function(z){x.setTime(z.getTime())};var r=new jive.gui.MiniMonthView(l,i);this.updateText=function(){var A=i.getAllViews();for(var B=0;B<A.length;B++){A[B].updateText()}var z=l.getLanguageManager().getActiveLanguage();i.getHeader().updateText();i.getHeader().setTitleText(i.getActiveView().getHeaderText(i.getCurrentDate()).escapeHTML())};m.appendChild(s.getDOM());m.appendChild(y);y.appendChild(e);this.getDOM=function(){return m};this.getEventsOn=function(z){return i.getView("month").getEventsOn(z)};this.getTasksOn=function(z){return i.getView("month").getTasksOn(z)};this.addEvent=function(A){var z=i.getAllViews();for(var B=0;B<z.length;B++){z[B].addEvent(A)}};this.addTask=function(B){var z=i.getAllViews();for(var A=0;A<z.length;A++){z[A].addTask(B)}};this.removeEvent=function(A){var z=i.getAllViews();for(var B=0;B<z.length;B++){z[B].removeEvent(A)}};this.removeTask=function(B){var z=i.getAllViews();for(var A=0;A<z.length;A++){z[A].removeTask(B)}};this.flushCalendar=function(B){var z=i.getAllViews();for(var A=0;A<z.length;A++){z[A].flushCalendar(B)}};this.flushEvent=function(A){var z=i.getAllViews();for(var B=0;B<z.length;B++){z[B].flushEvent(A)}if(jotlet.model.isEvent(b)&&b.getId()==A.getId()){b=null}};this.flushTask=function(B){var z=i.getAllViews();for(var A=0;A<z.length;A++){z[A].flushTask(B)}if(jotlet.model.isTask(b)&&b.getId()==B.getId()){b=null}};this.refreshWeather=function(){var z=i.getAllViews();for(var A=0;A<z.length;A++){if($def(z[A].refreshWeather)){z[A].refreshWeather()}}};this.refreshShading=function(){var z=i.getAllViews();for(var A=0;A<z.length;A++){if($def(z[A].refreshShading)){z[A].refreshShading()}}};this.getActiveView=function(){var z=i.getAllViews();for(var A=0;A<z.length;A++){if(z[A].isExpandedHuh()){return z[A]}}return i.getView("month")};this.showMonth=function(z){i.showView(z,"month")};this.showWeek=function(z){i.showView(z,"week")};this.showDay=function(z){i.showView(z,"day")};this.showList=function(z){i.showView(z,"list")};this.refresh=function(){var z=i.getAllViews();for(var A=0;A<z.length;A++){if(z[A].isExpandedHuh()){z[A].refresh();i.refreshShading();return}}i.showMonth(i.getCurrentDate());i.refreshShading()};this.fixHeight=function(){try{if(jive.ext.x.xParent(m)!=null){var z=jive.ext.x.xHeight(jive.ext.x.xParent(m))-i.getHeaderFooterHeight();jive.ext.x.xHeight(y,z);i.getView("month").fixHeight(z)}}catch(A){alert(A)}};this.init=function(){q=true;var z=i.getAllViews();for(var A=0;A<z.length;A++){z[A].init(e)}};this.isShowingDay=function(){return i.getView("day").isExpandedHuh()};this.isShowingWeek=function(){return i.getView("week").isExpandedHuh()};this.killYourself=function(){l=null;for(var z=0;z<j.length;z++){j[z].killYourself()}};i.addView(r);this.addListener=function(z){o.push(z)};this.notifyStopDrag=function(A,C,E,F){var D=false;var z=i.getAllViews();for(var B=0;B<z.length;B++){if(z[B].isExpandedHuh()&&$def(z[B].stopDrag)){D=z[B].stopDrag(A,C,E,F)}}if(!D){for(var B=0;B<o.length&&!D;B++){D=o[B].stopDrag(A,C,E,F)}}return D};var t=null;var c=0;this.notifyDragging=function(B,D,E,F){c++;var A=c;var G=false;var z=i.getAllViews();for(var C=0;C<z.length;C++){if(z[C].isExpandedHuh()){if($def(z[C].dragging)){G=z[C].dragging(B,D,E,F)}}}if(!G){for(var C=0;C<o.length&&!G;C++){G=G||o[C].dragging(B,D,E,F)}if(!G){l.hideHover()}}return G};this.notifyDayClicked=function(A){var B=new Date();B.setTime(A.getTime());for(var z=0;z<o.length;z++){o[z].dayClicked(B)}};this.notifyTimesChanged=function(B,A){for(var z=0;z<o.length;z++){o[z].timesChanged(B,A)}};this.notifyQuickAddTask=function(C,B,z){for(var A=0;A<o.length;A++){o[A].quickAddTask(C,B,z)}};this.filter=function(B){var z=i.getAllViews();for(var A=0;A<z.length;A++){if(z[A].isExpandedHuh()){if($def(z[A].filter)){z[A].filter(B)}}}};this.calendarVisible=function(C,B){var z=i.getAllViews();for(var A=0;A<z.length;A++){if($def(z[A].calendarVisible)){z[A].calendarVisible(C,B)}}i.refreshShading()};this.notifyEventClicked=function(z){for(var A=0;A<p.length;A++){p[A].eventClicked(z)}};this.notifyTaskClicked=function(A){try{for(var z=0;z<p.length;z++){p[z].taskClicked(A)}}catch(B){alert(B)}};this.notifyCheckPointClicked=function(B){try{for(var z=0;z<p.length;z++){p[z].checkPointClicked(B)}}catch(A){alert(A)}};this.notifyEventDblClicked=function(z){for(var A=0;A<p.length;A++){p[A].eventDblClicked(z)}};this.notifyTaskDblClicked=function(A){for(var z=0;z<p.length;z++){p[z].taskDblClicked(A)}};this.notifyCheckPointDblClicked=function(A){for(var z=0;z<p.length;z++){p[z].checkPointDblClicked(A)}};this.notifyUnselectAll=function(){for(var z=0;z<p.length;z++){p[z].unselectAll()}};var g=new Array();this.addNavListener=function(z){g.push(z)};this.removeNavListener=function(A){for(var z=0;z<g.length;z++){if(g[z]==A){g.splice(z,1)}}};this.notifyMonthClicked=function(A){for(var z=0;z<g.length;z++){g[z].monthClicked(A)}};this.notifyWeekClicked=function(A){for(var z=0;z<g.length;z++){g[z].weekClicked(A)}};this.notifyDayClicked=function(A){for(var z=0;z<g.length;z++){g[z].dayClicked(A)}};this.notifyListClicked=function(){for(var z=0;z<g.length;z++){g[z].listClicked()}};this.notifyAddEventClicked=function(A){for(var z=0;z<g.length;z++){g[z].addEventClicked(A)}};this.notifyBackClicked=function(){for(var z=0;z<g.length;z++){g[z].backClicked()}};var v=new Object();v.eventClicked=function(z){b=z};v.eventDblClicked=function(z){};v.taskClicked=function(z){b=z};v.taskDblClicked=function(z){};v.checkPointClicked=function(z){b=z};v.checkPointDblClicked=function(z){};v.unselectAll=function(){b=null};this.addEventListener(v);this.unselectAll=function(){i.notifyUnselectAll()};this.getSelectedItem=function(){return b};var k=new Object();k.printClicked=function(A,z){return function(){A(z())}}(i.notifyPrintClicked,i.getCurrentDate);k.leftClicked=function(z){return function(){var A=z();A()}}(d);k.rightClicked=function(z){return function(){var A=z();A()}}(a);k.searchByText=function(B){var z=i.getAllViews();for(var A=0;A<z.length;A++){if($def(z[A].filter)){z[A].filter(B)}}};s.addListener(k);this.setHeader=function(z){m.removeChild(s.getDOM());s.killYourself();s=z;s.addListener(k);m.insertBefore(s.getDOM(),y)};this.getHeader=function(){return s}};

jive.gui.SimpleHeader=function(b,e){var d;if($obj(e)){d=e}else{d=this}var g=document.createElement("DIV");g.setAttribute("class","month_view_header_button_wrap");g.className="month_view_header_button_wrap";var c=document.createElement("DIV");c.setAttribute("class","month_view_header color_header");c.className="month_view_header color_header";c.appendChild(document.createElement("DIV"));var a=document.createElement("span");a.setAttribute("class","month_view_header_link");a.className="month_view_header_link";g.appendChild(a);a.appendChild(document.createTextNode("<"));var h=document.createElement("span");h.setAttribute("class","month_view_float_r month_view_header_link");h.className="month_view_float_r month_view_header_link";h.appendChild(document.createTextNode(">"));g.appendChild(h);var i=document.createElement("SPAN");i.setAttribute("class","month_view_headerc");i.className="month_view_headerc";g.appendChild(i);c.appendChild(g);jive.ext.x.xDisplayBlock(c);this.getDOM=function(){return c};this.showArrowsHuh=function(j){if(j){jive.ext.x.xDisplayBlock(a);jive.ext.x.xShow(h)}else{jive.ext.x.xDisplayNone(a);jive.ext.x.xHide(h)}};this.showPrintHuh=function(j){};this.showFilterHuh=function(j){};this.getHeight=function(){return(jive.ext.x.xDisplay(c)=="block")?jive.ext.x.xHeight(c):0};this.setTitleText=function(j){while(i.childNodes.length>0){i.removeChild(i.childNodes[0])}i.appendChild(document.createTextNode(j))};this.setNavFilter=function(j){};this.updateText=function(){};this.getFilterText=function(){return""};var f=new Array();this.addListener=function(j){f.push(j)};this.notifyPrintClicked=function(){for(var j=0;j<f.length;j++){f[j].printClicked()}};this.notifyLeftClicked=function(){for(var j=0;j<f.length;j++){f[j].leftClicked()}};this.notifyRightClicked=function(){for(var j=0;j<f.length;j++){f[j].rightClicked()}};this.notifySearchByText=function(k){for(var j=0;j<f.length;j++){f[j].searchByText(k)}};jive.ext.x.xAddEventListener(a,"click",function(j){return function(){j.notifyLeftClicked()}}(d));jive.ext.x.xAddEventListener(h,"click",function(j){return function(){j.notifyRightClicked()}}(d));this.killYourself=function(){}};

jive.gui.NullHeader=function(c){var b=this;var d=document.createElement("DIV");jive.ext.x.xDisplayNone(d);this.getDOM=function(){return d};this.showArrowsHuh=function(e){};this.showPrintHuh=function(e){};this.showFilterHuh=function(e){};this.getHeight=function(){return 0};this.setTitleText=function(e){};this.setNavFilter=function(e){};this.updateText=function(){};this.getFilterText=function(){return""};var a=new Array();this.addListener=function(e){a.push(e)};this.notifyPrintClicked=function(){for(var e=0;e<a.length;e++){a[e].printClicked()}};this.notifyLeftClicked=function(){for(var e=0;e<a.length;e++){a[e].leftClicked()}};this.notifyRightClicked=function(){for(var e=0;e<a.length;e++){a[e].rightClicked()}};this.notifySearchByText=function(f){for(var e=0;e<a.length;e++){a[e].searchByText(f)}};this.killYourself=function(){}};

var pc=navigator.userAgent.toLowerCase();var ie4_win=(pc.indexOf("win")!=-1)&&(pc.indexOf("msie")!=-1)&&(parseInt(navigator.appVersion)>=4);var is_gecko=pc.indexOf("gecko/")!=-1&&parseFloat(pc.substring(pc.indexOf("gecko/")+6,pc.indexOf("gecko/")+14))>20030108;function styleTag(m,d,h){var e=0;var c=h.scrollTop;var a;if(document.selection){if(document.selection.createRange().parentElement().tagName=="TEXTAREA"){var f=document.selection.createRange().text;e=getSelectionRangeEnd(h);a=_markupText(f,m,d);document.selection.createRange().text=a[0];e+=a[1]}}else{if(typeof(h.selectionStart)!="undefined"&&typeof(h.selectionEnd)!="undefined"){if(h.selectionStart==h.selectionEnd){return}var g=h.textLength;var b=h.selectionStart;var i=h.selectionEnd;if(i==1||i==2){i=g}var l=(h.value).substring(0,b);var k=(h.value).substring(b,i);var j=(h.value).substring(i,g);a=_markupText(k,m,d);h.value=l+a[0]+j;e=i+a[1]}else{return}}if(e>0){setCaretTo(h,e,c)}}function _markupText(k,n,e){var a=trimLeadingSpace(k);k=a[0];var j=a[1];a=trimTrailingSpace(k);k=a[0];var f=a[1];var d=0;if(k.indexOf("\n")>0){var m=k.split("\n");var h="";for(var g=0;g<m.length;g++){var l=m[g];a=trimLeadingSpace(l);l=a[0];var c=a[1];a=trimTrailingSpace(l);l=a[0];var b=a[1];if(l==""){h+=c+l+b}else{h+=c+n+l+e+b;d+=(n.length+e.length)}if(g<m.length-1){h+="\n"}}k=j+h+f}else{k=j+n+k+e+f}a=new Array(2);a[0]=k;a[1]=d;return a}function trimLeadingSpace(c){var b="";while(c.length>0&&(c.charAt(0)==" "||c.charAt(0)=="\n"||c.charAt(0)=="\r")){b+=c.charAt(0);c=c.substring(1)}var a=new Array(2);a[0]=c;a[1]=b;return a}function trimTrailingSpace(c){var b="";while(c.length>0&&(c.charAt(c.length-1)==" "||c.charAt(c.length-1)=="\n"||c.charAt(c.length-1)=="\r")){b+=c.charAt(c.length-1);c=c.substring(0,c.length-1)}var a=new Array(2);a[0]=c;a[1]=b;return a}function getSelectionRangeText(b){if(document.selection){return document.selection.createRange().text}else{if(is_gecko){var c=b.selectionStart;var a=b.selectionEnd;return b.value.substr(c,a-c)}else{return""}}}function getSelectionRangeEnd(b){if(document.selection){var a=document.selection.createRange();var c=a.duplicate();c.moveToElementText(b);c.setEndPoint("EndToEnd",a);var d=c.text.length-a.text.length;return d+a.text.length}else{if(is_gecko){return b.selectionEnd}else{return 0}}}function setCaretTo(b,g,e){b.focus();if(b.createTextRange){var c=0;var d=0;var f=b.value;while(c>-1&&c<g){c=f.indexOf("\r\n",c);if(c>=0){d++;c+=2}}if(d>1){d--}var a=b.createTextRange();a.move("character",(g-d));a.select()}else{if(b.selectionStart){b.setSelectionRange(g,g)}}if(e>0){b.scrollTop=e}}function caret(a){if(ie4_win&&a.createTextRange&&document.selection.createRange().parentElement().tagName=="TEXTAREA"){a.caretPos=document.selection.createRange().duplicate()}}function funcname(b){var a=b.toString().match(/function (\w*)/)[1];if((a==null)||(a.length==0)){return"anonymous"}return a}function stacktrace(){var c="";for(var b=arguments.caller;b!=null;b=b.caller){c+=funcname(b.callee)+"\n";if(b.caller==b){break}}return c}function printStackTrace(){alert("stack trace is "+stacktrace())};

var Prototype={Version:"1.6.0.2",Browser:{IE:!!(window.attachEvent&&!window.opera),Opera:!!window.opera,WebKit:navigator.userAgent.indexOf("AppleWebKit/")>-1,Gecko:navigator.userAgent.indexOf("Gecko")>-1&&navigator.userAgent.indexOf("KHTML")==-1,MobileSafari:!!navigator.userAgent.match(/Apple.*Mobile.*Safari/)},BrowserFeatures:{XPath:!!document.evaluate,ElementExtensions:!!window.HTMLElement,SpecificElementExtensions:document.createElement("div").__proto__&&document.createElement("div").__proto__!==document.createElement("form").__proto__},ScriptFragment:"<script[^>]*>([\\S\\s]*?)<\/script>",JSONFilter:/^\/\*-secure-([\s\S]*)\*\/\s*$/,emptyFunction:function(){},K:function(a){return a}};if(Prototype.Browser.MobileSafari){Prototype.BrowserFeatures.SpecificElementExtensions=false}var Class={create:function(){var e=null,d=$A(arguments);if(Object.isFunction(d[0])){e=d.shift()}function a(){this.initialize.apply(this,arguments)}Object.extend(a,Class.Methods);a.superclass=e;a.subclasses=[];if(e){var b=function(){};b.prototype=e.prototype;a.prototype=new b;e.subclasses.push(a)}for(var c=0;c<d.length;c++){a.addMethods(d[c])}if(!a.prototype.initialize){a.prototype.initialize=Prototype.emptyFunction}a.prototype.constructor=a;return a}};Class.Methods={addMethods:function(g){var c=this.superclass&&this.superclass.prototype;var b=Object.keys(g);if(!Object.keys({toString:true}).length){b.push("toString","valueOf")}for(var a=0,d=b.length;a<d;a++){var f=b[a],e=g[f];if(c&&Object.isFunction(e)&&e.argumentNames().first()=="$super"){var h=e,e=Object.extend((function(i){return function(){return c[i].apply(this,arguments)}})(f).wrap(h),{valueOf:function(){return h},toString:function(){return h.toString()}})}this.prototype[f]=e}return this}};var Abstract={};Object.extend=function(a,c){for(var b in c){a[b]=c[b]}return a};Object.extend(Object,{inspect:function(a){try{if(Object.isUndefined(a)){return"undefined"}if(a===null){return"null"}return a.inspect?a.inspect():String(a)}catch(b){if(b instanceof RangeError){return"..."}throw b}},toJSON:function(a){var c=typeof a;switch(c){case"undefined":case"function":case"unknown":return;case"boolean":return a.toString()}if(a===null){return"null"}if(a.toJSON){return a.toJSON()}if(Object.isElement(a)){return}var b=[];for(var e in a){var d=Object.toJSON(a[e]);if(!Object.isUndefined(d)){b.push(e.toJSON()+": "+d)}}return"{"+b.join(", ")+"}"},toQueryString:function(a){return $H(a).toQueryString()},toHTML:function(a){return a&&a.toHTML?a.toHTML():String.interpret(a)},keys:function(a){var b=[];for(var c in a){b.push(c)}return b},values:function(b){var a=[];for(var c in b){a.push(b[c])}return a},clone:function(a){return Object.extend({},a)},isElement:function(a){return a&&a.nodeType==1},isArray:function(a){return a!=null&&typeof a=="object"&&"splice" in a&&"join" in a},isHash:function(a){return a instanceof Hash},isFunction:function(a){return typeof a=="function"},isString:function(a){return typeof a=="string"},isNumber:function(a){return typeof a=="number"},isUndefined:function(a){return typeof a=="undefined"}});Object.extend(Function.prototype,{argumentNames:function(){var a=this.toString().match(/^[\s\(]*function[^(]*\((.*?)\)/)[1].split(",").invoke("strip");return a.length==1&&!a[0]?[]:a},bind:function(){if(arguments.length<2&&Object.isUndefined(arguments[0])){return this}var a=this,c=$A(arguments),b=c.shift();return function(){return a.apply(b,c.concat($A(arguments)))}},bindAsEventListener:function(){var a=this,c=$A(arguments),b=c.shift();return function(d){return a.apply(b,[d||window.event].concat(c))}},curry:function(){if(!arguments.length){return this}var a=this,b=$A(arguments);return function(){return a.apply(this,b.concat($A(arguments)))}},delay:function(){var a=this,b=$A(arguments),c=b.shift()*1000;return window.setTimeout(function(){return a.apply(a,b)},c)},wrap:function(b){var a=this;return function(){return b.apply(this,[a.bind(this)].concat($A(arguments)))}},methodize:function(){if(this._methodized){return this._methodized}var a=this;return this._methodized=function(){return a.apply(null,[this].concat($A(arguments)))}}});Function.prototype.defer=Function.prototype.delay.curry(0.01);Date.prototype.toJSON=function(){return'"'+this.getUTCFullYear()+"-"+(this.getUTCMonth()+1).toPaddedString(2)+"-"+this.getUTCDate().toPaddedString(2)+"T"+this.getUTCHours().toPaddedString(2)+":"+this.getUTCMinutes().toPaddedString(2)+":"+this.getUTCSeconds().toPaddedString(2)+'Z"'};var Try={these:function(){var c;for(var b=0,d=arguments.length;b<d;b++){var a=arguments[b];try{c=a();break}catch(f){}}return c}};RegExp.prototype.match=RegExp.prototype.test;RegExp.escape=function(a){return String(a).replace(/([.*+?^=!:${}()|[\]\/\\])/g,"\\$1")};var PeriodicalExecuter=Class.create({initialize:function(b,a){this.callback=b;this.frequency=a;this.currentlyExecuting=false;this.registerCallback()},registerCallback:function(){this.timer=setInterval(this.onTimerEvent.bind(this),this.frequency*1000)},execute:function(){this.callback(this)},stop:function(){if(!this.timer){return}clearInterval(this.timer);this.timer=null},onTimerEvent:function(){if(!this.currentlyExecuting){try{this.currentlyExecuting=true;this.execute()}finally{this.currentlyExecuting=false}}}});Object.extend(String,{interpret:function(a){return a==null?"":String(a)},specialChar:{"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r","\\":"\\\\"}});Object.extend(String.prototype,{gsub:function(e,c){var a="",d=this,b;c=arguments.callee.prepareReplacement(c);while(d.length>0){if(b=d.match(e)){a+=d.slice(0,b.index);a+=String.interpret(c(b));d=d.slice(b.index+b[0].length)}else{a+=d,d=""}}return a},sub:function(c,a,b){a=this.gsub.prepareReplacement(a);b=Object.isUndefined(b)?1:b;return this.gsub(c,function(d){if(--b<0){return d[0]}return a(d)})},scan:function(b,a){this.gsub(b,a);return String(this)},truncate:function(b,a){b=b||30;a=Object.isUndefined(a)?"...":a;return this.length>b?this.slice(0,b-a.length)+a:String(this)},strip:function(){return this.replace(/^\s+/,"").replace(/\s+$/,"")},stripTags:function(){return this.replace(/<\/?[^>]+>/gi,"")},stripScripts:function(){return this.replace(new RegExp(Prototype.ScriptFragment,"img"),"")},extractScripts:function(){var b=new RegExp(Prototype.ScriptFragment,"img");var a=new RegExp(Prototype.ScriptFragment,"im");return(this.match(b)||[]).map(function(c){return(c.match(a)||["",""])[1]})},evalScripts:function(){return this.extractScripts().map(function(script){return eval(script)})},escapeHTML:function(){var a=arguments.callee;a.text.data=this;return a.div.innerHTML},unescapeHTML:function(){var a=new Element("div");a.innerHTML=this.stripTags();return a.childNodes[0]?(a.childNodes.length>1?$A(a.childNodes).inject("",function(b,c){return b+c.nodeValue}):a.childNodes[0].nodeValue):""},toQueryParams:function(b){var a=this.strip().match(/([^?#]*)(#.*)?$/);if(!a){return{}}return a[1].split(b||"&").inject({},function(e,f){if((f=f.split("="))[0]){var c=decodeURIComponent(f.shift());var d=f.length>1?f.join("="):f[0];if(d!=undefined){d=decodeURIComponent(d)}if(c in e){if(!Object.isArray(e[c])){e[c]=[e[c]]}e[c].push(d)}else{e[c]=d}}return e})},toArray:function(){return this.split("")},succ:function(){return this.slice(0,this.length-1)+String.fromCharCode(this.charCodeAt(this.length-1)+1)},times:function(a){return a<1?"":new Array(a+1).join(this)},camelize:function(){var d=this.split("-"),a=d.length;if(a==1){return d[0]}var c=this.charAt(0)=="-"?d[0].charAt(0).toUpperCase()+d[0].substring(1):d[0];for(var b=1;b<a;b++){c+=d[b].charAt(0).toUpperCase()+d[b].substring(1)}return c},capitalize:function(){return this.charAt(0).toUpperCase()+this.substring(1).toLowerCase()},underscore:function(){return this.gsub(/::/,"/").gsub(/([A-Z]+)([A-Z][a-z])/,"#{1}_#{2}").gsub(/([a-z\d])([A-Z])/,"#{1}_#{2}").gsub(/-/,"_").toLowerCase()},dasherize:function(){return this.gsub(/_/,"-")},inspect:function(b){var a=this.gsub(/[\x00-\x1f\\]/,function(c){var d=String.specialChar[c[0]];return d?d:"\\u00"+c[0].charCodeAt().toPaddedString(2,16)});if(b){return'"'+a.replace(/"/g,'\\"')+'"'}return"'"+a.replace(/'/g,"\\'")+"'"},toJSON:function(){return this.inspect(true)},unfilterJSON:function(a){return this.sub(a||Prototype.JSONFilter,"#{1}")},isJSON:function(){var a=this;if(a.blank()){return false}a=this.replace(/\\./g,"@").replace(/"[^"\\\n\r]*"/g,"");return(/^[,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t]*$/).test(a)},evalJSON:function(sanitize){var json=this.unfilterJSON();try{if(!sanitize||json.isJSON()){return eval("("+json+")")}}catch(e){}throw new SyntaxError("Badly formed JSON string: "+this.inspect())},include:function(a){return this.indexOf(a)>-1},startsWith:function(a){return this.indexOf(a)===0},endsWith:function(a){var b=this.length-a.length;return b>=0&&this.lastIndexOf(a)===b},empty:function(){return this==""},blank:function(){return/^\s*$/.test(this)},interpolate:function(a,b){return new Template(this,b).evaluate(a)}});if(Prototype.Browser.WebKit||Prototype.Browser.IE){Object.extend(String.prototype,{escapeHTML:function(){return this.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;")},unescapeHTML:function(){return this.replace(/&amp;/g,"&").replace(/&lt;/g,"<").replace(/&gt;/g,">")}})}String.prototype.gsub.prepareReplacement=function(b){if(Object.isFunction(b)){return b}var a=new Template(b);return function(c){return a.evaluate(c)}};String.prototype.parseQuery=String.prototype.toQueryParams;Object.extend(String.prototype.escapeHTML,{div:document.createElement("div"),text:document.createTextNode("")});with(String.prototype.escapeHTML){div.appendChild(text)}var Template=Class.create({initialize:function(a,b){this.template=a.toString();this.pattern=b||Template.Pattern},evaluate:function(a){if(Object.isFunction(a.toTemplateReplacements)){a=a.toTemplateReplacements()}return this.template.gsub(this.pattern,function(d){if(a==null){return""}var f=d[1]||"";if(f=="\\"){return d[2]}var b=a,g=d[3];var e=/^([^.[]+|\[((?:.*?[^\\])?)\])(\.|\[|$)/;d=e.exec(g);if(d==null){return f}while(d!=null){var c=d[1].startsWith("[")?d[2].gsub("\\\\]","]"):d[1];b=b[c];if(null==b||""==d[3]){break}g=g.substring("["==d[3]?d[1].length:d[0].length);d=e.exec(g)}return f+String.interpret(b)})}});Template.Pattern=/(^|.|\r|\n)(#\{(.*?)\})/;var $break={};var Enumerable={each:function(c,b){var a=0;c=c.bind(b);try{this._each(function(e){c(e,a++)})}catch(d){if(d!=$break){throw d}}return this},eachSlice:function(d,c,b){c=c?c.bind(b):Prototype.K;var a=-d,e=[],f=this.toArray();while((a+=d)<f.length){e.push(f.slice(a,a+d))}return e.collect(c,b)},all:function(c,b){c=c?c.bind(b):Prototype.K;var a=true;this.each(function(e,d){a=a&&!!c(e,d);if(!a){throw $break}});return a},any:function(c,b){c=c?c.bind(b):Prototype.K;var a=false;this.each(function(e,d){if(a=!!c(e,d)){throw $break}});return a},collect:function(c,b){c=c?c.bind(b):Prototype.K;var a=[];this.each(function(e,d){a.push(c(e,d))});return a},detect:function(c,b){c=c.bind(b);var a;this.each(function(e,d){if(c(e,d)){a=e;throw $break}});return a},findAll:function(c,b){c=c.bind(b);var a=[];this.each(function(e,d){if(c(e,d)){a.push(e)}});return a},grep:function(d,c,b){c=c?c.bind(b):Prototype.K;var a=[];if(Object.isString(d)){d=new RegExp(d)}this.each(function(f,e){if(d.match(f)){a.push(c(f,e))}});return a},include:function(a){if(Object.isFunction(this.indexOf)){if(this.indexOf(a)!=-1){return true}}var b=false;this.each(function(c){if(c==a){b=true;throw $break}});return b},inGroupsOf:function(b,a){a=Object.isUndefined(a)?null:a;return this.eachSlice(b,function(c){while(c.length<b){c.push(a)}return c})},inject:function(a,c,b){c=c.bind(b);this.each(function(e,d){a=c(a,e,d)});return a},invoke:function(b){var a=$A(arguments).slice(1);return this.map(function(c){return c[b].apply(c,a)})},max:function(c,b){c=c?c.bind(b):Prototype.K;var a;this.each(function(e,d){e=c(e,d);if(a==null||e>=a){a=e}});return a},min:function(c,b){c=c?c.bind(b):Prototype.K;var a;this.each(function(e,d){e=c(e,d);if(a==null||e<a){a=e}});return a},partition:function(d,b){d=d?d.bind(b):Prototype.K;var c=[],a=[];this.each(function(f,e){(d(f,e)?c:a).push(f)});return[c,a]},pluck:function(b){var a=[];this.each(function(c){a.push(c[b])});return a},reject:function(c,b){c=c.bind(b);var a=[];this.each(function(e,d){if(!c(e,d)){a.push(e)}});return a},sortBy:function(b,a){b=b.bind(a);return this.map(function(d,c){return{value:d,criteria:b(d,c)}}).sort(function(f,e){var d=f.criteria,c=e.criteria;return d<c?-1:d>c?1:0}).pluck("value")},toArray:function(){return this.map()},zip:function(){var b=Prototype.K,a=$A(arguments);if(Object.isFunction(a.last())){b=a.pop()}var c=[this].concat(a).map($A);return this.map(function(e,d){return b(c.pluck(d))})},size:function(){return this.toArray().length},inspect:function(){return"#<Enumerable:"+this.toArray().inspect()+">"}};Object.extend(Enumerable,{map:Enumerable.collect,find:Enumerable.detect,select:Enumerable.findAll,filter:Enumerable.findAll,member:Enumerable.include,entries:Enumerable.toArray,every:Enumerable.all,some:Enumerable.any});function $A(c){if(!c){return[]}if(c.toArray){return c.toArray()}var b=c.length||0,a=new Array(b);while(b--){a[b]=c[b]}return a}if(Prototype.Browser.WebKit){$A=function(c){if(!c){return[]}if(!(Object.isFunction(c)&&c=="[object NodeList]")&&c.toArray){return c.toArray()}var b=c.length||0,a=new Array(b);while(b--){a[b]=c[b]}return a}}Array.from=$A;Object.extend(Array.prototype,Enumerable);if(!Array.prototype._reverse){Array.prototype._reverse=Array.prototype.reverse}Object.extend(Array.prototype,{_each:function(b){for(var a=0,c=this.length;a<c;a++){b(this[a])}},clear:function(){this.length=0;return this},first:function(){return this[0]},last:function(){return this[this.length-1]},compact:function(){return this.select(function(a){return a!=null})},flatten:function(){return this.inject([],function(b,a){return b.concat(Object.isArray(a)?a.flatten():[a])})},without:function(){var a=$A(arguments);return this.select(function(b){return !a.include(b)})},reverse:function(a){return(a!==false?this:this.toArray())._reverse()},reduce:function(){return this.length>1?this:this[0]},uniq:function(a){return this.inject([],function(d,c,b){if(0==b||(a?d.last()!=c:!d.include(c))){d.push(c)}return d})},intersect:function(a){return this.uniq().findAll(function(b){return a.detect(function(c){return b===c})})},clone:function(){return[].concat(this)},size:function(){return this.length},inspect:function(){return"["+this.map(Object.inspect).join(", ")+"]"},toJSON:function(){var a=[];this.each(function(b){var c=Object.toJSON(b);if(!Object.isUndefined(c)){a.push(c)}});return"["+a.join(", ")+"]"}});if(Object.isFunction(Array.prototype.forEach)){Array.prototype._each=Array.prototype.forEach}if(!Array.prototype.indexOf){Array.prototype.indexOf=function(c,a){a||(a=0);var b=this.length;if(a<0){a=b+a}for(;a<b;a++){if(this[a]===c){return a}}return -1}}if(!Array.prototype.lastIndexOf){Array.prototype.lastIndexOf=function(b,a){a=isNaN(a)?this.length:(a<0?this.length+a:a)+1;var c=this.slice(0,a).reverse().indexOf(b);return(c<0)?c:a-c-1}}Array.prototype.toArray=Array.prototype.clone;function $w(a){if(!Object.isString(a)){return[]}a=a.strip();return a?a.split(/\s+/):[]}if(Prototype.Browser.Opera){Array.prototype.concat=function(){var e=[];for(var b=0,c=this.length;b<c;b++){e.push(this[b])}for(var b=0,c=arguments.length;b<c;b++){if(Object.isArray(arguments[b])){for(var a=0,d=arguments[b].length;a<d;a++){e.push(arguments[b][a])}}else{e.push(arguments[b])}}return e}}Object.extend(Number.prototype,{toColorPart:function(){return this.toPaddedString(2,16)},succ:function(){return this+1},times:function(a){$R(0,this,true).each(a);return this},toPaddedString:function(c,b){var a=this.toString(b||10);return"0".times(c-a.length)+a},toJSON:function(){return isFinite(this)?this.toString():"null"}});$w("abs round ceil floor").each(function(a){Number.prototype[a]=Math[a].methodize()});function $H(a){return new Hash(a)}var Hash=Class.create(Enumerable,(function(){function a(b,c){if(Object.isUndefined(c)){return b}return b+"="+encodeURIComponent(String.interpret(c))}return{initialize:function(b){this._object=Object.isHash(b)?b.toObject():Object.clone(b)},_each:function(c){for(var b in this._object){var d=this._object[b],e=[b,d];e.key=b;e.value=d;c(e)}},set:function(b,c){return this._object[b]=c},get:function(b){return this._object[b]},unset:function(b){var c=this._object[b];delete this._object[b];return c},toObject:function(){return Object.clone(this._object)},keys:function(){return this.pluck("key")},values:function(){return this.pluck("value")},index:function(c){var b=this.detect(function(d){return d.value===c});return b&&b.key},merge:function(b){return this.clone().update(b)},update:function(b){return new Hash(b).inject(this,function(c,d){c.set(d.key,d.value);return c})},toQueryString:function(){return this.map(function(d){var c=encodeURIComponent(d.key),b=d.value;if(b&&typeof b=="object"){if(Object.isArray(b)){return b.map(a.curry(c)).join("&")}}return a(c,b)}).join("&")},inspect:function(){return"#<Hash:{"+this.map(function(b){return b.map(Object.inspect).join(": ")}).join(", ")+"}>"},toJSON:function(){return Object.toJSON(this.toObject())},clone:function(){return new Hash(this)}}})());Hash.prototype.toTemplateReplacements=Hash.prototype.toObject;Hash.from=$H;var ObjectRange=Class.create(Enumerable,{initialize:function(c,a,b){this.start=c;this.end=a;this.exclusive=b},_each:function(a){var b=this.start;while(this.include(b)){a(b);b=b.succ()}},include:function(a){if(a<this.start){return false}if(this.exclusive){return a<this.end}return a<=this.end}});var $R=function(c,a,b){return new ObjectRange(c,a,b)};var Ajax={getTransport:function(){return Try.these(function(){return new XMLHttpRequest()},function(){return new ActiveXObject("Msxml2.XMLHTTP")},function(){return new ActiveXObject("Microsoft.XMLHTTP")})||false},activeRequestCount:0};Ajax.Responders={responders:[],_each:function(a){this.responders._each(a)},register:function(a){if(!this.include(a)){this.responders.push(a)}},unregister:function(a){this.responders=this.responders.without(a)},dispatch:function(d,b,c,a){this.each(function(f){if(Object.isFunction(f[d])){try{f[d].apply(f,[b,c,a])}catch(g){}}})}};Object.extend(Ajax.Responders,Enumerable);Ajax.Responders.register({onCreate:function(){Ajax.activeRequestCount++},onComplete:function(){Ajax.activeRequestCount--}});Ajax.Base=Class.create({initialize:function(a){this.options={method:"post",asynchronous:true,contentType:"application/x-www-form-urlencoded",encoding:"UTF-8",parameters:"",evalJSON:true,evalJS:true};Object.extend(this.options,a||{});this.options.method=this.options.method.toLowerCase();if(Object.isString(this.options.parameters)){this.options.parameters=this.options.parameters.toQueryParams()}else{if(Object.isHash(this.options.parameters)){this.options.parameters=this.options.parameters.toObject()}}}});Ajax.Request=Class.create(Ajax.Base,{_complete:false,initialize:function($super,b,a){$super(a);this.transport=Ajax.getTransport();this.request(b)},request:function(b){this.url=b;this.method=this.options.method;var d=Object.clone(this.options.parameters);if(!["get","post"].include(this.method)){d._method=this.method;this.method="post"}this.parameters=d;if(d=Object.toQueryString(d)){if(this.method=="get"){this.url+=(this.url.include("?")?"&":"?")+d}else{if(/Konqueror|Safari|KHTML/.test(navigator.userAgent)){d+="&_="}}}try{var a=new Ajax.Response(this);if(this.options.onCreate){this.options.onCreate(a)}Ajax.Responders.dispatch("onCreate",this,a);this.transport.open(this.method.toUpperCase(),this.url,this.options.asynchronous);if(this.options.asynchronous){this.respondToReadyState.bind(this).defer(1)}this.transport.onreadystatechange=this.onStateChange.bind(this);this.setRequestHeaders();this.body=this.method=="post"?(this.options.postBody||d):null;this.transport.send(this.body);if(!this.options.asynchronous&&this.transport.overrideMimeType){this.onStateChange()}}catch(c){this.dispatchException(c)}},onStateChange:function(){var a=this.transport.readyState;if(a>1&&!((a==4)&&this._complete)){this.respondToReadyState(this.transport.readyState)}},setRequestHeaders:function(){var e={"X-Requested-With":"XMLHttpRequest","X-Prototype-Version":Prototype.Version,Accept:"text/javascript, text/html, application/xml, text/xml, */*"};if(this.method=="post"){e["Content-type"]=this.options.contentType+(this.options.encoding?"; charset="+this.options.encoding:"");if(this.transport.overrideMimeType&&(navigator.userAgent.match(/Gecko\/(\d{4})/)||[0,2005])[1]<2005){e.Connection="close"}}if(typeof this.options.requestHeaders=="object"){var c=this.options.requestHeaders;if(Object.isFunction(c.push)){for(var b=0,d=c.length;b<d;b+=2){e[c[b]]=c[b+1]}}else{$H(c).each(function(f){e[f.key]=f.value})}}for(var a in e){this.transport.setRequestHeader(a,e[a])}},success:function(){var a=this.getStatus();return !a||(a>=200&&a<300)},getStatus:function(){try{return this.transport.status||0}catch(a){return 0}},respondToReadyState:function(a){var c=Ajax.Request.Events[a],b=new Ajax.Response(this);if(c=="Complete"){try{this._complete=true;(this.options["on"+b.status]||this.options["on"+(this.success()?"Success":"Failure")]||Prototype.emptyFunction)(b,b.headerJSON)}catch(d){this.dispatchException(d)}var f=b.getHeader("Content-type");if(this.options.evalJS=="force"||(this.options.evalJS&&this.isSameOrigin()&&f&&f.match(/^\s*(text|application)\/(x-)?(java|ecma)script(;.*)?\s*$/i))){this.evalResponse()}}try{(this.options["on"+c]||Prototype.emptyFunction)(b,b.headerJSON);Ajax.Responders.dispatch("on"+c,this,b,b.headerJSON)}catch(d){this.dispatchException(d)}if(c=="Complete"){this.transport.onreadystatechange=Prototype.emptyFunction}},isSameOrigin:function(){var a=this.url.match(/^\s*https?:\/\/[^\/]*/);return !a||(a[0]=="#{protocol}//#{domain}#{port}".interpolate({protocol:location.protocol,domain:document.domain,port:location.port?":"+location.port:""}))},getHeader:function(a){try{return this.transport.getResponseHeader(a)||null}catch(b){return null}},evalResponse:function(){try{return eval((this.transport.responseText||"").unfilterJSON())}catch(e){this.dispatchException(e)}},dispatchException:function(a){(this.options.onException||Prototype.emptyFunction)(this,a);Ajax.Responders.dispatch("onException",this,a)}});Ajax.Request.Events=["Uninitialized","Loading","Loaded","Interactive","Complete"];Ajax.Response=Class.create({initialize:function(c){this.request=c;var d=this.transport=c.transport,a=this.readyState=d.readyState;if((a>2&&!Prototype.Browser.IE)||a==4){this.status=this.getStatus();this.statusText=this.getStatusText();this.responseText=String.interpret(d.responseText);this.headerJSON=this._getHeaderJSON()}if(a==4){var b=d.responseXML;this.responseXML=Object.isUndefined(b)?null:b;this.responseJSON=this._getResponseJSON()}},status:0,statusText:"",getStatus:Ajax.Request.prototype.getStatus,getStatusText:function(){try{return this.transport.statusText||""}catch(a){return""}},getHeader:Ajax.Request.prototype.getHeader,getAllHeaders:function(){try{return this.getAllResponseHeaders()}catch(a){return null}},getResponseHeader:function(a){return this.transport.getResponseHeader(a)},getAllResponseHeaders:function(){return this.transport.getAllResponseHeaders()},_getHeaderJSON:function(){var a=this.getHeader("X-JSON");if(!a){return null}a=decodeURIComponent(escape(a));try{return a.evalJSON(this.request.options.sanitizeJSON||!this.request.isSameOrigin())}catch(b){this.request.dispatchException(b)}},_getResponseJSON:function(){var a=this.request.options;if(!a.evalJSON||(a.evalJSON!="force"&&!(this.getHeader("Content-type")||"").include("application/json"))||this.responseText.blank()){return null}try{return this.responseText.evalJSON(a.sanitizeJSON||!this.request.isSameOrigin())}catch(b){this.request.dispatchException(b)}}});Ajax.Updater=Class.create(Ajax.Request,{initialize:function($super,a,c,b){this.container={success:(a.success||a),failure:(a.failure||(a.success?null:a))};b=Object.clone(b);var d=b.onComplete;b.onComplete=(function(e,f){this.updateContent(e.responseText);if(Object.isFunction(d)){d(e,f)}}).bind(this);$super(c,b)},updateContent:function(d){var c=this.container[this.success()?"success":"failure"],a=this.options;if(!a.evalScripts){d=d.stripScripts()}if(c=$(c)){if(a.insertion){if(Object.isString(a.insertion)){var b={};b[a.insertion]=d;c.insert(b)}else{a.insertion(c,d)}}else{c.update(d)}}}});Ajax.PeriodicalUpdater=Class.create(Ajax.Base,{initialize:function($super,a,c,b){$super(b);this.onComplete=this.options.onComplete;this.frequency=(this.options.frequency||2);this.decay=(this.options.decay||1);this.updater={};this.container=a;this.url=c;this.start()},start:function(){this.options.onComplete=this.updateComplete.bind(this);this.onTimerEvent()},stop:function(){this.updater.options.onComplete=undefined;clearTimeout(this.timer);(this.onComplete||Prototype.emptyFunction).apply(this,arguments)},updateComplete:function(a){if(this.options.decay){this.decay=(a.responseText==this.lastText?this.decay*this.options.decay:1);this.lastText=a.responseText}this.timer=this.onTimerEvent.bind(this).delay(this.decay*this.frequency)},onTimerEvent:function(){this.updater=new Ajax.Updater(this.container,this.url,this.options)}});function $(b){if(arguments.length>1){for(var a=0,d=[],c=arguments.length;a<c;a++){d.push($(arguments[a]))}return d}if(Object.isString(b)){b=document.getElementById(b)}return Element.extend(b)}if(Prototype.BrowserFeatures.XPath){document._getElementsByXPath=function(f,a){var c=[];var e=document.evaluate(f,$(a)||document,null,XPathResult.ORDERED_NODE_SNAPSHOT_TYPE,null);for(var b=0,d=e.snapshotLength;b<d;b++){c.push(Element.extend(e.snapshotItem(b)))}return c}}if(!window.Node){var Node={}}if(!Node.ELEMENT_NODE){Object.extend(Node,{ELEMENT_NODE:1,ATTRIBUTE_NODE:2,TEXT_NODE:3,CDATA_SECTION_NODE:4,ENTITY_REFERENCE_NODE:5,ENTITY_NODE:6,PROCESSING_INSTRUCTION_NODE:7,COMMENT_NODE:8,DOCUMENT_NODE:9,DOCUMENT_TYPE_NODE:10,DOCUMENT_FRAGMENT_NODE:11,NOTATION_NODE:12})}(function(){var a=this.Element;this.Element=function(d,c){c=c||{};d=d.toLowerCase();var b=Element.cache;if(Prototype.Browser.IE&&c.name){d="<"+d+' name="'+c.name+'">';delete c.name;return Element.writeAttribute(document.createElement(d),c)}if(!b[d]){b[d]=Element.extend(document.createElement(d))}return Element.writeAttribute(b[d].cloneNode(false),c)};Object.extend(this.Element,a||{})}).call(window);Element.cache={};Element.Methods={visible:function(a){return $(a).style.display!="none"},toggle:function(a){a=$(a);Element[Element.visible(a)?"hide":"show"](a);return a},hide:function(a){$(a).style.display="none";return a},show:function(a){$(a).style.display="";return a},remove:function(a){a=$(a);a.parentNode.removeChild(a);return a},update:function(a,b){a=$(a);if(b&&b.toElement){b=b.toElement()}if(Object.isElement(b)){return a.update().insert(b)}b=Object.toHTML(b);a.innerHTML=b.stripScripts();b.evalScripts.bind(b).defer();return a},replace:function(b,c){b=$(b);if(c&&c.toElement){c=c.toElement()}else{if(!Object.isElement(c)){c=Object.toHTML(c);var a=b.ownerDocument.createRange();a.selectNode(b);c.evalScripts.bind(c).defer();c=a.createContextualFragment(c.stripScripts())}}b.parentNode.replaceChild(c,b);return b},insert:function(c,e){c=$(c);if(Object.isString(e)||Object.isNumber(e)||Object.isElement(e)||(e&&(e.toElement||e.toHTML))){e={bottom:e}}var d,f,b,g;for(var a in e){d=e[a];a=a.toLowerCase();f=Element._insertionTranslations[a];if(d&&d.toElement){d=d.toElement()}if(Object.isElement(d)){f(c,d);continue}d=Object.toHTML(d);b=((a=="before"||a=="after")?c.parentNode:c).tagName.toUpperCase();g=Element._getContentFromAnonymousElement(b,d.stripScripts());if(a=="top"||a=="after"){g.reverse()}g.each(f.curry(c));d.evalScripts.bind(d).defer()}return c},wrap:function(b,c,a){b=$(b);if(Object.isElement(c)){$(c).writeAttribute(a||{})}else{if(Object.isString(c)){c=new Element(c,a)}else{c=new Element("div",c)}}if(b.parentNode){b.parentNode.replaceChild(c,b)}c.appendChild(b);return c},inspect:function(b){b=$(b);var a="<"+b.tagName.toLowerCase();$H({id:"id",className:"class"}).each(function(f){var e=f.first(),c=f.last();var d=(b[e]||"").toString();if(d){a+=" "+c+"="+d.inspect(true)}});return a+">"},recursivelyCollect:function(a,c){a=$(a);var b=[];while(a=a[c]){if(a.nodeType==1){b.push(Element.extend(a))}}return b},ancestors:function(a){return $(a).recursivelyCollect("parentNode")},descendants:function(a){return $(a).select("*")},firstDescendant:function(a){a=$(a).firstChild;while(a&&a.nodeType!=1){a=a.nextSibling}return $(a)},immediateDescendants:function(a){if(!(a=$(a).firstChild)){return[]}while(a&&a.nodeType!=1){a=a.nextSibling}if(a){return[a].concat($(a).nextSiblings())}return[]},previousSiblings:function(a){return $(a).recursivelyCollect("previousSibling")},nextSiblings:function(a){return $(a).recursivelyCollect("nextSibling")},siblings:function(a){a=$(a);return a.previousSiblings().reverse().concat(a.nextSiblings())},match:function(b,a){if(Object.isString(a)){a=new Selector(a)}return a.match($(b))},up:function(b,d,a){b=$(b);if(arguments.length==1){return $(b.parentNode)}var c=b.ancestors();return Object.isNumber(d)?c[d]:Selector.findElement(c,d,a)},down:function(b,c,a){b=$(b);if(arguments.length==1){return b.firstDescendant()}return Object.isNumber(c)?b.descendants()[c]:b.select(c)[a||0]},previous:function(b,d,a){b=$(b);if(arguments.length==1){return $(Selector.handlers.previousElementSibling(b))}var c=b.previousSiblings();return Object.isNumber(d)?c[d]:Selector.findElement(c,d,a)},next:function(c,d,b){c=$(c);if(arguments.length==1){return $(Selector.handlers.nextElementSibling(c))}var a=c.nextSiblings();return Object.isNumber(d)?a[d]:Selector.findElement(a,d,b)},select:function(){var a=$A(arguments),b=$(a.shift());return Selector.findChildElements(b,a)},adjacent:function(){var a=$A(arguments),b=$(a.shift());return Selector.findChildElements(b.parentNode,a).without(b)},identify:function(b){b=$(b);var c=b.readAttribute("id"),a=arguments.callee;if(c){return c}do{c="anonymous_element_"+a.counter++}while($(c));b.writeAttribute("id",c);return c},readAttribute:function(c,a){c=$(c);if(Prototype.Browser.IE){var b=Element._attributeTranslations.read;if(b.values[a]){return b.values[a](c,a)}if(b.names[a]){a=b.names[a]}if(a.include(":")){return(!c.attributes||!c.attributes[a])?null:c.attributes[a].value}}return c.getAttribute(a)},writeAttribute:function(e,c,f){e=$(e);var b={},d=Element._attributeTranslations.write;if(typeof c=="object"){b=c}else{b[c]=Object.isUndefined(f)?true:f}for(var a in b){c=d.names[a]||a;f=b[a];if(d.values[a]){c=d.values[a](e,f)}if(f===false||f===null){e.removeAttribute(c)}else{if(f===true){e.setAttribute(c,c)}else{e.setAttribute(c,f)}}}return e},getHeight:function(a){return $(a).getDimensions().height},getWidth:function(a){return $(a).getDimensions().width},classNames:function(a){return new Element.ClassNames(a)},hasClassName:function(a,b){if(!(a=$(a))){return}var c=a.className;return(c.length>0&&(c==b||new RegExp("(^|\\s)"+b+"(\\s|$)").test(c)))},addClassName:function(a,b){if(!(a=$(a))){return}if(!a.hasClassName(b)){a.className+=(a.className?" ":"")+b}return a},removeClassName:function(a,b){if(!(a=$(a))){return}a.className=a.className.replace(new RegExp("(^|\\s+)"+b+"(\\s+|$)")," ").strip();return a},toggleClassName:function(a,b){if(!(a=$(a))){return}return a[a.hasClassName(b)?"removeClassName":"addClassName"](b)},cleanWhitespace:function(b){b=$(b);var c=b.firstChild;while(c){var a=c.nextSibling;if(c.nodeType==3&&!/\S/.test(c.nodeValue)){b.removeChild(c)}c=a}return b},empty:function(a){return $(a).innerHTML.blank()},descendantOf:function(f,d){f=$(f),d=$(d);var h=d;if(f.compareDocumentPosition){return(f.compareDocumentPosition(d)&8)===8}if(f.sourceIndex&&!Prototype.Browser.Opera){var g=f.sourceIndex,c=d.sourceIndex,b=d.nextSibling;if(!b){do{d=d.parentNode}while(!(b=d.nextSibling)&&d.parentNode)}if(b&&b.sourceIndex){return(g>c&&g<b.sourceIndex)}}while(f=f.parentNode){if(f==h){return true}}return false},scrollTo:function(a){a=$(a);var b=a.cumulativeOffset();window.scrollTo(b[0],b[1]);return a},getStyle:function(b,c){b=$(b);c=c=="float"?"cssFloat":c.camelize();var d=b.style[c];if(!d){var a=document.defaultView.getComputedStyle(b,null);d=a?a[c]:null}if(c=="opacity"){return d?parseFloat(d):1}return d=="auto"?null:d},getOpacity:function(a){return $(a).getStyle("opacity")},setStyle:function(b,c){b=$(b);var e=b.style,a;if(Object.isString(c)){b.style.cssText+=";"+c;return c.include("opacity")?b.setOpacity(c.match(/opacity:\s*(\d?\.?\d*)/)[1]):b}for(var d in c){if(d=="opacity"){b.setOpacity(c[d])}else{e[(d=="float"||d=="cssFloat")?(Object.isUndefined(e.styleFloat)?"cssFloat":"styleFloat"):d]=c[d]}}return b},setOpacity:function(a,b){a=$(a);a.style.opacity=(b==1||b==="")?"":(b<0.00001)?0:b;return a},getDimensions:function(c){c=$(c);var g=$(c).getStyle("display");if(g!="none"&&g!=null){return{width:c.offsetWidth,height:c.offsetHeight}}var b=c.style;var f=b.visibility;var d=b.position;var a=b.display;b.visibility="hidden";b.position="absolute";b.display="block";var h=c.clientWidth;var e=c.clientHeight;b.display=a;b.position=d;b.visibility=f;return{width:h,height:e}},makePositioned:function(a){a=$(a);var b=Element.getStyle(a,"position");if(b=="static"||!b){a._madePositioned=true;a.style.position="relative";if(window.opera){a.style.top=0;a.style.left=0}}return a},undoPositioned:function(a){a=$(a);if(a._madePositioned){a._madePositioned=undefined;a.style.position=a.style.top=a.style.left=a.style.bottom=a.style.right=""}return a},makeClipping:function(a){a=$(a);if(a._overflow){return a}a._overflow=Element.getStyle(a,"overflow")||"auto";if(a._overflow!=="hidden"){a.style.overflow="hidden"}return a},undoClipping:function(a){a=$(a);if(!a._overflow){return a}a.style.overflow=a._overflow=="auto"?"":a._overflow;a._overflow=null;return a},cumulativeOffset:function(b){var a=0,c=0;do{a+=b.offsetTop||0;c+=b.offsetLeft||0;b=b.offsetParent}while(b);return Element._returnOffset(c,a)},positionedOffset:function(b){var a=0,d=0;do{a+=b.offsetTop||0;d+=b.offsetLeft||0;b=b.offsetParent;if(b){if(b.tagName=="BODY"){break}var c=Element.getStyle(b,"position");if(c!=="static"){break}}}while(b);return Element._returnOffset(d,a)},absolutize:function(b){b=$(b);if(b.getStyle("position")=="absolute"){return}var d=b.positionedOffset();var f=d[1];var e=d[0];var c=b.clientWidth;var a=b.clientHeight;b._originalLeft=e-parseFloat(b.style.left||0);b._originalTop=f-parseFloat(b.style.top||0);b._originalWidth=b.style.width;b._originalHeight=b.style.height;b.style.position="absolute";b.style.top=f+"px";b.style.left=e+"px";b.style.width=c+"px";b.style.height=a+"px";return b},relativize:function(a){a=$(a);if(a.getStyle("position")=="relative"){return}a.style.position="relative";var c=parseFloat(a.style.top||0)-(a._originalTop||0);var b=parseFloat(a.style.left||0)-(a._originalLeft||0);a.style.top=c+"px";a.style.left=b+"px";a.style.height=a._originalHeight;a.style.width=a._originalWidth;return a},cumulativeScrollOffset:function(b){var a=0,c=0;do{a+=b.scrollTop||0;c+=b.scrollLeft||0;b=b.parentNode}while(b);return Element._returnOffset(c,a)},getOffsetParent:function(a){if(a.offsetParent){return $(a.offsetParent)}if(a==document.body){return $(a)}while((a=a.parentNode)&&a!=document.body){if(Element.getStyle(a,"position")!="static"){return $(a)}}return $(document.body)},viewportOffset:function(d){var a=0,c=0;var b=d;do{a+=b.offsetTop||0;c+=b.offsetLeft||0;if(b.offsetParent==document.body&&Element.getStyle(b,"position")=="absolute"){break}}while(b=b.offsetParent);b=d;do{if(!Prototype.Browser.Opera||b.tagName=="BODY"){a-=b.scrollTop||0;c-=b.scrollLeft||0}}while(b=b.parentNode);return Element._returnOffset(c,a)},clonePosition:function(b,d){var a=Object.extend({setLeft:true,setTop:true,setWidth:true,setHeight:true,offsetTop:0,offsetLeft:0},arguments[2]||{});d=$(d);var e=d.viewportOffset();b=$(b);var f=[0,0];var c=null;if(Element.getStyle(b,"position")=="absolute"){c=b.getOffsetParent();f=c.viewportOffset()}if(c==document.body){f[0]-=document.body.offsetLeft;f[1]-=document.body.offsetTop}if(a.setLeft){b.style.left=(e[0]-f[0]+a.offsetLeft)+"px"}if(a.setTop){b.style.top=(e[1]-f[1]+a.offsetTop)+"px"}if(a.setWidth){b.style.width=d.offsetWidth+"px"}if(a.setHeight){b.style.height=d.offsetHeight+"px"}return b}};Element.Methods.identify.counter=1;Object.extend(Element.Methods,{getElementsBySelector:Element.Methods.select,childElements:Element.Methods.immediateDescendants});Element._attributeTranslations={write:{names:{className:"class",htmlFor:"for"},values:{}}};if(Prototype.Browser.Opera){Element.Methods.getStyle=Element.Methods.getStyle.wrap(function(d,b,c){switch(c){case"left":case"top":case"right":case"bottom":if(d(b,"position")==="static"){return null}case"height":case"width":if(!Element.visible(b)){return null}var e=parseInt(d(b,c),10);if(e!==b["offset"+c.capitalize()]){return e+"px"}var a;if(c==="height"){a=["border-top-width","padding-top","padding-bottom","border-bottom-width"]}else{a=["border-left-width","padding-left","padding-right","border-right-width"]}return a.inject(e,function(f,g){var h=d(b,g);return h===null?f:f-parseInt(h,10)})+"px";default:return d(b,c)}});Element.Methods.readAttribute=Element.Methods.readAttribute.wrap(function(c,a,b){if(b==="title"){return a.title}return c(a,b)})}else{if(Prototype.Browser.IE){Element.Methods.getOffsetParent=Element.Methods.getOffsetParent.wrap(function(c,b){b=$(b);var a=b.getStyle("position");if(a!=="static"){return c(b)}b.setStyle({position:"relative"});var d=c(b);b.setStyle({position:a});return d});$w("positionedOffset viewportOffset").each(function(a){Element.Methods[a]=Element.Methods[a].wrap(function(e,c){c=$(c);var b=c.getStyle("position");if(b!=="static"){return e(c)}var d=c.getOffsetParent();if(d&&d.getStyle("position")==="fixed"){d.setStyle({zoom:1})}c.setStyle({position:"relative"});var f=e(c);c.setStyle({position:b});return f})});Element.Methods.getStyle=function(a,b){a=$(a);b=(b=="float"||b=="cssFloat")?"styleFloat":b.camelize();var c=a.style[b];if(!c&&a.currentStyle){c=a.currentStyle[b]}if(b=="opacity"){if(c=(a.getStyle("filter")||"").match(/alpha\(opacity=(.*)\)/)){if(c[1]){return parseFloat(c[1])/100}}return 1}if(c=="auto"){if((b=="width"||b=="height")&&(a.getStyle("display")!="none")){return a["offset"+b.capitalize()]+"px"}return null}return c};Element.Methods.setOpacity=function(b,e){function f(g){return g.replace(/alpha\([^\)]*\)/gi,"")}b=$(b);var a=b.currentStyle;if((a&&!a.hasLayout)||(!a&&b.style.zoom=="normal")){b.style.zoom=1}var d=b.getStyle("filter"),c=b.style;if(e==1||e===""){(d=f(d))?c.filter=d:c.removeAttribute("filter");return b}else{if(e<0.00001){e=0}}c.filter=f(d)+"alpha(opacity="+(e*100)+")";return b};Element._attributeTranslations={read:{names:{"class":"className","for":"htmlFor"},values:{_getAttr:function(a,b){return a.getAttribute(b,2)},_getAttrNode:function(a,c){var b=a.getAttributeNode(c);return b?b.value:""},_getEv:function(a,b){b=a.getAttribute(b);return b?b.toString().slice(23,-2):null},_flag:function(a,b){return $(a).hasAttribute(b)?b:null},style:function(a){return a.style.cssText.toLowerCase()},title:function(a){return a.title}}}};Element._attributeTranslations.write={names:Object.extend({cellpadding:"cellPadding",cellspacing:"cellSpacing"},Element._attributeTranslations.read.names),values:{checked:function(a,b){a.checked=!!b},style:function(a,b){a.style.cssText=b?b:""}}};Element._attributeTranslations.has={};$w("colSpan rowSpan vAlign dateTime accessKey tabIndex encType maxLength readOnly longDesc").each(function(a){Element._attributeTranslations.write.names[a.toLowerCase()]=a;Element._attributeTranslations.has[a.toLowerCase()]=a});(function(a){Object.extend(a,{href:a._getAttr,src:a._getAttr,type:a._getAttr,action:a._getAttrNode,disabled:a._flag,checked:a._flag,readonly:a._flag,multiple:a._flag,onload:a._getEv,onunload:a._getEv,onclick:a._getEv,ondblclick:a._getEv,onmousedown:a._getEv,onmouseup:a._getEv,onmouseover:a._getEv,onmousemove:a._getEv,onmouseout:a._getEv,onfocus:a._getEv,onblur:a._getEv,onkeypress:a._getEv,onkeydown:a._getEv,onkeyup:a._getEv,onsubmit:a._getEv,onreset:a._getEv,onselect:a._getEv,onchange:a._getEv})})(Element._attributeTranslations.read.values)}else{if(Prototype.Browser.Gecko&&/rv:1\.8\.0/.test(navigator.userAgent)){Element.Methods.setOpacity=function(a,b){a=$(a);a.style.opacity=(b==1)?0.999999:(b==="")?"":(b<0.00001)?0:b;return a}}else{if(Prototype.Browser.WebKit){Element.Methods.setOpacity=function(a,b){a=$(a);a.style.opacity=(b==1||b==="")?"":(b<0.00001)?0:b;if(b==1){if(a.tagName=="IMG"&&a.width){a.width++;a.width--}else{try{var d=document.createTextNode(" ");a.appendChild(d);a.removeChild(d)}catch(c){}}}return a};Element.Methods.cumulativeOffset=function(b){var a=0,c=0;do{a+=b.offsetTop||0;c+=b.offsetLeft||0;if(b.offsetParent==document.body){if(Element.getStyle(b,"position")=="absolute"){break}}b=b.offsetParent}while(b);return Element._returnOffset(c,a)}}}}}if(Prototype.Browser.IE||Prototype.Browser.Opera){Element.Methods.update=function(b,c){b=$(b);if(c&&c.toElement){c=c.toElement()}if(Object.isElement(c)){return b.update().insert(c)}c=Object.toHTML(c);var a=b.tagName.toUpperCase();if(a in Element._insertionTranslations.tags){$A(b.childNodes).each(function(d){b.removeChild(d)});Element._getContentFromAnonymousElement(a,c.stripScripts()).each(function(d){b.appendChild(d)})}else{b.innerHTML=c.stripScripts()}c.evalScripts.bind(c).defer();return b}}if("outerHTML" in document.createElement("div")){Element.Methods.replace=function(c,e){c=$(c);if(e&&e.toElement){e=e.toElement()}if(Object.isElement(e)){c.parentNode.replaceChild(e,c);return c}e=Object.toHTML(e);var d=c.parentNode,b=d.tagName.toUpperCase();if(Element._insertionTranslations.tags[b]){var f=c.next();var a=Element._getContentFromAnonymousElement(b,e.stripScripts());d.removeChild(c);if(f){a.each(function(g){d.insertBefore(g,f)})}else{a.each(function(g){d.appendChild(g)})}}else{c.outerHTML=e.stripScripts()}e.evalScripts.bind(e).defer();return c}}Element._returnOffset=function(b,c){var a=[b,c];a.left=b;a.top=c;return a};Element._getContentFromAnonymousElement=function(c,b){var d=new Element("div"),a=Element._insertionTranslations.tags[c];if(a){d.innerHTML=a[0]+b+a[1];a[2].times(function(){d=d.firstChild})}else{d.innerHTML=b}return $A(d.childNodes)};Element._insertionTranslations={before:function(a,b){a.parentNode.insertBefore(b,a)},top:function(a,b){a.insertBefore(b,a.firstChild)},bottom:function(a,b){a.appendChild(b)},after:function(a,b){a.parentNode.insertBefore(b,a.nextSibling)},tags:{TABLE:["<table>","</table>",1],TBODY:["<table><tbody>","</tbody></table>",2],TR:["<table><tbody><tr>","</tr></tbody></table>",3],TD:["<table><tbody><tr><td>","</td></tr></tbody></table>",4],SELECT:["<select>","</select>",1]}};(function(){Object.extend(this.tags,{THEAD:this.tags.TBODY,TFOOT:this.tags.TBODY,TH:this.tags.TD})}).call(Element._insertionTranslations);Element.Methods.Simulated={hasAttribute:function(a,c){c=Element._attributeTranslations.has[c]||c;var b=$(a).getAttributeNode(c);return b&&b.specified}};Element.Methods.ByTag={};Object.extend(Element,Element.Methods);if(!Prototype.BrowserFeatures.ElementExtensions&&document.createElement("div").__proto__){window.HTMLElement={};window.HTMLElement.prototype=document.createElement("div").__proto__;Prototype.BrowserFeatures.ElementExtensions=true}Element.extend=(function(){if(Prototype.BrowserFeatures.SpecificElementExtensions){return Prototype.K}var a={},b=Element.Methods.ByTag;var c=Object.extend(function(f){if(!f||f._extendedByPrototype||f.nodeType!=1||f==window){return f}var d=Object.clone(a),e=f.tagName,h,g;if(b[e]){Object.extend(d,b[e])}for(h in d){g=d[h];if(Object.isFunction(g)&&!(h in f)){f[h]=g.methodize()}}f._extendedByPrototype=Prototype.emptyFunction;return f},{refresh:function(){if(!Prototype.BrowserFeatures.ElementExtensions){Object.extend(a,Element.Methods);Object.extend(a,Element.Methods.Simulated)}}});c.refresh();return c})();Element.hasAttribute=function(a,b){if(a.hasAttribute){return a.hasAttribute(b)}return Element.Methods.Simulated.hasAttribute(a,b)};Element.addMethods=function(c){var h=Prototype.BrowserFeatures,d=Element.Methods.ByTag;if(!c){Object.extend(Form,Form.Methods);Object.extend(Form.Element,Form.Element.Methods);Object.extend(Element.Methods.ByTag,{FORM:Object.clone(Form.Methods),INPUT:Object.clone(Form.Element.Methods),SELECT:Object.clone(Form.Element.Methods),TEXTAREA:Object.clone(Form.Element.Methods)})}if(arguments.length==2){var b=c;c=arguments[1]}if(!b){Object.extend(Element.Methods,c||{})}else{if(Object.isArray(b)){b.each(g)}else{g(b)}}function g(j){j=j.toUpperCase();if(!Element.Methods.ByTag[j]){Element.Methods.ByTag[j]={}}Object.extend(Element.Methods.ByTag[j],c)}function a(l,k,j){j=j||false;for(var n in l){var m=l[n];if(!Object.isFunction(m)){continue}if(!j||!(n in k)){k[n]=m.methodize()}}}function e(l){var j;var k={OPTGROUP:"OptGroup",TEXTAREA:"TextArea",P:"Paragraph",FIELDSET:"FieldSet",UL:"UList",OL:"OList",DL:"DList",DIR:"Directory",H1:"Heading",H2:"Heading",H3:"Heading",H4:"Heading",H5:"Heading",H6:"Heading",Q:"Quote",INS:"Mod",DEL:"Mod",A:"Anchor",IMG:"Image",CAPTION:"TableCaption",COL:"TableCol",COLGROUP:"TableCol",THEAD:"TableSection",TFOOT:"TableSection",TBODY:"TableSection",TR:"TableRow",TH:"TableCell",TD:"TableCell",FRAMESET:"FrameSet",IFRAME:"IFrame"};if(k[l]){j="HTML"+k[l]+"Element"}if(window[j]){return window[j]}j="HTML"+l+"Element";if(window[j]){return window[j]}j="HTML"+l.capitalize()+"Element";if(window[j]){return window[j]}window[j]={};window[j].prototype=document.createElement(l).__proto__;return window[j]}if(h.ElementExtensions){a(Element.Methods,HTMLElement.prototype);a(Element.Methods.Simulated,HTMLElement.prototype,true)}if(h.SpecificElementExtensions){for(var i in Element.Methods.ByTag){var f=e(i);if(Object.isUndefined(f)){continue}a(d[i],f.prototype)}}Object.extend(Element,Element.Methods);delete Element.ByTag;if(Element.extend.refresh){Element.extend.refresh()}Element.cache={}};document.viewport={getDimensions:function(){var a={};var b=Prototype.Browser;$w("width height").each(function(e){var c=e.capitalize();a[e]=(b.WebKit&&!document.evaluate)?self["inner"+c]:(b.Opera)?document.body["client"+c]:document.documentElement["client"+c]});return a},getWidth:function(){return this.getDimensions().width},getHeight:function(){return this.getDimensions().height},getScrollOffsets:function(){return Element._returnOffset(window.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft,window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop)}};var Selector=Class.create({initialize:function(a){this.expression=a.strip();this.compileMatcher()},shouldUseXPath:function(){if(!Prototype.BrowserFeatures.XPath){return false}var a=this.expression;if(Prototype.Browser.WebKit&&(a.include("-of-type")||a.include(":empty"))){return false}if((/(\[[\w-]*?:|:checked)/).test(this.expression)){return false}return true},compileMatcher:function(){if(this.shouldUseXPath()){return this.compileXPathMatcher()}var e=this.expression,ps=Selector.patterns,h=Selector.handlers,c=Selector.criteria,le,p,m;if(Selector._cache[e]){this.matcher=Selector._cache[e];return}this.matcher=["this.matcher = function(root) {","var r = root, h = Selector.handlers, c = false, n;"];while(e&&le!=e&&(/\S/).test(e)){le=e;for(var i in ps){p=ps[i];if(m=e.match(p)){this.matcher.push(Object.isFunction(c[i])?c[i](m):new Template(c[i]).evaluate(m));e=e.replace(m[0],"");break}}}this.matcher.push("return h.unique(n);\n}");eval(this.matcher.join("\n"));Selector._cache[this.expression]=this.matcher},compileXPathMatcher:function(){var f=this.expression,g=Selector.patterns,b=Selector.xpath,d,a;if(Selector._cache[f]){this.xpath=Selector._cache[f];return}this.matcher=[".//*"];while(f&&d!=f&&(/\S/).test(f)){d=f;for(var c in g){if(a=f.match(g[c])){this.matcher.push(Object.isFunction(b[c])?b[c](a):new Template(b[c]).evaluate(a));f=f.replace(a[0],"");break}}}this.xpath=this.matcher.join("");Selector._cache[this.expression]=this.xpath},findElements:function(a){a=a||document;if(this.xpath){return document._getElementsByXPath(this.xpath,a)}return this.matcher(a)},match:function(j){this.tokens=[];var o=this.expression,a=Selector.patterns,f=Selector.assertions;var b,d,g;while(o&&b!==o&&(/\S/).test(o)){b=o;for(var k in a){d=a[k];if(g=o.match(d)){if(f[k]){this.tokens.push([k,Object.clone(g)]);o=o.replace(g[0],"")}else{return this.findElements(document).include(j)}}}}var n=true,c,l;for(var k=0,h;h=this.tokens[k];k++){c=h[0],l=h[1];if(!Selector.assertions[c](j,l)){n=false;break}}return n},toString:function(){return this.expression},inspect:function(){return"#<Selector:"+this.expression.inspect()+">"}});Object.extend(Selector,{_cache:{},xpath:{descendant:"//*",child:"/*",adjacent:"/following-sibling::*[1]",laterSibling:"/following-sibling::*",tagName:function(a){if(a[1]=="*"){return""}return"[local-name()='"+a[1].toLowerCase()+"' or local-name()='"+a[1].toUpperCase()+"']"},className:"[contains(concat(' ', @class, ' '), ' #{1} ')]",id:"[@id='#{1}']",attrPresence:function(a){a[1]=a[1].toLowerCase();return new Template("[@#{1}]").evaluate(a)},attr:function(a){a[1]=a[1].toLowerCase();a[3]=a[5]||a[6];return new Template(Selector.xpath.operators[a[2]]).evaluate(a)},pseudo:function(a){var b=Selector.xpath.pseudos[a[1]];if(!b){return""}if(Object.isFunction(b)){return b(a)}return new Template(Selector.xpath.pseudos[a[1]]).evaluate(a)},operators:{"=":"[@#{1}='#{3}']","!=":"[@#{1}!='#{3}']","^=":"[starts-with(@#{1}, '#{3}')]","$=":"[substring(@#{1}, (string-length(@#{1}) - string-length('#{3}') + 1))='#{3}']","*=":"[contains(@#{1}, '#{3}')]","~=":"[contains(concat(' ', @#{1}, ' '), ' #{3} ')]","|=":"[contains(concat('-', @#{1}, '-'), '-#{3}-')]"},pseudos:{"first-child":"[not(preceding-sibling::*)]","last-child":"[not(following-sibling::*)]","only-child":"[not(preceding-sibling::* or following-sibling::*)]",empty:"[count(*) = 0 and (count(text()) = 0 or translate(text(), ' \t\r\n', '') = '')]",checked:"[@checked]",disabled:"[@disabled]",enabled:"[not(@disabled)]",not:function(b){var j=b[6],h=Selector.patterns,a=Selector.xpath,f,c;var g=[];while(j&&f!=j&&(/\S/).test(j)){f=j;for(var d in h){if(b=j.match(h[d])){c=Object.isFunction(a[d])?a[d](b):new Template(a[d]).evaluate(b);g.push("("+c.substring(1,c.length-1)+")");j=j.replace(b[0],"");break}}}return"[not("+g.join(" and ")+")]"},"nth-child":function(a){return Selector.xpath.pseudos.nth("(count(./preceding-sibling::*) + 1) ",a)},"nth-last-child":function(a){return Selector.xpath.pseudos.nth("(count(./following-sibling::*) + 1) ",a)},"nth-of-type":function(a){return Selector.xpath.pseudos.nth("position() ",a)},"nth-last-of-type":function(a){return Selector.xpath.pseudos.nth("(last() + 1 - position()) ",a)},"first-of-type":function(a){a[6]="1";return Selector.xpath.pseudos["nth-of-type"](a)},"last-of-type":function(a){a[6]="1";return Selector.xpath.pseudos["nth-last-of-type"](a)},"only-of-type":function(a){var b=Selector.xpath.pseudos;return b["first-of-type"](a)+b["last-of-type"](a)},nth:function(g,e){var h,i=e[6],d;if(i=="even"){i="2n+0"}if(i=="odd"){i="2n+1"}if(h=i.match(/^(\d+)$/)){return"["+g+"= "+h[1]+"]"}if(h=i.match(/^(-?\d*)?n(([+-])(\d+))?/)){if(h[1]=="-"){h[1]=-1}var f=h[1]?Number(h[1]):1;var c=h[2]?Number(h[2]):0;d="[((#{fragment} - #{b}) mod #{a} = 0) and ((#{fragment} - #{b}) div #{a} >= 0)]";return new Template(d).evaluate({fragment:g,a:f,b:c})}}}},criteria:{tagName:'n = h.tagName(n, r, "#{1}", c);      c = false;',className:'n = h.className(n, r, "#{1}", c);    c = false;',id:'n = h.id(n, r, "#{1}", c);           c = false;',attrPresence:'n = h.attrPresence(n, r, "#{1}", c); c = false;',attr:function(a){a[3]=(a[5]||a[6]);return new Template('n = h.attr(n, r, "#{1}", "#{3}", "#{2}", c); c = false;').evaluate(a)},pseudo:function(a){if(a[6]){a[6]=a[6].replace(/"/g,'\\"')}return new Template('n = h.pseudo(n, "#{1}", "#{6}", r, c); c = false;').evaluate(a)},descendant:'c = "descendant";',child:'c = "child";',adjacent:'c = "adjacent";',laterSibling:'c = "laterSibling";'},patterns:{laterSibling:/^\s*~\s*/,child:/^\s*>\s*/,adjacent:/^\s*\+\s*/,descendant:/^\s/,tagName:/^\s*(\*|[\w\-]+)(\b|$)?/,id:/^#([\w\-\*]+)(\b|$)/,className:/^\.([\w\-\*]+)(\b|$)/,pseudo:/^:((first|last|nth|nth-last|only)(-child|-of-type)|empty|checked|(en|dis)abled|not)(\((.*?)\))?(\b|$|(?=\s|[:+~>]))/,attrPresence:/^\[([\w]+)\]/,attr:/\[((?:[\w-]*:)?[\w-]+)\s*(?:([!^$*~|]?=)\s*((['"])([^\4]*?)\4|([^'"][^\]]*?)))?\]/},assertions:{tagName:function(a,b){return b[1].toUpperCase()==a.tagName.toUpperCase()},className:function(a,b){return Element.hasClassName(a,b[1])},id:function(a,b){return a.id===b[1]},attrPresence:function(a,b){return Element.hasAttribute(a,b[1])},attr:function(b,c){var a=Element.readAttribute(b,c[1]);return a&&Selector.operators[c[2]](a,c[5]||c[6])}},handlers:{concat:function(d,c){for(var e=0,f;f=c[e];e++){d.push(f)}return d},mark:function(a){var d=Prototype.emptyFunction;for(var b=0,c;c=a[b];b++){c._countedByPrototype=d}return a},unmark:function(a){for(var b=0,c;c=a[b];b++){c._countedByPrototype=undefined}return a},index:function(a,d,g){a._countedByPrototype=Prototype.emptyFunction;if(d){for(var b=a.childNodes,e=b.length-1,c=1;e>=0;e--){var f=b[e];if(f.nodeType==1&&(!g||f._countedByPrototype)){f.nodeIndex=c++}}}else{for(var e=0,c=1,b=a.childNodes;f=b[e];e++){if(f.nodeType==1&&(!g||f._countedByPrototype)){f.nodeIndex=c++}}}},unique:function(b){if(b.length==0){return b}var d=[],e;for(var c=0,a=b.length;c<a;c++){if(!(e=b[c])._countedByPrototype){e._countedByPrototype=Prototype.emptyFunction;d.push(Element.extend(e))}}return Selector.handlers.unmark(d)},descendant:function(a){var d=Selector.handlers;for(var c=0,b=[],e;e=a[c];c++){d.concat(b,e.getElementsByTagName("*"))}return b},child:function(a){var e=Selector.handlers;for(var d=0,c=[],f;f=a[d];d++){for(var b=0,g;g=f.childNodes[b];b++){if(g.nodeType==1&&g.tagName!="!"){c.push(g)}}}return c},adjacent:function(a){for(var c=0,b=[],e;e=a[c];c++){var d=this.nextElementSibling(e);if(d){b.push(d)}}return b},laterSibling:function(a){var d=Selector.handlers;for(var c=0,b=[],e;e=a[c];c++){d.concat(b,Element.nextSiblings(e))}return b},nextElementSibling:function(a){while(a=a.nextSibling){if(a.nodeType==1){return a}}return null},previousElementSibling:function(a){while(a=a.previousSibling){if(a.nodeType==1){return a}}return null},tagName:function(a,j,c,b){var k=c.toUpperCase();var e=[],g=Selector.handlers;if(a){if(b){if(b=="descendant"){for(var f=0,d;d=a[f];f++){g.concat(e,d.getElementsByTagName(c))}return e}else{a=this[b](a)}if(c=="*"){return a}}for(var f=0,d;d=a[f];f++){if(d.tagName.toUpperCase()===k){e.push(d)}}return e}else{return j.getElementsByTagName(c)}},id:function(b,a,j,f){var g=$(j),d=Selector.handlers;if(!g){return[]}if(!b&&a==document){return[g]}if(b){if(f){if(f=="child"){for(var c=0,e;e=b[c];c++){if(g.parentNode==e){return[g]}}}else{if(f=="descendant"){for(var c=0,e;e=b[c];c++){if(Element.descendantOf(g,e)){return[g]}}}else{if(f=="adjacent"){for(var c=0,e;e=b[c];c++){if(Selector.handlers.previousElementSibling(g)==e){return[g]}}}else{b=d[f](b)}}}}for(var c=0,e;e=b[c];c++){if(e==g){return[g]}}return[]}return(g&&Element.descendantOf(g,a))?[g]:[]},className:function(b,a,c,d){if(b&&d){b=this[d](b)}return Selector.handlers.byClassName(b,a,c)},byClassName:function(c,b,f){if(!c){c=Selector.handlers.descendant([b])}var h=" "+f+" ";for(var e=0,d=[],g,a;g=c[e];e++){a=g.className;if(a.length==0){continue}if(a==f||(" "+a+" ").include(h)){d.push(g)}}return d},attrPresence:function(c,b,a,g){if(!c){c=b.getElementsByTagName("*")}if(c&&g){c=this[g](c)}var e=[];for(var d=0,f;f=c[d];d++){if(Element.hasAttribute(f,a)){e.push(f)}}return e},attr:function(a,j,h,k,c,b){if(!a){a=j.getElementsByTagName("*")}if(a&&b){a=this[b](a)}var l=Selector.operators[c],f=[];for(var e=0,d;d=a[e];e++){var g=Element.readAttribute(d,h);if(g===null){continue}if(l(g,k)){f.push(d)}}return f},pseudo:function(b,c,e,a,d){if(b&&d){b=this[d](b)}if(!b){b=a.getElementsByTagName("*")}return Selector.pseudos[c](b,e,a)}},pseudos:{"first-child":function(b,f,a){for(var d=0,c=[],e;e=b[d];d++){if(Selector.handlers.previousElementSibling(e)){continue}c.push(e)}return c},"last-child":function(b,f,a){for(var d=0,c=[],e;e=b[d];d++){if(Selector.handlers.nextElementSibling(e)){continue}c.push(e)}return c},"only-child":function(b,g,a){var e=Selector.handlers;for(var d=0,c=[],f;f=b[d];d++){if(!e.previousElementSibling(f)&&!e.nextElementSibling(f)){c.push(f)}}return c},"nth-child":function(b,c,a){return Selector.pseudos.nth(b,c,a)},"nth-last-child":function(b,c,a){return Selector.pseudos.nth(b,c,a,true)},"nth-of-type":function(b,c,a){return Selector.pseudos.nth(b,c,a,false,true)},"nth-last-of-type":function(b,c,a){return Selector.pseudos.nth(b,c,a,true,true)},"first-of-type":function(b,c,a){return Selector.pseudos.nth(b,"1",a,false,true)},"last-of-type":function(b,c,a){return Selector.pseudos.nth(b,"1",a,true,true)},"only-of-type":function(b,d,a){var c=Selector.pseudos;return c["last-of-type"](c["first-of-type"](b,d,a),d,a)},getIndices:function(d,c,e){if(d==0){return c>0?[c]:[]}return $R(1,e).inject([],function(a,b){if(0==(b-c)%d&&(b-c)/d>=0){a.push(b)}return a})},nth:function(c,s,u,r,e){if(c.length==0){return[]}if(s=="even"){s="2n+0"}if(s=="odd"){s="2n+1"}var q=Selector.handlers,p=[],d=[],g;q.mark(c);for(var o=0,f;f=c[o];o++){if(!f.parentNode._countedByPrototype){q.index(f.parentNode,r,e);d.push(f.parentNode)}}if(s.match(/^\d+$/)){s=Number(s);for(var o=0,f;f=c[o];o++){if(f.nodeIndex==s){p.push(f)}}}else{if(g=s.match(/^(-?\d*)?n(([+-])(\d+))?/)){if(g[1]=="-"){g[1]=-1}var v=g[1]?Number(g[1]):1;var t=g[2]?Number(g[2]):0;var w=Selector.pseudos.getIndices(v,t,c.length);for(var o=0,f,k=w.length;f=c[o];o++){for(var n=0;n<k;n++){if(f.nodeIndex==w[n]){p.push(f)}}}}}q.unmark(c);q.unmark(d);return p},empty:function(b,f,a){for(var d=0,c=[],e;e=b[d];d++){if(e.tagName=="!"||(e.firstChild&&!e.innerHTML.match(/^\s*$/))){continue}c.push(e)}return c},not:function(a,d,k){var g=Selector.handlers,l,c;var j=new Selector(d).findElements(k);g.mark(j);for(var f=0,e=[],b;b=a[f];f++){if(!b._countedByPrototype){e.push(b)}}g.unmark(j);return e},enabled:function(b,f,a){for(var d=0,c=[],e;e=b[d];d++){if(!e.disabled){c.push(e)}}return c},disabled:function(b,f,a){for(var d=0,c=[],e;e=b[d];d++){if(e.disabled){c.push(e)}}return c},checked:function(b,f,a){for(var d=0,c=[],e;e=b[d];d++){if(e.checked){c.push(e)}}return c}},operators:{"=":function(b,a){return b==a},"!=":function(b,a){return b!=a},"^=":function(b,a){return b.startsWith(a)},"$=":function(b,a){return b.endsWith(a)},"*=":function(b,a){return b.include(a)},"~=":function(b,a){return(" "+b+" ").include(" "+a+" ")},"|=":function(b,a){return("-"+b.toUpperCase()+"-").include("-"+a.toUpperCase()+"-")}},split:function(b){var a=[];b.scan(/(([\w#:.~>+()\s-]+|\*|\[.*?\])+)\s*(,|$)/,function(c){a.push(c[1].strip())});return a},matchElements:function(f,g){var e=$$(g),d=Selector.handlers;d.mark(e);for(var c=0,b=[],a;a=f[c];c++){if(a._countedByPrototype){b.push(a)}}d.unmark(e);return b},findElement:function(b,c,a){if(Object.isNumber(c)){a=c;c=false}return Selector.matchElements(b,c||"*")[a||0]},findChildElements:function(e,g){g=Selector.split(g.join(","));var d=[],f=Selector.handlers;for(var c=0,b=g.length,a;c<b;c++){a=new Selector(g[c].strip());f.concat(d,a.findElements(e))}return(b>1)?f.unique(d):d}});if(Prototype.Browser.IE){Object.extend(Selector.handlers,{concat:function(d,c){for(var e=0,f;f=c[e];e++){if(f.tagName!=="!"){d.push(f)}}return d},unmark:function(a){for(var b=0,c;c=a[b];b++){c.removeAttribute("_countedByPrototype")}return a}})}function $$(){return Selector.findChildElements(document,$A(arguments))}var Form={reset:function(a){$(a).reset();return a},serializeElements:function(g,b){if(typeof b!="object"){b={hash:!!b}}else{if(Object.isUndefined(b.hash)){b.hash=true}}var c,f,a=false,e=b.submit;var d=g.inject({},function(h,i){if(!i.disabled&&i.name){c=i.name;f=$(i).getValue();if(f!=null&&(i.type!="submit"||(!a&&e!==false&&(!e||c==e)&&(a=true)))){if(c in h){if(!Object.isArray(h[c])){h[c]=[h[c]]}h[c].push(f)}else{h[c]=f}}}return h});return b.hash?d:Object.toQueryString(d)}};Form.Methods={serialize:function(b,a){return Form.serializeElements(Form.getElements(b),a)},getElements:function(a){return $A($(a).getElementsByTagName("*")).inject([],function(b,c){if(Form.Element.Serializers[c.tagName.toLowerCase()]){b.push(Element.extend(c))}return b})},getInputs:function(g,c,d){g=$(g);var a=g.getElementsByTagName("input");if(!c&&!d){return $A(a).map(Element.extend)}for(var e=0,h=[],f=a.length;e<f;e++){var b=a[e];if((c&&b.type!=c)||(d&&b.name!=d)){continue}h.push(Element.extend(b))}return h},disable:function(a){a=$(a);Form.getElements(a).invoke("disable");return a},enable:function(a){a=$(a);Form.getElements(a).invoke("enable");return a},findFirstElement:function(b){var c=$(b).getElements().findAll(function(d){return"hidden"!=d.type&&!d.disabled});var a=c.findAll(function(d){return d.hasAttribute("tabIndex")&&d.tabIndex>=0}).sortBy(function(d){return d.tabIndex}).first();return a?a:c.find(function(d){return["input","select","textarea"].include(d.tagName.toLowerCase())})},focusFirstElement:function(a){a=$(a);a.findFirstElement().activate();return a},request:function(b,a){b=$(b),a=Object.clone(a||{});var d=a.parameters,c=b.readAttribute("action")||"";if(c.blank()){c=window.location.href}a.parameters=b.serialize(true);if(d){if(Object.isString(d)){d=d.toQueryParams()}Object.extend(a.parameters,d)}if(b.hasAttribute("method")&&!a.method){a.method=b.method}return new Ajax.Request(c,a)}};Form.Element={focus:function(a){$(a).focus();return a},select:function(a){$(a).select();return a}};Form.Element.Methods={serialize:function(a){a=$(a);if(!a.disabled&&a.name){var b=a.getValue();if(b!=undefined){var c={};c[a.name]=b;return Object.toQueryString(c)}}return""},getValue:function(a){a=$(a);var b=a.tagName.toLowerCase();return Form.Element.Serializers[b](a)},setValue:function(a,b){a=$(a);var c=a.tagName.toLowerCase();Form.Element.Serializers[c](a,b);return a},clear:function(a){$(a).value="";return a},present:function(a){return $(a).value!=""},activate:function(a){a=$(a);try{a.focus();if(a.select&&(a.tagName.toLowerCase()!="input"||!["button","reset","submit"].include(a.type))){a.select()}}catch(b){}return a},disable:function(a){a=$(a);a.blur();a.disabled=true;return a},enable:function(a){a=$(a);a.disabled=false;return a}};var Field=Form.Element;var $F=Form.Element.Methods.getValue;Form.Element.Serializers={input:function(a,b){switch(a.type.toLowerCase()){case"checkbox":case"radio":return Form.Element.Serializers.inputSelector(a,b);default:return Form.Element.Serializers.textarea(a,b)}},inputSelector:function(a,b){if(Object.isUndefined(b)){return a.checked?a.value:null}else{a.checked=!!b}},textarea:function(a,b){if(Object.isUndefined(b)){return a.value}else{a.value=b}},select:function(d,a){if(Object.isUndefined(a)){return this[d.type=="select-one"?"selectOne":"selectMany"](d)}else{var c,f,g=!Object.isArray(a);for(var b=0,e=d.length;b<e;b++){c=d.options[b];f=this.optionValue(c);if(g){if(f==a){c.selected=true;return}}else{c.selected=a.include(f)}}}},selectOne:function(b){var a=b.selectedIndex;return a>=0?this.optionValue(b.options[a]):null},selectMany:function(d){var a,e=d.length;if(!e){return null}for(var c=0,a=[];c<e;c++){var b=d.options[c];if(b.selected){a.push(this.optionValue(b))}}return a},optionValue:function(a){return Element.extend(a).hasAttribute("value")?a.value:a.text}};Abstract.TimedObserver=Class.create(PeriodicalExecuter,{initialize:function($super,a,b,c){$super(c,b);this.element=$(a);this.lastValue=this.getValue()},execute:function(){var a=this.getValue();if(Object.isString(this.lastValue)&&Object.isString(a)?this.lastValue!=a:String(this.lastValue)!=String(a)){this.callback(this.element,a);this.lastValue=a}}});Form.Element.Observer=Class.create(Abstract.TimedObserver,{getValue:function(){return Form.Element.getValue(this.element)}});Form.Observer=Class.create(Abstract.TimedObserver,{getValue:function(){return Form.serialize(this.element)}});Abstract.EventObserver=Class.create({initialize:function(a,b){this.element=$(a);this.callback=b;this.lastValue=this.getValue();if(this.element.tagName.toLowerCase()=="form"){this.registerFormCallbacks()}else{this.registerCallback(this.element)}},onElementEvent:function(){var a=this.getValue();if(this.lastValue!=a){this.callback(this.element,a);this.lastValue=a}},registerFormCallbacks:function(){Form.getElements(this.element).each(this.registerCallback,this)},registerCallback:function(a){if(a.type){switch(a.type.toLowerCase()){case"checkbox":case"radio":Event.observe(a,"click",this.onElementEvent.bind(this));break;default:Event.observe(a,"change",this.onElementEvent.bind(this));break}}}});Form.Element.EventObserver=Class.create(Abstract.EventObserver,{getValue:function(){return Form.Element.getValue(this.element)}});Form.EventObserver=Class.create(Abstract.EventObserver,{getValue:function(){return Form.serialize(this.element)}});if(!window.Event){var Event={}}Object.extend(Event,{KEY_BACKSPACE:8,KEY_TAB:9,KEY_RETURN:13,KEY_ESC:27,KEY_LEFT:37,KEY_UP:38,KEY_RIGHT:39,KEY_DOWN:40,KEY_DELETE:46,KEY_HOME:36,KEY_END:35,KEY_PAGEUP:33,KEY_PAGEDOWN:34,KEY_INSERT:45,cache:{},relatedTarget:function(b){var a;switch(b.type){case"mouseover":a=b.fromElement;break;case"mouseout":a=b.toElement;break;default:return null}return Element.extend(a)}});Event.Methods=(function(){var a;if(Prototype.Browser.IE){var b={0:1,1:4,2:2};a=function(d,c){return d.button==b[c]}}else{if(Prototype.Browser.WebKit){a=function(d,c){switch(c){case 0:return d.which==1&&!d.metaKey;case 1:return d.which==1&&d.metaKey;default:return false}}}else{a=function(d,c){return d.which?(d.which===c+1):(d.button===c)}}}return{isLeftClick:function(c){return a(c,0)},isMiddleClick:function(c){return a(c,1)},isRightClick:function(c){return a(c,2)},element:function(d){var c=Event.extend(d).target;return Element.extend(c.nodeType==Node.TEXT_NODE?c.parentNode:c)},findElement:function(d,f){var c=Event.element(d);if(!f){return c}var e=[c].concat(c.ancestors());return Selector.findElement(e,f,0)},pointer:function(c){return{x:c.pageX||(c.clientX+(document.documentElement.scrollLeft||document.body.scrollLeft)),y:c.pageY||(c.clientY+(document.documentElement.scrollTop||document.body.scrollTop))}},pointerX:function(c){return Event.pointer(c).x},pointerY:function(c){return Event.pointer(c).y},stop:function(c){Event.extend(c);c.preventDefault();c.stopPropagation();c.stopped=true}}})();Event.extend=(function(){var a=Object.keys(Event.Methods).inject({},function(b,c){b[c]=Event.Methods[c].methodize();return b});if(Prototype.Browser.IE){Object.extend(a,{stopPropagation:function(){this.cancelBubble=true},preventDefault:function(){this.returnValue=false},inspect:function(){return"[object Event]"}});return function(b){if(!b){return false}if(b._extendedByPrototype){return b}b._extendedByPrototype=Prototype.emptyFunction;var c=Event.pointer(b);Object.extend(b,{target:b.srcElement,relatedTarget:Event.relatedTarget(b),pageX:c.x,pageY:c.y});return Object.extend(b,a)}}else{Event.prototype=Event.prototype||document.createEvent("HTMLEvents").__proto__;Object.extend(Event.prototype,a);return Prototype.K}})();Object.extend(Event,(function(){var b=Event.cache;function c(j){if(j._prototypeEventID){return j._prototypeEventID[0]}arguments.callee.id=arguments.callee.id||1;return j._prototypeEventID=[++arguments.callee.id]}function g(j){if(j&&j.include(":")){return"dataavailable"}return j}function a(j){return b[j]=b[j]||{}}function f(l,j){var k=a(l);return k[j]=k[j]||[]}function h(k,j,l){var o=c(k);var n=f(o,j);if(n.pluck("handler").include(l)){return false}var m=function(p){if(!Event||!Event.extend||(p.eventName&&p.eventName!=j)){return false}Event.extend(p);l.call(k,p)};m.handler=l;n.push(m);return m}function i(m,j,k){var l=f(m,j);return l.find(function(n){return n.handler==k})}function d(m,j,k){var l=a(m);if(!l[j]){return false}l[j]=l[j].without(i(m,j,k))}function e(){for(var k in b){for(var j in b[k]){b[k][j]=null}}}if(window.attachEvent){window.attachEvent("onunload",e)}return{observe:function(l,j,m){l=$(l);var k=g(j);var n=h(l,j,m);if(!n){return l}if(l.addEventListener){l.addEventListener(k,n,false)}else{l.attachEvent("on"+k,n)}return l},stopObserving:function(l,j,m){l=$(l);var o=c(l),k=g(j);if(!m&&j){f(o,j).each(function(p){if(l&&l.stopObserving){l.stopObserving(j,p.handler)}});return l}else{if(!j){Object.keys(a(o)).each(function(p){l.stopObserving(p)});return l}}var n=i(o,j,m);if(!n){return l}if(l.removeEventListener){l.removeEventListener(k,n,false)}else{l.detachEvent("on"+k,n)}d(o,j,m);return l},fire:function(l,k,j){l=$(l);if(l==document&&document.createEvent&&!l.dispatchEvent){l=document.documentElement}var m;if(document.createEvent){m=document.createEvent("HTMLEvents");m.initEvent("dataavailable",true,true)}else{m=document.createEventObject();m.eventType="ondataavailable"}m.eventName=k;m.memo=j||{};if(document.createEvent){l.dispatchEvent(m)}else{l.fireEvent(m.eventType,m)}return Event.extend(m)}}})());Object.extend(Event,Event.Methods);Element.addMethods({fire:Event.fire,observe:Event.observe,stopObserving:Event.stopObserving});Object.extend(document,{fire:Element.Methods.fire.methodize(),observe:Element.Methods.observe.methodize(),stopObserving:Element.Methods.stopObserving.methodize(),loaded:false});(function(){var b;function a(){if(document.loaded){return}if(b){window.clearInterval(b)}document.fire("dom:loaded");document.loaded=true}if(document.addEventListener){if(Prototype.Browser.WebKit){b=window.setInterval(function(){if(/loaded|complete/.test(document.readyState)){a()}},0);Event.observe(window,"load",a)}else{document.addEventListener("DOMContentLoaded",a,false)}}else{document.write("<script id=__onDOMContentLoaded defer src=//:><\/script>");$("__onDOMContentLoaded").onreadystatechange=function(){if(this.readyState=="complete"){this.onreadystatechange=null;a()}}}})();Hash.toQueryString=Object.toQueryString;var Toggle={display:Element.toggle};Element.Methods.childOf=Element.Methods.descendantOf;var Insertion={Before:function(a,b){return Element.insert(a,{before:b})},Top:function(a,b){return Element.insert(a,{top:b})},Bottom:function(a,b){return Element.insert(a,{bottom:b})},After:function(a,b){return Element.insert(a,{after:b})}};var $continue=new Error('"throw $continue" is deprecated, use "return" instead');var Position={includeScrollOffsets:false,prepare:function(){this.deltaX=window.pageXOffset||document.documentElement.scrollLeft||document.body.scrollLeft||0;this.deltaY=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop||0},within:function(b,a,c){if(this.includeScrollOffsets){return this.withinIncludingScrolloffsets(b,a,c)}this.xcomp=a;this.ycomp=c;this.offset=Element.cumulativeOffset(b);return(c>=this.offset[1]&&c<this.offset[1]+b.offsetHeight&&a>=this.offset[0]&&a<this.offset[0]+b.offsetWidth)},withinIncludingScrolloffsets:function(b,a,d){var c=Element.cumulativeScrollOffset(b);this.xcomp=a+c[0]-this.deltaX;this.ycomp=d+c[1]-this.deltaY;this.offset=Element.cumulativeOffset(b);return(this.ycomp>=this.offset[1]&&this.ycomp<this.offset[1]+b.offsetHeight&&this.xcomp>=this.offset[0]&&this.xcomp<this.offset[0]+b.offsetWidth)},overlap:function(b,a){if(!b){return 0}if(b=="vertical"){return((this.offset[1]+a.offsetHeight)-this.ycomp)/a.offsetHeight}if(b=="horizontal"){return((this.offset[0]+a.offsetWidth)-this.xcomp)/a.offsetWidth}},cumulativeOffset:Element.Methods.cumulativeOffset,positionedOffset:Element.Methods.positionedOffset,absolutize:function(a){Position.prepare();return Element.absolutize(a)},relativize:function(a){Position.prepare();return Element.relativize(a)},realOffset:Element.Methods.cumulativeScrollOffset,offsetParent:Element.Methods.getOffsetParent,page:Element.Methods.viewportOffset,clone:function(b,c,a){a=a||{};return Element.clonePosition(c,b,a)}};if(!document.getElementsByClassName){document.getElementsByClassName=function(b){function a(c){return c.blank()?null:"[contains(concat(' ', @class, ' '), ' "+c+" ')]"}b.getElementsByClassName=Prototype.BrowserFeatures.XPath?function(c,e){e=e.toString().strip();var d=/\s/.test(e)?$w(e).map(a).join(""):a(e);return d?document._getElementsByXPath(".//*"+d,c):[]}:function(e,f){f=f.toString().strip();var g=[],h=(/\s/.test(f)?$w(f):null);if(!h&&!f){return g}var c=$(e).getElementsByTagName("*");f=" "+f+" ";for(var d=0,k,j;k=c[d];d++){if(k.className&&(j=" "+k.className+" ")&&(j.include(f)||(h&&h.all(function(i){return !i.toString().blank()&&j.include(" "+i+" ")})))){g.push(Element.extend(k))}}return g};return function(d,c){return $(c||document.body).getElementsByClassName(d)}}(Element.Methods)}Element.ClassNames=Class.create();Element.ClassNames.prototype={initialize:function(a){this.element=$(a)},_each:function(a){this.element.className.split(/\s+/).select(function(b){return b.length>0})._each(a)},set:function(a){this.element.className=a},add:function(a){if(this.include(a)){return}this.set($A(this).concat(a).join(" "))},remove:function(a){if(!this.include(a)){return}this.set($A(this).without(a).join(" "))},toString:function(){return $A(this).join(" ")}};Object.extend(Element.ClassNames.prototype,Enumerable);Element.addMethods();

var Scriptaculous={Version:"1.8.1",require:function(a){document.write('<script type="text/javascript" src="'+a+'"><\/script>')},REQUIRED_PROTOTYPE:"1.6.0",load:function(){function a(b){var c=b.split(".");return parseInt(c[0])*100000+parseInt(c[1])*1000+parseInt(c[2])}if((typeof Prototype=="undefined")||(typeof Element=="undefined")||(typeof Element.Methods=="undefined")||(a(Prototype.Version)<a(Scriptaculous.REQUIRED_PROTOTYPE))){throw ("script.aculo.us requires the Prototype JavaScript framework >= "+Scriptaculous.REQUIRED_PROTOTYPE)}$A(document.getElementsByTagName("script")).findAll(function(b){return(b.src&&b.src.match(/scriptaculous\.js(\?.*)?$/))}).each(function(c){var d=c.src.replace(/scriptaculous\.js(\?.*)?$/,"");var b=c.src.match(/\?.*load=([a-z,]*)/);(b?b[1]:"builder,effects,dragdrop,controls,slider,sound").split(",").each(function(e){Scriptaculous.require(d+e+".js")})})}};Scriptaculous.load();

String.prototype.parseColor=function(){var a="#";if(this.slice(0,4)=="rgb("){var c=this.slice(4,this.length-1).split(",");var b=0;do{a+=parseInt(c[b]).toColorPart()}while(++b<3)}else{if(this.slice(0,1)=="#"){if(this.length==4){for(var b=1;b<4;b++){a+=(this.charAt(b)+this.charAt(b)).toLowerCase()}}if(this.length==7){a=this.toLowerCase()}}}return(a.length==7?a:(arguments[0]||this))};Element.collectTextNodes=function(a){return $A($(a).childNodes).collect(function(b){return(b.nodeType==3?b.nodeValue:(b.hasChildNodes()?Element.collectTextNodes(b):""))}).flatten().join("")};Element.collectTextNodesIgnoreClass=function(a,b){return $A($(a).childNodes).collect(function(c){return(c.nodeType==3?c.nodeValue:((c.hasChildNodes()&&!Element.hasClassName(c,b))?Element.collectTextNodesIgnoreClass(c,b):""))}).flatten().join("")};Element.setContentZoom=function(a,b){a=$(a);a.setStyle({fontSize:(b/100)+"em"});if(Prototype.Browser.WebKit){window.scrollBy(0,0)}return a};Element.getInlineOpacity=function(a){return $(a).style.opacity||""};Element.forceRerendering=function(a){try{a=$(a);var c=document.createTextNode(" ");a.appendChild(c);a.removeChild(c)}catch(b){}};var Effect={_elementDoesNotExistError:{name:"ElementDoesNotExistError",message:"The specified DOM element does not exist, but is required for this effect to operate"},Transitions:{linear:Prototype.K,sinoidal:function(a){return(-Math.cos(a*Math.PI)/2)+0.5},reverse:function(a){return 1-a},flicker:function(a){var a=((-Math.cos(a*Math.PI)/4)+0.75)+Math.random()/4;return a>1?1:a},wobble:function(a){return(-Math.cos(a*Math.PI*(9*a))/2)+0.5},pulse:function(b,a){a=a||5;return(((b%(1/a))*a).round()==0?((b*a*2)-(b*a*2).floor()):1-((b*a*2)-(b*a*2).floor()))},spring:function(a){return 1-(Math.cos(a*4.5*Math.PI)*Math.exp(-a*6))},none:function(a){return 0},full:function(a){return 1}},DefaultOptions:{duration:1,fps:100,sync:false,from:0,to:1,delay:0,queue:"parallel"},tagifyText:function(a){var b="position:relative";if(Prototype.Browser.IE){b+=";zoom:1"}a=$(a);$A(a.childNodes).each(function(c){if(c.nodeType==3){c.nodeValue.toArray().each(function(d){a.insertBefore(new Element("span",{style:b}).update(d==" "?String.fromCharCode(160):d),c)});Element.remove(c)}})},multiple:function(b,c){var e;if(((typeof b=="object")||Object.isFunction(b))&&(b.length)){e=b}else{e=$(b).childNodes}var a=Object.extend({speed:0.1,delay:0},arguments[2]||{});var d=a.delay;$A(e).each(function(g,f){new c(g,Object.extend(a,{delay:f*a.speed+d}))})},PAIRS:{slide:["SlideDown","SlideUp"],blind:["BlindDown","BlindUp"],appear:["Appear","Fade"]},toggle:function(b,c){b=$(b);c=(c||"appear").toLowerCase();var a=Object.extend({queue:{position:"end",scope:(b.id||"global"),limit:1}},arguments[2]||{});Effect[b.visible()?Effect.PAIRS[c][1]:Effect.PAIRS[c][0]](b,a)}};Effect.DefaultOptions.transition=Effect.Transitions.sinoidal;Effect.ScopedQueue=Class.create(Enumerable,{initialize:function(){this.effects=[];this.interval=null},_each:function(a){this.effects._each(a)},add:function(b){var c=new Date().getTime();var a=Object.isString(b.options.queue)?b.options.queue:b.options.queue.position;switch(a){case"front":this.effects.findAll(function(d){return d.state=="idle"}).each(function(d){d.startOn+=b.finishOn;d.finishOn+=b.finishOn});break;case"with-last":c=this.effects.pluck("startOn").max()||c;break;case"end":c=this.effects.pluck("finishOn").max()||c;break}b.startOn+=c;b.finishOn+=c;if(!b.options.queue.limit||(this.effects.length<b.options.queue.limit)){this.effects.push(b)}if(!this.interval){this.interval=setInterval(this.loop.bind(this),15)}},remove:function(a){this.effects=this.effects.reject(function(b){return b==a});if(this.effects.length==0){clearInterval(this.interval);this.interval=null}},loop:function(){var c=new Date().getTime();for(var b=0,a=this.effects.length;b<a;b++){this.effects[b]&&this.effects[b].loop(c)}}});Effect.Queues={instances:$H(),get:function(a){if(!Object.isString(a)){return a}return this.instances.get(a)||this.instances.set(a,new Effect.ScopedQueue())}};Effect.Queue=Effect.Queues.get("global");Effect.Base=Class.create({position:null,start:function(options){function codeForEvent(options,eventName){return((options[eventName+"Internal"]?"this.options."+eventName+"Internal(this);":"")+(options[eventName]?"this.options."+eventName+"(this);":""))}if(options&&options.transition===false){options.transition=Effect.Transitions.linear}this.options=Object.extend(Object.extend({},Effect.DefaultOptions),options||{});this.currentFrame=0;this.state="idle";this.startOn=this.options.delay*1000;this.finishOn=this.startOn+(this.options.duration*1000);this.fromToDelta=this.options.to-this.options.from;this.totalTime=this.finishOn-this.startOn;this.totalFrames=this.options.fps*this.options.duration;eval('this.render = function(pos){ if (this.state=="idle"){this.state="running";'+codeForEvent(this.options,"beforeSetup")+(this.setup?"this.setup();":"")+codeForEvent(this.options,"afterSetup")+'};if (this.state=="running"){pos=this.options.transition(pos)*'+this.fromToDelta+"+"+this.options.from+";this.position=pos;"+codeForEvent(this.options,"beforeUpdate")+(this.update?"this.update(pos);":"")+codeForEvent(this.options,"afterUpdate")+"}}");this.event("beforeStart");if(!this.options.sync){Effect.Queues.get(Object.isString(this.options.queue)?"global":this.options.queue.scope).add(this)}},loop:function(c){if(c>=this.startOn){if(c>=this.finishOn){this.render(1);this.cancel();this.event("beforeFinish");if(this.finish){this.finish()}this.event("afterFinish");return}var b=(c-this.startOn)/this.totalTime,a=(b*this.totalFrames).round();if(a>this.currentFrame){this.render(b);this.currentFrame=a}}},cancel:function(){if(!this.options.sync){Effect.Queues.get(Object.isString(this.options.queue)?"global":this.options.queue.scope).remove(this)}this.state="finished"},event:function(a){if(this.options[a+"Internal"]){this.options[a+"Internal"](this)}if(this.options[a]){this.options[a](this)}},inspect:function(){var a=$H();for(property in this){if(!Object.isFunction(this[property])){a.set(property,this[property])}}return"#<Effect:"+a.inspect()+",options:"+$H(this.options).inspect()+">"}});Effect.Parallel=Class.create(Effect.Base,{initialize:function(a){this.effects=a||[];this.start(arguments[1])},update:function(a){this.effects.invoke("render",a)},finish:function(a){this.effects.each(function(b){b.render(1);b.cancel();b.event("beforeFinish");if(b.finish){b.finish(a)}b.event("afterFinish")})}});Effect.Tween=Class.create(Effect.Base,{initialize:function(c,f,e){c=Object.isString(c)?$(c):c;var b=$A(arguments),d=b.last(),a=b.length==5?b[3]:null;this.method=Object.isFunction(d)?d.bind(c):Object.isFunction(c[d])?c[d].bind(c):function(g){c[d]=g};this.start(Object.extend({from:f,to:e},a||{}))},update:function(a){this.method(a)}});Effect.Event=Class.create(Effect.Base,{initialize:function(){this.start(Object.extend({duration:0},arguments[0]||{}))},update:Prototype.emptyFunction});Effect.Opacity=Class.create(Effect.Base,{initialize:function(b){this.element=$(b);if(!this.element){throw (Effect._elementDoesNotExistError)}if(Prototype.Browser.IE&&(!this.element.currentStyle.hasLayout)){this.element.setStyle({zoom:1})}var a=Object.extend({from:this.element.getOpacity()||0,to:1},arguments[1]||{});this.start(a)},update:function(a){this.element.setOpacity(a)}});Effect.Move=Class.create(Effect.Base,{initialize:function(b){this.element=$(b);if(!this.element){throw (Effect._elementDoesNotExistError)}var a=Object.extend({x:0,y:0,mode:"relative"},arguments[1]||{});this.start(a)},setup:function(){this.element.makePositioned();this.originalLeft=parseFloat(this.element.getStyle("left")||"0");this.originalTop=parseFloat(this.element.getStyle("top")||"0");if(this.options.mode=="absolute"){this.options.x=this.options.x-this.originalLeft;this.options.y=this.options.y-this.originalTop}},update:function(a){this.element.setStyle({left:(this.options.x*a+this.originalLeft).round()+"px",top:(this.options.y*a+this.originalTop).round()+"px"})}});Effect.MoveBy=function(b,a,c){return new Effect.Move(b,Object.extend({x:c,y:a},arguments[3]||{}))};Effect.Scale=Class.create(Effect.Base,{initialize:function(b,c){this.element=$(b);if(!this.element){throw (Effect._elementDoesNotExistError)}var a=Object.extend({scaleX:true,scaleY:true,scaleContent:true,scaleFromCenter:false,scaleMode:"box",scaleFrom:100,scaleTo:c},arguments[2]||{});this.start(a)},setup:function(){this.restoreAfterFinish=this.options.restoreAfterFinish||false;this.elementPositioning=this.element.getStyle("position");this.originalStyle={};["top","left","width","height","fontSize"].each(function(b){this.originalStyle[b]=this.element.style[b]}.bind(this));this.originalTop=this.element.offsetTop;this.originalLeft=this.element.offsetLeft;var a=this.element.getStyle("font-size")||"100%";["em","px","%","pt"].each(function(b){if(a.indexOf(b)>0){this.fontSize=parseFloat(a);this.fontSizeType=b}}.bind(this));this.factor=(this.options.scaleTo-this.options.scaleFrom)/100;this.dims=null;if(this.options.scaleMode=="box"){this.dims=[this.element.offsetHeight,this.element.offsetWidth]}if(/^content/.test(this.options.scaleMode)){this.dims=[this.element.scrollHeight,this.element.scrollWidth]}if(!this.dims){this.dims=[this.options.scaleMode.originalHeight,this.options.scaleMode.originalWidth]}},update:function(a){var b=(this.options.scaleFrom/100)+(this.factor*a);if(this.options.scaleContent&&this.fontSize){this.element.setStyle({fontSize:this.fontSize*b+this.fontSizeType})}this.setDimensions(this.dims[0]*b,this.dims[1]*b)},finish:function(a){if(this.restoreAfterFinish){this.element.setStyle(this.originalStyle)}},setDimensions:function(a,e){var f={};if(this.options.scaleX){f.width=e.round()+"px"}if(this.options.scaleY){f.height=a.round()+"px"}if(this.options.scaleFromCenter){var c=(a-this.dims[0])/2;var b=(e-this.dims[1])/2;if(this.elementPositioning=="absolute"){if(this.options.scaleY){f.top=this.originalTop-c+"px"}if(this.options.scaleX){f.left=this.originalLeft-b+"px"}}else{if(this.options.scaleY){f.top=-c+"px"}if(this.options.scaleX){f.left=-b+"px"}}}this.element.setStyle(f)}});Effect.Highlight=Class.create(Effect.Base,{initialize:function(b){this.element=$(b);if(!this.element){throw (Effect._elementDoesNotExistError)}var a=Object.extend({startcolor:"#ffff99"},arguments[1]||{});this.start(a)},setup:function(){if(this.element.getStyle("display")=="none"){this.cancel();return}this.oldStyle={};if(!this.options.keepBackgroundImage){this.oldStyle.backgroundImage=this.element.getStyle("background-image");this.element.setStyle({backgroundImage:"none"})}if(!this.options.endcolor){this.options.endcolor=this.element.getStyle("background-color").parseColor("#ffffff")}if(!this.options.restorecolor){this.options.restorecolor=this.element.getStyle("background-color")}this._base=$R(0,2).map(function(a){return parseInt(this.options.startcolor.slice(a*2+1,a*2+3),16)}.bind(this));this._delta=$R(0,2).map(function(a){return parseInt(this.options.endcolor.slice(a*2+1,a*2+3),16)-this._base[a]}.bind(this))},update:function(a){this.element.setStyle({backgroundColor:$R(0,2).inject("#",function(b,c,d){return b+((this._base[d]+(this._delta[d]*a)).round().toColorPart())}.bind(this))})},finish:function(){this.element.setStyle(Object.extend(this.oldStyle,{backgroundColor:this.options.restorecolor}))}});Effect.ScrollTo=function(d){var c=arguments[1]||{},b=document.viewport.getScrollOffsets(),e=$(d).cumulativeOffset(),a=(window.height||document.body.scrollHeight)-document.viewport.getHeight();if(c.offset){e[1]+=c.offset}return new Effect.Tween(null,b.top,e[1]>a?a:e[1],c,function(f){scrollTo(b.left,f.round())})};Effect.Fade=function(c){c=$(c);var a=c.getInlineOpacity();var b=Object.extend({from:c.getOpacity()||1,to:0,afterFinishInternal:function(d){if(d.options.to!=0){return}d.element.hide().setStyle({opacity:a})}},arguments[1]||{});return new Effect.Opacity(c,b)};Effect.Appear=function(b){b=$(b);var a=Object.extend({from:(b.getStyle("display")=="none"?0:b.getOpacity()||0),to:1,afterFinishInternal:function(c){c.element.forceRerendering()},beforeSetup:function(c){c.element.setOpacity(c.options.from).show()}},arguments[1]||{});return new Effect.Opacity(b,a)};Effect.Puff=function(b){b=$(b);var a={opacity:b.getInlineOpacity(),position:b.getStyle("position"),top:b.style.top,left:b.style.left,width:b.style.width,height:b.style.height};return new Effect.Parallel([new Effect.Scale(b,200,{sync:true,scaleFromCenter:true,scaleContent:true,restoreAfterFinish:true}),new Effect.Opacity(b,{sync:true,to:0})],Object.extend({duration:1,beforeSetupInternal:function(c){Position.absolutize(c.effects[0].element)},afterFinishInternal:function(c){c.effects[0].element.hide().setStyle(a)}},arguments[1]||{}))};Effect.BlindUp=function(a){a=$(a);a.makeClipping();return new Effect.Scale(a,0,Object.extend({scaleContent:false,scaleX:false,restoreAfterFinish:true,afterFinishInternal:function(b){b.element.hide().undoClipping()}},arguments[1]||{}))};Effect.BlindDown=function(b){b=$(b);var a=b.getDimensions();return new Effect.Scale(b,100,Object.extend({scaleContent:false,scaleX:false,scaleFrom:0,scaleMode:{originalHeight:a.height,originalWidth:a.width},restoreAfterFinish:true,afterSetup:function(c){c.element.makeClipping().setStyle({height:"0px"}).show()},afterFinishInternal:function(c){c.element.undoClipping()}},arguments[1]||{}))};Effect.SwitchOff=function(b){b=$(b);var a=b.getInlineOpacity();return new Effect.Appear(b,Object.extend({duration:0.4,from:0,transition:Effect.Transitions.flicker,afterFinishInternal:function(c){new Effect.Scale(c.element,1,{duration:0.3,scaleFromCenter:true,scaleX:false,scaleContent:false,restoreAfterFinish:true,beforeSetup:function(d){d.element.makePositioned().makeClipping()},afterFinishInternal:function(d){d.element.hide().undoClipping().undoPositioned().setStyle({opacity:a})}})}},arguments[1]||{}))};Effect.DropOut=function(b){b=$(b);var a={top:b.getStyle("top"),left:b.getStyle("left"),opacity:b.getInlineOpacity()};return new Effect.Parallel([new Effect.Move(b,{x:0,y:100,sync:true}),new Effect.Opacity(b,{sync:true,to:0})],Object.extend({duration:0.5,beforeSetup:function(c){c.effects[0].element.makePositioned()},afterFinishInternal:function(c){c.effects[0].element.hide().undoPositioned().setStyle(a)}},arguments[1]||{}))};Effect.Shake=function(d){d=$(d);var b=Object.extend({distance:20,duration:0.5},arguments[1]||{});var e=parseFloat(b.distance);var c=parseFloat(b.duration)/10;var a={top:d.getStyle("top"),left:d.getStyle("left")};return new Effect.Move(d,{x:e,y:0,duration:c,afterFinishInternal:function(f){new Effect.Move(f.element,{x:-e*2,y:0,duration:c*2,afterFinishInternal:function(g){new Effect.Move(g.element,{x:e*2,y:0,duration:c*2,afterFinishInternal:function(h){new Effect.Move(h.element,{x:-e*2,y:0,duration:c*2,afterFinishInternal:function(i){new Effect.Move(i.element,{x:e*2,y:0,duration:c*2,afterFinishInternal:function(j){new Effect.Move(j.element,{x:-e,y:0,duration:c,afterFinishInternal:function(k){k.element.undoPositioned().setStyle(a)}})}})}})}})}})}})};Effect.SlideDown=function(c){c=$(c).cleanWhitespace();var a=c.down().getStyle("bottom");var b=c.getDimensions();return new Effect.Scale(c,100,Object.extend({scaleContent:false,scaleX:false,scaleFrom:window.opera?0:1,scaleMode:{originalHeight:b.height,originalWidth:b.width},restoreAfterFinish:true,afterSetup:function(d){d.element.makePositioned();d.element.down().makePositioned();if(window.opera){d.element.setStyle({top:""})}d.element.makeClipping().setStyle({height:"0px"}).show()},afterUpdateInternal:function(d){d.element.down().setStyle({bottom:(d.dims[0]-d.element.clientHeight)+"px"})},afterFinishInternal:function(d){d.element.undoClipping().undoPositioned();d.element.down().undoPositioned().setStyle({bottom:a})}},arguments[1]||{}))};Effect.SlideUp=function(c){c=$(c).cleanWhitespace();var a=c.down().getStyle("bottom");var b=c.getDimensions();return new Effect.Scale(c,window.opera?0:1,Object.extend({scaleContent:false,scaleX:false,scaleMode:"box",scaleFrom:100,scaleMode:{originalHeight:b.height,originalWidth:b.width},restoreAfterFinish:true,afterSetup:function(d){d.element.makePositioned();d.element.down().makePositioned();if(window.opera){d.element.setStyle({top:""})}d.element.makeClipping().show()},afterUpdateInternal:function(d){d.element.down().setStyle({bottom:(d.dims[0]-d.element.clientHeight)+"px"})},afterFinishInternal:function(d){d.element.hide().undoClipping().undoPositioned();d.element.down().undoPositioned().setStyle({bottom:a})}},arguments[1]||{}))};Effect.Squish=function(a){return new Effect.Scale(a,window.opera?1:0,{restoreAfterFinish:true,beforeSetup:function(b){b.element.makeClipping()},afterFinishInternal:function(b){b.element.hide().undoClipping()}})};Effect.Grow=function(c){c=$(c);var b=Object.extend({direction:"center",moveTransition:Effect.Transitions.sinoidal,scaleTransition:Effect.Transitions.sinoidal,opacityTransition:Effect.Transitions.full},arguments[1]||{});var a={top:c.style.top,left:c.style.left,height:c.style.height,width:c.style.width,opacity:c.getInlineOpacity()};var g=c.getDimensions();var h,f;var e,d;switch(b.direction){case"top-left":h=f=e=d=0;break;case"top-right":h=g.width;f=d=0;e=-g.width;break;case"bottom-left":h=e=0;f=g.height;d=-g.height;break;case"bottom-right":h=g.width;f=g.height;e=-g.width;d=-g.height;break;case"center":h=g.width/2;f=g.height/2;e=-g.width/2;d=-g.height/2;break}return new Effect.Move(c,{x:h,y:f,duration:0.01,beforeSetup:function(i){i.element.hide().makeClipping().makePositioned()},afterFinishInternal:function(i){new Effect.Parallel([new Effect.Opacity(i.element,{sync:true,to:1,from:0,transition:b.opacityTransition}),new Effect.Move(i.element,{x:e,y:d,sync:true,transition:b.moveTransition}),new Effect.Scale(i.element,100,{scaleMode:{originalHeight:g.height,originalWidth:g.width},sync:true,scaleFrom:window.opera?1:0,transition:b.scaleTransition,restoreAfterFinish:true})],Object.extend({beforeSetup:function(j){j.effects[0].element.setStyle({height:"0px"}).show()},afterFinishInternal:function(j){j.effects[0].element.undoClipping().undoPositioned().setStyle(a)}},b))}})};Effect.Shrink=function(c){c=$(c);var b=Object.extend({direction:"center",moveTransition:Effect.Transitions.sinoidal,scaleTransition:Effect.Transitions.sinoidal,opacityTransition:Effect.Transitions.none},arguments[1]||{});var a={top:c.style.top,left:c.style.left,height:c.style.height,width:c.style.width,opacity:c.getInlineOpacity()};var f=c.getDimensions();var e,d;switch(b.direction){case"top-left":e=d=0;break;case"top-right":e=f.width;d=0;break;case"bottom-left":e=0;d=f.height;break;case"bottom-right":e=f.width;d=f.height;break;case"center":e=f.width/2;d=f.height/2;break}return new Effect.Parallel([new Effect.Opacity(c,{sync:true,to:0,from:1,transition:b.opacityTransition}),new Effect.Scale(c,window.opera?1:0,{sync:true,transition:b.scaleTransition,restoreAfterFinish:true}),new Effect.Move(c,{x:e,y:d,sync:true,transition:b.moveTransition})],Object.extend({beforeStartInternal:function(g){g.effects[0].element.makePositioned().makeClipping()},afterFinishInternal:function(g){g.effects[0].element.hide().undoClipping().undoPositioned().setStyle(a)}},b))};Effect.Pulsate=function(c){c=$(c);var b=arguments[1]||{};var a=c.getInlineOpacity();var e=b.transition||Effect.Transitions.sinoidal;var d=function(f){return e(1-Effect.Transitions.pulse(f,b.pulses))};d.bind(e);return new Effect.Opacity(c,Object.extend(Object.extend({duration:2,from:0,afterFinishInternal:function(f){f.element.setStyle({opacity:a})}},b),{transition:d}))};Effect.Fold=function(b){b=$(b);var a={top:b.style.top,left:b.style.left,width:b.style.width,height:b.style.height};b.makeClipping();return new Effect.Scale(b,5,Object.extend({scaleContent:false,scaleX:false,afterFinishInternal:function(c){new Effect.Scale(b,1,{scaleContent:false,scaleY:false,afterFinishInternal:function(d){d.element.hide().undoClipping().setStyle(a)}})}},arguments[1]||{}))};Effect.Morph=Class.create(Effect.Base,{initialize:function(c){this.element=$(c);if(!this.element){throw (Effect._elementDoesNotExistError)}var a=Object.extend({style:{}},arguments[1]||{});if(!Object.isString(a.style)){this.style=$H(a.style)}else{if(a.style.include(":")){this.style=a.style.parseStyle()}else{this.element.addClassName(a.style);this.style=$H(this.element.getStyles());this.element.removeClassName(a.style);var b=this.element.getStyles();this.style=this.style.reject(function(d){return d.value==b[d.key]});a.afterFinishInternal=function(d){d.element.addClassName(d.options.style);d.transforms.each(function(e){d.element.style[e.style]=""})}}}this.start(a)},setup:function(){function a(b){if(!b||["rgba(0, 0, 0, 0)","transparent"].include(b)){b="#ffffff"}b=b.parseColor();return $R(0,2).map(function(c){return parseInt(b.slice(c*2+1,c*2+3),16)})}this.transforms=this.style.map(function(g){var f=g[0],e=g[1],d=null;if(e.parseColor("#zzzzzz")!="#zzzzzz"){e=e.parseColor();d="color"}else{if(f=="opacity"){e=parseFloat(e);if(Prototype.Browser.IE&&(!this.element.currentStyle.hasLayout)){this.element.setStyle({zoom:1})}}else{if(Element.CSS_LENGTH.test(e)){var c=e.match(/^([\+\-]?[0-9\.]+)(.*)$/);e=parseFloat(c[1]);d=(c.length==3)?c[2]:null}}}var b=this.element.getStyle(f);return{style:f.camelize(),originalValue:d=="color"?a(b):parseFloat(b||0),targetValue:d=="color"?a(e):e,unit:d}}.bind(this)).reject(function(b){return((b.originalValue==b.targetValue)||(b.unit!="color"&&(isNaN(b.originalValue)||isNaN(b.targetValue))))})},update:function(a){var d={},b,c=this.transforms.length;while(c--){d[(b=this.transforms[c]).style]=b.unit=="color"?"#"+(Math.round(b.originalValue[0]+(b.targetValue[0]-b.originalValue[0])*a)).toColorPart()+(Math.round(b.originalValue[1]+(b.targetValue[1]-b.originalValue[1])*a)).toColorPart()+(Math.round(b.originalValue[2]+(b.targetValue[2]-b.originalValue[2])*a)).toColorPart():(b.originalValue+(b.targetValue-b.originalValue)*a).toFixed(3)+(b.unit===null?"":b.unit)}this.element.setStyle(d,true)}});Effect.Transform=Class.create({initialize:function(a){this.tracks=[];this.options=arguments[1]||{};this.addTracks(a)},addTracks:function(a){a.each(function(b){b=$H(b);var c=b.values().first();this.tracks.push($H({ids:b.keys().first(),effect:Effect.Morph,options:{style:c}}))}.bind(this));return this},play:function(){return new Effect.Parallel(this.tracks.map(function(a){var d=a.get("ids"),c=a.get("effect"),b=a.get("options");var e=[$(d)||$$(d)].flatten();return e.map(function(f){return new c(f,Object.extend({sync:true},b))})}).flatten(),this.options)}});Element.CSS_PROPERTIES=$w("backgroundColor backgroundPosition borderBottomColor borderBottomStyle borderBottomWidth borderLeftColor borderLeftStyle borderLeftWidth borderRightColor borderRightStyle borderRightWidth borderSpacing borderTopColor borderTopStyle borderTopWidth bottom clip color fontSize fontWeight height left letterSpacing lineHeight marginBottom marginLeft marginRight marginTop markerOffset maxHeight maxWidth minHeight minWidth opacity outlineColor outlineOffset outlineWidth paddingBottom paddingLeft paddingRight paddingTop right textIndent top width wordSpacing zIndex");Element.CSS_LENGTH=/^(([\+\-]?[0-9\.]+)(em|ex|px|in|cm|mm|pt|pc|\%))|0$/;String.__parseStyleElement=document.createElement("div");String.prototype.parseStyle=function(){var b,a=$H();if(Prototype.Browser.WebKit){b=new Element("div",{style:this}).style}else{String.__parseStyleElement.innerHTML='<div style="'+this+'"></div>';b=String.__parseStyleElement.childNodes[0].style}Element.CSS_PROPERTIES.each(function(c){if(b[c]){a.set(c,b[c])}});if(Prototype.Browser.IE&&this.include("opacity")){a.set("opacity",this.match(/opacity:\s*((?:0|1)?(?:\.\d*)?)/)[1])}return a};if(document.defaultView&&document.defaultView.getComputedStyle){Element.getStyles=function(b){var a=document.defaultView.getComputedStyle($(b),null);return Element.CSS_PROPERTIES.inject({},function(c,d){c[d]=a[d];return c})}}else{Element.getStyles=function(b){b=$(b);var a=b.currentStyle,c;c=Element.CSS_PROPERTIES.inject({},function(d,e){d[e]=a[e];return d});if(!c.opacity){c.opacity=b.getOpacity()}return c}}Effect.Methods={morph:function(a,b){a=$(a);new Effect.Morph(a,Object.extend({style:b},arguments[2]||{}));return a},visualEffect:function(c,e,b){c=$(c);var d=e.dasherize().camelize(),a=d.charAt(0).toUpperCase()+d.substring(1);new Effect[a](c,b);return c},highlight:function(b,a){b=$(b);new Effect.Highlight(b,a);return b}};$w("fade appear grow shrink fold blindUp blindDown slideUp slideDown pulsate shake puff squish switchOff dropOut").each(function(a){Effect.Methods[a]=function(c,b){c=$(c);Effect[a.charAt(0).toUpperCase()+a.substring(1)](c,b);return c}});$w("getInlineOpacity forceRerendering setContentZoom collectTextNodes collectTextNodesIgnoreClass getStyles").each(function(a){Effect.Methods[a]=Element[a]});Element.addMethods(Effect.Methods);

if(typeof Effect=="undefined"){throw ("controls.js requires including script.aculo.us' effects.js library")}var Autocompleter={};Autocompleter.Base=Class.create({baseInitialize:function(b,c,a){b=$(b);this.element=b;this.update=$(c);this.hasFocus=false;this.changed=false;this.active=false;this.index=0;this.entryCount=0;this.oldElementValue=this.element.value;if(this.setOptions){this.setOptions(a)}else{this.options=a||{}}this.options.paramName=this.options.paramName||this.element.name;this.options.tokens=this.options.tokens||[];this.options.frequency=this.options.frequency||0.4;this.options.minChars=this.options.minChars||1;this.options.onShow=this.options.onShow||function(d,e){if(!e.style.position||e.style.position=="absolute"){e.style.position="absolute";Position.clone(d,e,{setHeight:false,offsetTop:d.offsetHeight})}Effect.Appear(e,{duration:0.15})};this.options.onHide=this.options.onHide||function(d,e){new Effect.Fade(e,{duration:0.15})};if(typeof(this.options.tokens)=="string"){this.options.tokens=new Array(this.options.tokens)}if(!this.options.tokens.include("\n")){this.options.tokens.push("\n")}this.observer=null;this.element.setAttribute("autocomplete","off");Element.hide(this.update);Event.observe(this.element,"blur",this.onBlur.bindAsEventListener(this));Event.observe(this.element,"keypress",this.onKeyPress.bindAsEventListener(this))},show:function(){if(Element.getStyle(this.update,"display")=="none"){this.options.onShow(this.element,this.update)}if(!this.iefix&&(Prototype.Browser.IE)&&(Element.getStyle(this.update,"position")=="absolute")){new Insertion.After(this.update,'<iframe id="'+this.update.id+'_iefix" style="display:none;position:absolute;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0);" src="javascript:false;" frameborder="0" scrolling="no"></iframe>');this.iefix=$(this.update.id+"_iefix")}if(this.iefix){setTimeout(this.fixIEOverlapping.bind(this),50)}},fixIEOverlapping:function(){Position.clone(this.update,this.iefix,{setTop:(!this.update.style.height)});this.iefix.style.zIndex=1;this.update.style.zIndex=2;Element.show(this.iefix)},hide:function(){this.stopIndicator();if(Element.getStyle(this.update,"display")!="none"){this.options.onHide(this.element,this.update)}if(this.iefix){Element.hide(this.iefix)}},startIndicator:function(){if(this.options.indicator){Element.show(this.options.indicator)}},stopIndicator:function(){if(this.options.indicator){Element.hide(this.options.indicator)}},onKeyPress:function(a){if(this.active){switch(a.keyCode){case Event.KEY_TAB:case Event.KEY_RETURN:this.selectEntry();Event.stop(a);case Event.KEY_ESC:this.hide();this.active=false;Event.stop(a);return;case Event.KEY_LEFT:case Event.KEY_RIGHT:return;case Event.KEY_UP:this.markPrevious();this.render();Event.stop(a);return;case Event.KEY_DOWN:this.markNext();this.render();Event.stop(a);return}}else{if(a.keyCode==Event.KEY_TAB||a.keyCode==Event.KEY_RETURN||(Prototype.Browser.WebKit>0&&a.keyCode==0)){return}}this.changed=true;this.hasFocus=true;if(this.observer){clearTimeout(this.observer)}this.observer=setTimeout(this.onObserverEvent.bind(this),this.options.frequency*1000)},activate:function(){this.changed=false;this.hasFocus=true;this.getUpdatedChoices()},onHover:function(b){var a=Event.findElement(b,"LI");if(this.index!=a.autocompleteIndex){this.index=a.autocompleteIndex;this.render()}Event.stop(b)},onClick:function(b){var a=Event.findElement(b,"LI");this.index=a.autocompleteIndex;this.selectEntry();this.hide()},onBlur:function(a){setTimeout(this.hide.bind(this),250);this.hasFocus=false;this.active=false},render:function(){if(this.entryCount>0){for(var a=0;a<this.entryCount;a++){this.index==a?Element.addClassName(this.getEntry(a),"selected"):Element.removeClassName(this.getEntry(a),"selected")}if(this.hasFocus){this.show();this.active=true}}else{this.active=false;this.hide()}},markPrevious:function(){if(this.index>0){this.index--}else{this.index=this.entryCount-1}this.getEntry(this.index).scrollIntoView(true)},markNext:function(){if(this.index<this.entryCount-1){this.index++}else{this.index=0}this.getEntry(this.index).scrollIntoView(false)},getEntry:function(a){return this.update.firstChild.childNodes[a]},getCurrentEntry:function(){return this.getEntry(this.index)},selectEntry:function(){this.active=false;this.updateElement(this.getCurrentEntry())},updateElement:function(f){if(this.options.updateElement){this.options.updateElement(f);return}var d="";if(this.options.select){var a=$(f).select("."+this.options.select)||[];if(a.length>0){d=Element.collectTextNodes(a[0],this.options.select)}}else{d=Element.collectTextNodesIgnoreClass(f,"informal")}var c=this.getTokenBounds();if(c[0]!=-1){var e=this.element.value.substr(0,c[0]);var b=this.element.value.substr(c[0]).match(/^\s+/);if(b){e+=b[0]}this.element.value=e+d+this.element.value.substr(c[1])}else{this.element.value=d}this.oldElementValue=this.element.value;this.element.focus();if(this.options.afterUpdateElement){this.options.afterUpdateElement(this.element,f)}},updateChoices:function(c){if(!this.changed&&this.hasFocus){this.update.innerHTML=c;Element.cleanWhitespace(this.update);Element.cleanWhitespace(this.update.down());if(this.update.firstChild&&this.update.down().childNodes){this.entryCount=this.update.down().childNodes.length;for(var a=0;a<this.entryCount;a++){var b=this.getEntry(a);b.autocompleteIndex=a;this.addObservers(b)}}else{this.entryCount=0}this.stopIndicator();this.index=0;if(this.entryCount==1&&this.options.autoSelect){this.selectEntry();this.hide()}else{this.render()}}},addObservers:function(a){Event.observe(a,"mouseover",this.onHover.bindAsEventListener(this));Event.observe(a,"click",this.onClick.bindAsEventListener(this))},onObserverEvent:function(){this.changed=false;this.tokenBounds=null;if(this.getToken().length>=this.options.minChars){this.getUpdatedChoices()}else{this.active=false;this.hide()}this.oldElementValue=this.element.value},getToken:function(){var a=this.getTokenBounds();return this.element.value.substring(a[0],a[1]).strip()},getTokenBounds:function(){if(null!=this.tokenBounds){return this.tokenBounds}var e=this.element.value;if(e.strip().empty()){return[-1,0]}var f=arguments.callee.getFirstDifferencePos(e,this.oldElementValue);var h=(f==this.oldElementValue.length?1:0);var d=-1,c=e.length;var g;for(var b=0,a=this.options.tokens.length;b<a;++b){g=e.lastIndexOf(this.options.tokens[b],f+h-1);if(g>d){d=g}g=e.indexOf(this.options.tokens[b],f+h);if(-1!=g&&g<c){c=g}}return(this.tokenBounds=[d+1,c])}});Autocompleter.Base.prototype.getTokenBounds.getFirstDifferencePos=function(c,a){var d=Math.min(c.length,a.length);for(var b=0;b<d;++b){if(c[b]!=a[b]){return b}}return d};Ajax.Autocompleter=Class.create(Autocompleter.Base,{initialize:function(c,d,b,a){this.baseInitialize(c,d,a);this.options.asynchronous=true;this.options.onComplete=this.onComplete.bind(this);this.options.defaultParams=this.options.parameters||null;this.url=b},getUpdatedChoices:function(){this.startIndicator();var a=encodeURIComponent(this.options.paramName)+"="+encodeURIComponent(this.getToken());this.options.parameters=this.options.callback?this.options.callback(this.element,a):a;if(this.options.defaultParams){this.options.parameters+="&"+this.options.defaultParams}new Ajax.Request(this.url,this.options)},onComplete:function(a){this.updateChoices(a.responseText)}});Autocompleter.Local=Class.create(Autocompleter.Base,{initialize:function(b,d,c,a){this.baseInitialize(b,d,a);this.options.array=c},getUpdatedChoices:function(){this.updateChoices(this.options.selector(this))},setOptions:function(a){this.options=Object.extend({choices:10,partialSearch:true,partialChars:2,ignoreCase:true,fullSearch:false,selector:function(b){var d=[];var c=[];var h=b.getToken();var g=0;for(var e=0;e<b.options.array.length&&d.length<b.options.choices;e++){var f=b.options.array[e];var j=b.options.ignoreCase?f.toLowerCase().indexOf(h.toLowerCase()):f.indexOf(h);while(j!=-1){if(j==0&&f.length!=h.length){d.push("<li><strong>"+f.substr(0,h.length)+"</strong>"+f.substr(h.length)+"</li>");break}else{if(h.length>=b.options.partialChars&&b.options.partialSearch&&j!=-1){if(b.options.fullSearch||/\s/.test(f.substr(j-1,1))){c.push("<li>"+f.substr(0,j)+"<strong>"+f.substr(j,h.length)+"</strong>"+f.substr(j+h.length)+"</li>");break}}}j=b.options.ignoreCase?f.toLowerCase().indexOf(h.toLowerCase(),j+1):f.indexOf(h,j+1)}}if(c.length){d=d.concat(c.slice(0,b.options.choices-d.length))}return"<ul>"+d.join("")+"</ul>"}},a||{})}});Field.scrollFreeActivate=function(a){setTimeout(function(){Field.activate(a)},1)};Ajax.InPlaceEditor=Class.create({initialize:function(c,b,a){this.url=b;this.element=c=$(c);this.prepareOptions();this._controls={};arguments.callee.dealWithDeprecatedOptions(a);Object.extend(this.options,a||{});if(!this.options.formId&&this.element.id){this.options.formId=this.element.id+"-inplaceeditor";if($(this.options.formId)){this.options.formId=""}}if(this.options.externalControl){this.options.externalControl=$(this.options.externalControl)}if(!this.options.externalControl){this.options.externalControlOnly=false}this._originalBackground=this.element.getStyle("background-color")||"transparent";this.element.title=this.options.clickToEditText;this._boundCancelHandler=this.handleFormCancellation.bind(this);this._boundComplete=(this.options.onComplete||Prototype.emptyFunction).bind(this);this._boundFailureHandler=this.handleAJAXFailure.bind(this);this._boundSubmitHandler=this.handleFormSubmission.bind(this);this._boundWrapperHandler=this.wrapUp.bind(this);this.registerListeners()},checkForEscapeOrReturn:function(a){if(!this._editing||a.ctrlKey||a.altKey||a.shiftKey){return}if(Event.KEY_ESC==a.keyCode){this.handleFormCancellation(a)}else{if(Event.KEY_RETURN==a.keyCode){this.handleFormSubmission(a)}}},createControl:function(g,c,b){var e=this.options[g+"Control"];var f=this.options[g+"Text"];if("button"==e){var a=document.createElement("input");a.type="submit";a.value=f;a.className="editor_"+g+"_button";if("cancel"==g){a.onclick=this._boundCancelHandler}this._form.appendChild(a);this._controls[g]=a}else{if("link"==e){var d=document.createElement("a");d.href="#";d.appendChild(document.createTextNode(f));d.onclick="cancel"==g?this._boundCancelHandler:this._boundSubmitHandler;d.className="editor_"+g+"_link";if(b){d.className+=" "+b}this._form.appendChild(d);this._controls[g]=d}}},createEditField:function(){var c=(this.options.loadTextURL?this.options.loadingText:this.getText());var b;if(1>=this.options.rows&&!/\r|\n/.test(this.getText())){b=document.createElement("input");b.type="text";var a=this.options.size||this.options.cols||0;if(0<a){b.size=a}}else{b=document.createElement("textarea");b.rows=(1>=this.options.rows?this.options.autoRows:this.options.rows);b.cols=this.options.cols||40}b.name=this.options.paramName;b.value=c;b.className="editor_field";if(this.options.submitOnBlur){b.onblur=this._boundSubmitHandler}this._controls.editor=b;if(this.options.loadTextURL){this.loadExternalText()}this._form.appendChild(this._controls.editor)},createForm:function(){var b=this;function a(d,e){var c=b.options["text"+d+"Controls"];if(!c||e===false){return}b._form.appendChild(document.createTextNode(c))}this._form=$(document.createElement("form"));this._form.id=this.options.formId;this._form.addClassName(this.options.formClassName);this._form.onsubmit=this._boundSubmitHandler;this.createEditField();if("textarea"==this._controls.editor.tagName.toLowerCase()){this._form.appendChild(document.createElement("br"))}if(this.options.onFormCustomization){this.options.onFormCustomization(this,this._form)}a("Before",this.options.okControl||this.options.cancelControl);this.createControl("ok",this._boundSubmitHandler);a("Between",this.options.okControl&&this.options.cancelControl);this.createControl("cancel",this._boundCancelHandler,"editor_cancel");a("After",this.options.okControl||this.options.cancelControl)},destroy:function(){if(this._oldInnerHTML){this.element.innerHTML=this._oldInnerHTML}this.leaveEditMode();this.unregisterListeners()},enterEditMode:function(a){if(this._saving||this._editing){return}this._editing=true;this.triggerCallback("onEnterEditMode");if(this.options.externalControl){this.options.externalControl.hide()}this.element.hide();this.createForm();this.element.parentNode.insertBefore(this._form,this.element);if(!this.options.loadTextURL){this.postProcessEditField()}if(a){Event.stop(a)}},enterHover:function(a){if(this.options.hoverClassName){this.element.addClassName(this.options.hoverClassName)}if(this._saving){return}this.triggerCallback("onEnterHover")},getText:function(){return this.element.innerHTML},handleAJAXFailure:function(a){this.triggerCallback("onFailure",a);if(this._oldInnerHTML){this.element.innerHTML=this._oldInnerHTML;this._oldInnerHTML=null}},handleFormCancellation:function(a){this.wrapUp();if(a){Event.stop(a)}},handleFormSubmission:function(d){var b=this._form;var c=$F(this._controls.editor);this.prepareSubmission();var f=this.options.callback(b,c)||"";if(Object.isString(f)){f=f.toQueryParams()}f.editorId=this.element.id;if(this.options.htmlResponse){var a=Object.extend({evalScripts:true},this.options.ajaxOptions);Object.extend(a,{parameters:f,onComplete:this._boundWrapperHandler,onFailure:this._boundFailureHandler});new Ajax.Updater({success:this.element},this.url,a)}else{var a=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(a,{parameters:f,onComplete:this._boundWrapperHandler,onFailure:this._boundFailureHandler});new Ajax.Request(this.url,a)}if(d){Event.stop(d)}},leaveEditMode:function(){this.element.removeClassName(this.options.savingClassName);this.removeForm();this.leaveHover();this.element.style.backgroundColor=this._originalBackground;this.element.show();if(this.options.externalControl){this.options.externalControl.show()}this._saving=false;this._editing=false;this._oldInnerHTML=null;this.triggerCallback("onLeaveEditMode")},leaveHover:function(a){if(this.options.hoverClassName){this.element.removeClassName(this.options.hoverClassName)}if(this._saving){return}this.triggerCallback("onLeaveHover")},loadExternalText:function(){this._form.addClassName(this.options.loadingClassName);this._controls.editor.disabled=true;var a=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(a,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(c){this._form.removeClassName(this.options.loadingClassName);var b=c.responseText;if(this.options.stripLoadedTextTags){b=b.stripTags()}this._controls.editor.value=b;this._controls.editor.disabled=false;this.postProcessEditField()}.bind(this),onFailure:this._boundFailureHandler});new Ajax.Request(this.options.loadTextURL,a)},postProcessEditField:function(){var a=this.options.fieldPostCreation;if(a){$(this._controls.editor)["focus"==a?"focus":"activate"]()}},prepareOptions:function(){this.options=Object.clone(Ajax.InPlaceEditor.DefaultOptions);Object.extend(this.options,Ajax.InPlaceEditor.DefaultCallbacks);[this._extraDefaultOptions].flatten().compact().each(function(a){Object.extend(this.options,a)}.bind(this))},prepareSubmission:function(){this._saving=true;this.removeForm();this.leaveHover();this.showSaving()},registerListeners:function(){this._listeners={};var a;$H(Ajax.InPlaceEditor.Listeners).each(function(b){a=this[b.value].bind(this);this._listeners[b.key]=a;if(!this.options.externalControlOnly){this.element.observe(b.key,a)}if(this.options.externalControl){this.options.externalControl.observe(b.key,a)}}.bind(this))},removeForm:function(){if(!this._form){return}this._form.remove();this._form=null;this._controls={}},showSaving:function(){this._oldInnerHTML=this.element.innerHTML;this.element.innerHTML=this.options.savingText;this.element.addClassName(this.options.savingClassName);this.element.style.backgroundColor=this._originalBackground;this.element.show()},triggerCallback:function(b,a){if("function"==typeof this.options[b]){this.options[b](this,a)}},unregisterListeners:function(){$H(this._listeners).each(function(a){if(!this.options.externalControlOnly){this.element.stopObserving(a.key,a.value)}if(this.options.externalControl){this.options.externalControl.stopObserving(a.key,a.value)}}.bind(this))},wrapUp:function(a){this.leaveEditMode();this._boundComplete(a,this.element)}});Object.extend(Ajax.InPlaceEditor.prototype,{dispose:Ajax.InPlaceEditor.prototype.destroy});Ajax.InPlaceCollectionEditor=Class.create(Ajax.InPlaceEditor,{initialize:function($super,c,b,a){this._extraDefaultOptions=Ajax.InPlaceCollectionEditor.DefaultOptions;$super(c,b,a)},createEditField:function(){var a=document.createElement("select");a.name=this.options.paramName;a.size=1;this._controls.editor=a;this._collection=this.options.collection||[];if(this.options.loadCollectionURL){this.loadCollection()}else{this.checkForExternalText()}this._form.appendChild(this._controls.editor)},loadCollection:function(){this._form.addClassName(this.options.loadingClassName);this.showLoadingText(this.options.loadingCollectionText);var options=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(options,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(transport){var js=transport.responseText.strip();if(!/^\[.*\]$/.test(js)){throw"Server returned an invalid collection representation."}this._collection=eval(js);this.checkForExternalText()}.bind(this),onFailure:this.onFailure});new Ajax.Request(this.options.loadCollectionURL,options)},showLoadingText:function(b){this._controls.editor.disabled=true;var a=this._controls.editor.firstChild;if(!a){a=document.createElement("option");a.value="";this._controls.editor.appendChild(a);a.selected=true}a.update((b||"").stripScripts().stripTags())},checkForExternalText:function(){this._text=this.getText();if(this.options.loadTextURL){this.loadExternalText()}else{this.buildOptionList()}},loadExternalText:function(){this.showLoadingText(this.options.loadingText);var a=Object.extend({method:"get"},this.options.ajaxOptions);Object.extend(a,{parameters:"editorId="+encodeURIComponent(this.element.id),onComplete:Prototype.emptyFunction,onSuccess:function(b){this._text=b.responseText.strip();this.buildOptionList()}.bind(this),onFailure:this.onFailure});new Ajax.Request(this.options.loadTextURL,a)},buildOptionList:function(){this._form.removeClassName(this.options.loadingClassName);this._collection=this._collection.map(function(d){return 2===d.length?d:[d,d].flatten()});var b=("value" in this.options)?this.options.value:this._text;var a=this._collection.any(function(d){return d[0]==b}.bind(this));this._controls.editor.update("");var c;this._collection.each(function(e,d){c=document.createElement("option");c.value=e[0];c.selected=a?e[0]==b:0==d;c.appendChild(document.createTextNode(e[1]));this._controls.editor.appendChild(c)}.bind(this));this._controls.editor.disabled=false;Field.scrollFreeActivate(this._controls.editor)}});Ajax.InPlaceEditor.prototype.initialize.dealWithDeprecatedOptions=function(a){if(!a){return}function b(c,d){if(c in a||d===undefined){return}a[c]=d}b("cancelControl",(a.cancelLink?"link":(a.cancelButton?"button":a.cancelLink==a.cancelButton==false?false:undefined)));b("okControl",(a.okLink?"link":(a.okButton?"button":a.okLink==a.okButton==false?false:undefined)));b("highlightColor",a.highlightcolor);b("highlightEndColor",a.highlightendcolor)};Object.extend(Ajax.InPlaceEditor,{DefaultOptions:{ajaxOptions:{},autoRows:3,cancelControl:"link",cancelText:"cancel",clickToEditText:"Click to edit",externalControl:null,externalControlOnly:false,fieldPostCreation:"activate",formClassName:"inplaceeditor-form",formId:null,highlightColor:"#ffff99",highlightEndColor:"#ffffff",hoverClassName:"",htmlResponse:true,loadingClassName:"inplaceeditor-loading",loadingText:"Loading...",okControl:"button",okText:"ok",paramName:"value",rows:1,savingClassName:"inplaceeditor-saving",savingText:"Saving...",size:0,stripLoadedTextTags:false,submitOnBlur:false,textAfterControls:"",textBeforeControls:"",textBetweenControls:""},DefaultCallbacks:{callback:function(a){return Form.serialize(a)},onComplete:function(b,a){new Effect.Highlight(a,{startcolor:this.options.highlightColor,keepBackgroundImage:true})},onEnterEditMode:null,onEnterHover:function(a){a.element.style.backgroundColor=a.options.highlightColor;if(a._effect){a._effect.cancel()}},onFailure:function(b,a){alert("Error communication with the server: "+b.responseText.stripTags())},onFormCustomization:null,onLeaveEditMode:null,onLeaveHover:function(a){a._effect=new Effect.Highlight(a.element,{startcolor:a.options.highlightColor,endcolor:a.options.highlightEndColor,restorecolor:a._originalBackground,keepBackgroundImage:true})}},Listeners:{click:"enterEditMode",keydown:"checkForEscapeOrReturn",mouseover:"enterHover",mouseout:"leaveHover"}});Ajax.InPlaceCollectionEditor.DefaultOptions={loadingCollectionText:"Loading options..."};Form.Element.DelayedObserver=Class.create({initialize:function(b,a,c){this.delay=a||0.5;this.element=$(b);this.callback=c;this.timer=null;this.lastValue=$F(this.element);Event.observe(this.element,"keyup",this.delayedListener.bindAsEventListener(this))},delayedListener:function(a){if(this.lastValue==$F(this.element)){return}if(this.timer){clearTimeout(this.timer)}this.timer=setTimeout(this.onTimerEvent.bind(this),this.delay*1000);this.lastValue=$F(this.element)},onTimerEvent:function(){this.timer=null;this.callback(this.element,$F(this.element))}});

function jiveToggleTab(e,f){var d=$(e);if(d){var a=$(d.id+"-tab")}if(d&&d.style.display=="none"){if(a){a.className="jive-body-tab jive-body-tabcurrent";d.style.display="block"}for(var c=0;c<f.length;c++){var g=$(f[c]);if(g){var b=$(g.id+"-tab")}else{b=null}if(b){b.className="jive-body-tab";g.style.display="none"}}}}function jiveToggleOptions(a){if($(a+"-form").style.display!="none"){Element.hide(a+"-form");$(a+"-hdr").className="jive-compose-hdr-opt-closed"}else{$(a+"-form").style.display="block";$(a+"-hdr").className="jive-compose-hdr-opt"}}function jiveShowTopicFilter(a){if($(a).style.display!="none"){Element.toggle($(a))}else{Element.toggle($(a))}}function jiveToggleSpaceDetails(a){Element.toggle($(a));if($(a).style.display!="none"){$(a+"-less").style.display="";$(a+"-more").style.display="none"}else{$(a+"-more").style.display="";$(a+"-less").style.display="none"}}function jiveToggleSpaceDetails2(a){if($(a).className=="jive-space-namedesc-full"){$(a).className="";$(a+"-more").style.display="";$(a+"-less").style.display="none"}else{$(a).className="jive-space-namedesc-full";$(a+"-less").style.display="";$(a+"-more").style.display="none"}}function callOnLoad(a){if(window.addEventListener){window.addEventListener("load",a,false)}else{if(window.attachEvent){window.attachEvent("onload",a)}else{window.onload=a}}}Jive=Class.create();Jive.AlertMessage=function(b){var a=arguments[1]||{};new Effect.Appear(b,{queue:"front",scope:b,duration:1,beforeStart:a.beforeStart,afterFinish:function(c){new Pause(1);new Effect.Fade(b,{queue:"end",scope:c,duration:1,afterFinish:a.afterFinish})}})};function Pause(b,a){this.duration=b*1000;this.busywork=null;this.runner=0;if(arguments.length==2){this.busywork=a}this.pause(this.duration)}Pause.prototype.pause=function(b){if((b==null)||(b<0)){return}var a=(new Date()).getTime()+b;while(true){if((new Date()).getTime()>a){break}this.runner++;if(this.busywork!=null){this.busywork(this.runner)}}};var TimeoutExecutor=Class.create();TimeoutExecutor.prototype={initialize:function(b,a){this.callback=b;this.timeout=a;this.currentlyExecuting=false;this.registerCallback()},registerCallback:function(){this.timeoutID=setTimeout(this.onTimerEvent.bind(this),this.timeout)},onTimerEvent:function(){try{this.currentlyExecuting=true;if(this.callback&&this.callback instanceof Function){this.callback()}}finally{this.currentlyExecuting=false;delete this.timeoutID}},cancel:function(){if(!this.currentlyExecuting&&this.timeoutID){clearTimeout(this.timeoutID);delete this.timeoutID}},reset:function(){if(!this.currentlyExecuting&&this.timeoutID){clearTimeout(this.timeoutID);delete this.timeoutID;this.registerCallback()}}};var QuickUserProfile=Class.create();QuickUserProfile.prototype={initialize:function(d,c,b,a){this.loadingContent='<strong class="jive-tooltip2-loading">'+b+"</strong>";this.userTT=d;this.userTTURL=c.indexOf("?")<0?c+"?tooltip=true":c+"&tooltip=true";this.textErrorTT=a;this.jiveUserTips=new SuperNote("jiveTT",{showDelay:700,hideDelay:100,cssProp:"visibility",cssVis:"visible",cssHid:"hidden"})},getUserProfileTooltip:function(a){this.cancelTooltip();$(this.userTT).innerHTML=this.loadingContent;this.timeoutExecutor=new TimeoutExecutor(this.getUserProfile.bind(this,a),700)},getUserProfile:function(b){var a=this;new Ajax.Updater(this.userTT,this.userTTURL,{method:"get",parameters:{targetUser:b},onError:function(){$(this.userTT).innerHTML=a.textTTError}})},getRemoteUserProfileTooltip:function(h){var b="<span><img src='"+h.avatarUrl+"' width='48' height='48' class='jive-avatar' /></span>";var g="<h5>"+h.userDisplayName+"</h5>";var a="<span class='jive-note-user-status'>"+h.userStatus+"</span>";var c="<ul class='jive-profile-tt-fields'>";var i="";if(h.userPhone){i="<li><strong>Phone Number:</strong> "+h.userPhone+"</li>"}var d="";if(h.userEmail){d="<li><strong>Email:</strong> <a href='mailto:"+h.userEmail+"'>"+h.userEmail+"</a></li>"}var f="</ul>";var e="<p><a href='"+h.profileUrl+"'>View "+h.userDisplayName+"'s profile</a></p>";$(this.userTT).update(""+b+g+a+c+i+d+f+e);$(this.userTT).show()},cancelTooltip:function(){if(this.timeoutExecutor){this.timeoutExecutor.cancel()}}};var QuickContainerSummary=Class.create();QuickContainerSummary.prototype={initialize:function(d,c,b,a){this.loadingContent='<strong class="jive-tooltip2-loading">'+b+"</strong>";this.containerTT=d;this.containerTTUrl=c.indexOf("?")<0?c+"?tooltip=true":c+"&tooltip=true";this.textErrorTT=a;this.jiveUserTips=new SuperNote("jivecontainerTT",{showDelay:700,hideDelay:100,cssProp:"visibility",cssVis:"visible",cssHid:"hidden"})},getContainerTooltip:function(a,b){this.cancelTooltip();$(this.containerTT).innerHTML=this.loadingContent;this.timeoutExecutor=new TimeoutExecutor(this.getContainerInfo.bind(this,a,b),700)},getContainerInfo:function(b,c){var a=this;new Ajax.Updater(this.containerTT,this.containerTTUrl,{method:"get",parameters:{container:b,containerType:c},onError:function(){$(this.containerTT).innerHTML=a.textTTError}})},cancelTooltip:function(){if(this.timeoutExecutor){this.timeoutExecutor.cancel()}}};var QuickViewVideo=Class.create();QuickViewVideo.prototype={initialize:function(c,d,b,a){this.loadingContent='<strong class="jive-tooltip2-loading">'+b+"</strong>";this.videoTT=c;this.videoTTURL=d.indexOf("?")<0?d+"?tooltip=true":d+"&tooltip=true";this.textErrorTT=a;this.jiveUserTips=new SuperNote("jiveTT",{showDelay:700,hideDelay:100,cssProp:"visibility",cssVis:"visible",cssHid:"hidden"})},getVideoTooltip:function(a){this.cancelTooltip();$(this.videoTT).innerHTML=this.loadingContent;this.timeoutExecutor=new TimeoutExecutor(this.getViewVideo.bind(this,a),700)},getViewVideo:function(b){var a=this;new Ajax.Updater(this.videoTT,this.videoTTURL,{method:"get",parameters:{video:b},onError:function(){$(this.videoTT).innerHTML=a.textTTError}})},getRemoteVideoTooltip:function(b,a){$(this.videoTT).update("<div class=<p>View <a href="+a+">"+b+"</a></p>");$(this.videoTT).show()},cancelTooltip:function(){if(this.timeoutExecutor){this.timeoutExecutor.cancel()}}};

if(typeof Zapatec=="undefined"){Zapatec=function(){}}Zapatec.version="07-01";if(typeof Zapatec.zapatecPath=="undefined"){Zapatec.zapatecPath=function(){if(document.documentElement){var a=document.documentElement.innerHTML.match(/<script[^>]+src="([^"]*zapatec(-core|-src)?.js[^"]*)"/i);if(a&&a.length>=2){a=a[1].split("?");a=a[0].split("/");if(Array.prototype.pop){a.pop()}else{a.length-=1}return a.length?a.join("/")+"/":""}}return""}()}if(typeof Zapatec=="undefined"){Zapatec=function(){}}Zapatec.Utils={};Zapatec.Utils.getAbsolutePos=function(e,g){var a=0,d=0;if(!g){var c=/^div$/i.test(e.tagName);if(c&&e.scrollLeft){a=e.scrollLeft}if(c&&e.scrollTop){d=e.scrollTop}}var f={x:e.offsetLeft-a,y:e.offsetTop-d};if(e.offsetParent){var b=this.getAbsolutePos(e.offsetParent);f.x+=b.x;f.y+=b.y}return f};Zapatec.Utils.getElementOffset=function(c){var d=iTop=iWidth=iHeight=0;if(c.getBoundingClientRect){var f=c.getBoundingClientRect();d=f.left;iTop=f.top;iWidth=f.right-d;iHeight=f.bottom-iTop;d+=Zapatec.Utils.getPageScrollX()-2;iTop+=Zapatec.Utils.getPageScrollY()-2}else{iWidth=c.offsetWidth;iHeight=c.offsetHeight;var a=Zapatec.Utils.getStyleProperty(c,"position");if(a=="fixed"){d=c.offsetLeft+Zapatec.Utils.getPageScrollX();iTop=c.offsetTop+Zapatec.Utils.getPageScrollY()}else{if(a=="absolute"){while(c){var b=c.tagName;if(b){b=b.toLowerCase();if(b!="body"&&b!="html"){d+=parseInt(c.offsetLeft,10)||0;iTop+=parseInt(c.offsetTop,10)||0}}c=c.offsetParent;var b=c?c.tagName:null;if(b){b=b.toLowerCase();if(b!="body"&&b!="html"){d-=c.scrollLeft;iTop-=c.scrollTop}}}}else{var e=c;while(e){d+=parseInt(e.offsetLeft,10)||0;iTop+=parseInt(e.offsetTop,10)||0;e=e.offsetParent}e=c;while(e.parentNode){e=e.parentNode;var b=e.tagName;if(b){b=b.toLowerCase();if(b!="body"&&b!="html"&&b!="tr"){d-=e.scrollLeft;iTop-=e.scrollTop}}}}}}return{left:d,top:iTop,x:d,y:iTop,width:iWidth,height:iHeight}};Zapatec.Utils.getElementOffsetScrollable=function(b){var a=Zapatec.Utils.getElementOffset(b);if(b.scrollLeft){a.left-=b.scrollLeft;a.x=a.left}if(b.scrollTop){a.top-=b.scrollTop;a.y=a.top}return a};Zapatec.Utils.fixBoxPosition=function(e,a){var c=Zapatec.Utils.getPageScrollX();var b=Zapatec.Utils.getPageScrollY();var d=Zapatec.Utils.getWindowSize();a=parseInt(a,10)||0;if(e.x<c){e.x=c+a}if(e.y<b){e.y=b+a}if(e.x+e.width>c+d.width){e.x=c+d.width-e.width-a}if(e.y+e.height>b+d.height){e.y=b+d.height-e.height-a}};Zapatec.Utils.isRelated=function(c,a){a||(a=window.event);var f=a.relatedTarget;if(!f){var b=a.type;if(b=="mouseover"){f=a.fromElement}else{if(b=="mouseout"){f=a.toElement}}}try{while(f){if(f==c){return true}f=f.parentNode}}catch(d){}return false};Zapatec.Utils.removeClass=function(e,d){if(!(e&&e.className)){return}var a=e.className.split(" ");var b=[];for(var c=a.length;c>0;){if(a[--c]!=d){b[b.length]=a[c]}}e.className=b.join(" ")};Zapatec.Utils.addClass=function(b,a){Zapatec.Utils.removeClass(b,a);b.className+=" "+a};Zapatec.Utils.getElement=function(a){if(Zapatec.is_ie){return window.event.srcElement}else{return a.currentTarget}};Zapatec.Utils.getTargetElement=function(a){if(Zapatec.is_ie){return window.event.srcElement}else{return a.target}};Zapatec.Utils.getMousePos=function(d){d||(d=window.event);var c={pageX:0,pageY:0,clientX:0,clientY:0};if(d){var b=(typeof d.pageX!="undefined");var a=(typeof d.clientX!="undefined");if(b||a){if(b){c.pageX=d.pageX;c.pageY=d.pageY}else{c.pageX=d.clientX+Zapatec.Utils.getPageScrollX();c.pageY=d.clientY+Zapatec.Utils.getPageScrollY()}if(a){c.clientX=d.clientX;c.clientY=d.clientY}else{c.clientX=d.pageX-Zapatec.Utils.getPageScrollX();c.clientY=d.pageY-Zapatec.Utils.getPageScrollY()}}}return c};Zapatec.Utils.stopEvent=function(a){a||(a=window.event);if(a){if(Zapatec.is_ie){a.cancelBubble=true;a.returnValue=false}else{a.preventDefault();a.stopPropagation()}}return false};Zapatec.Utils.removeOnUnload=[];Zapatec.Utils.addEvent=function(c,d,b,a){if(c.addEventListener){if(!a){a=false}c.addEventListener(d,b,a)}else{if(c.attachEvent){c.detachEvent("on"+d,b);c.attachEvent("on"+d,b);if(a){c.setCapture(false)}}}Zapatec.Utils.removeOnUnload.push({element:c,event:d,listener:b,capture:a})};Zapatec.Utils.removeEvent=function(e,f,d,c){if(e.removeEventListener){e.removeEventListener(f,d,c)}else{if(e.detachEvent){e.detachEvent("on"+f,d)}}for(var b=Zapatec.Utils.removeOnUnload.length-1;b>=0;b--){var a=Zapatec.Utils.removeOnUnload[b];if(!a){continue}if(e==a.element&&f==a.event&&d==a.listener&&c==a.capture){Zapatec.Utils.removeOnUnload[b]=null;Zapatec.Utils.removeEvent(a.element,a.event,a.listener,a.capture)}}};Zapatec.Utils.createElement=function(d,c,a){var b=null;if(window.self.document.createElementNS){b=window.self.document.createElementNS("http://www.w3.org/1999/xhtml",d)}else{b=document.createElement(d)}if(typeof c!="undefined"&&c!=null){c.appendChild(b)}if(!a){if(Zapatec.is_ie){b.setAttribute("unselectable",true)}if(Zapatec.is_gecko){b.style.setProperty("-moz-user-select","none","")}}return b};Zapatec.Utils.writeCookie=function(c,e,d,f,b){e=escape(e);var a=c+"="+e,g;if(d){a+=";domain="+d}if(f){a+=";path="+f}if(b){g=new Date();g.setTime(b*86400000+g.getTime());a+=";expires="+g.toGMTString()}document.cookie=a};Zapatec.Utils.getCookie=function(b){var e=b+"=";var d=0;while(d<document.cookie.length){var a=d+e.length;if(document.cookie.substring(d,a)==e){var c=document.cookie.indexOf(";",a);if(c==-1){c=document.cookie.length}return unescape(document.cookie.substring(a,c))}d=document.cookie.indexOf(" ",d)+1;if(d==0){break}}return null};Zapatec.Utils.makePref=function(c){function d(e){if(typeof e=="object"&&!e){return"null"}else{if(typeof e=="number"||typeof e=="boolean"){return e}else{if(typeof e=="string"){return'"'+e.replace(/\x22/,"\\22")+'"'}else{return null}}}}var a="",b;for(b in c){a+=(a?",'":"'")+b+"':"+d(c[b])}return a};Zapatec.Utils.loadPref=function(b){var a=zapatecTransport.parseJson({strJson:"{"+b+"}"});if(!a||typeof a!="object"){a={}}return a};Zapatec.Utils.mergeObjects=function(a,c){for(var b in c){a[b]=c[b]}};Zapatec.Utils.__wch_id=0;Zapatec.Utils.createWCH=function(a){var c=null;a=a||document.body;if(Zapatec.is_ie&&!Zapatec.is_ie5){var b="filter:progid:DXImageTransform.Microsoft.alpha(style=0,opacity=0);";var d="WCH"+(++Zapatec.Utils.__wch_id);a.insertAdjacentHTML("beforeEnd",'<iframe id="'+d+'" scrolling="no" frameborder="0" style="z-index:0;position:absolute;visibility:hidden;'+b+'border:0;top:0;left:0;width:0;height:0" src="javascript:false"></iframe>');c=document.getElementById(d)}return c};Zapatec.Utils.setupWCH_el=function(j,a,d){if(j){var k=Zapatec.Utils.getAbsolutePos(a),g=k.x,n=k.y,c=g+a.offsetWidth,m=n+a.offsetHeight;if(d){var l=Zapatec.Utils.getAbsolutePos(d),i=l.x,e=l.y,h=i+d.offsetWidth,b=e+d.offsetHeight;if(g>i){g=i}if(n>e){n=e}if(c<h){c=h}if(m<b){m=b}}Zapatec.Utils.setupWCH(j,g,n,c-g,m-n)}};Zapatec.Utils.setupWCH=function(e,a,g,b,d){if(e){var c=e.style;(typeof a!="undefined")&&(c.left=a+"px");(typeof g!="undefined")&&(c.top=g+"px");(typeof b!="undefined")&&(c.width=b+"px");(typeof d!="undefined")&&(c.height=d+"px");c.visibility="inherit"}};Zapatec.Utils.hideWCH=function(a){if(a){a.style.visibility="hidden"}};Zapatec.Utils.getPageScrollY=function(){if(window.pageYOffset){return window.pageYOffset}else{if(document.body&&document.body.scrollTop){return document.body.scrollTop}else{if(document.documentElement&&document.documentElement.scrollTop){return document.documentElement.scrollTop}}}return 0};Zapatec.Utils.getPageScrollX=function(){if(window.pageXOffset){return window.pageXOffset}else{if(document.body&&document.body.scrollLeft){return document.body.scrollLeft}else{if(document.documentElement&&document.documentElement.scrollLeft){return document.documentElement.scrollLeft}}}return 0};Zapatec.ScrollWithWindow={};Zapatec.ScrollWithWindow.list=[];Zapatec.ScrollWithWindow.stickiness=0.25;Zapatec.ScrollWithWindow.register=function(a){var c=a.offsetTop||0;var b=a.offsetLeft||0;Zapatec.ScrollWithWindow.list.push({node:a,origTop:c,origLeft:b});if(!Zapatec.ScrollWithWindow.interval){Zapatec.ScrollWithWindow.on()}};Zapatec.ScrollWithWindow.unregister=function(a){for(var b=0;b<Zapatec.ScrollWithWindow.list.length;b++){var c=Zapatec.ScrollWithWindow.list[b];if(a==c.node){Zapatec.ScrollWithWindow.list.splice(b,1);if(!Zapatec.ScrollWithWindow.list.length){Zapatec.ScrollWithWindow.off()}return}}};Zapatec.ScrollWithWindow.moveTop=function(c){Zapatec.ScrollWithWindow.top+=(c-Zapatec.ScrollWithWindow.top)*Zapatec.ScrollWithWindow.stickiness;if(Math.abs(Zapatec.ScrollWithWindow.top-c)<=1){Zapatec.ScrollWithWindow.top=c}for(var b=0;b<Zapatec.ScrollWithWindow.list.length;b++){var d=Zapatec.ScrollWithWindow.list[b];var a=d.node;a.style.position="absolute";if(!d.origTop&&d.origTop!==0){d.origTop=parseInt(a.style.top)||0}a.style.top=d.origTop+parseInt(Zapatec.ScrollWithWindow.top)+"px"}};Zapatec.ScrollWithWindow.moveLeft=function(c){Zapatec.ScrollWithWindow.left+=(c-Zapatec.ScrollWithWindow.left)*Zapatec.ScrollWithWindow.stickiness;if(Math.abs(Zapatec.ScrollWithWindow.left-c)<=1){Zapatec.ScrollWithWindow.left=c}for(var b=0;b<Zapatec.ScrollWithWindow.list.length;b++){var d=Zapatec.ScrollWithWindow.list[b];var a=d.node;a.style.position="absolute";if(!d.origLeft&&d.origLeft!==0){d.origLeft=parseInt(a.style.left)||0}a.style.left=d.origLeft+parseInt(Zapatec.ScrollWithWindow.left)+"px"}};Zapatec.ScrollWithWindow.cycle=function(){var b=Zapatec.Utils.getPageScrollY();var a=Zapatec.Utils.getPageScrollX();if(b!=Zapatec.ScrollWithWindow.top){Zapatec.ScrollWithWindow.moveTop(b)}if(a!=Zapatec.ScrollWithWindow.left){Zapatec.ScrollWithWindow.moveLeft(a)}};Zapatec.ScrollWithWindow.on=function(){if(Zapatec.ScrollWithWindow.interval){return}Zapatec.ScrollWithWindow.top=Zapatec.Utils.getPageScrollY();Zapatec.ScrollWithWindow.left=Zapatec.Utils.getPageScrollX();Zapatec.ScrollWithWindow.interval=setInterval(Zapatec.ScrollWithWindow.cycle,50)};Zapatec.ScrollWithWindow.off=function(){if(!Zapatec.ScrollWithWindow.interval){return}clearInterval(Zapatec.ScrollWithWindow.interval);Zapatec.ScrollWithWindow.interval=null};Zapatec.FixateOnScreen={};Zapatec.FixateOnScreen.getExpression=function(b,a){return"Zapatec.Utils.getPageScroll"+a.toUpperCase()+"() + "+b};Zapatec.FixateOnScreen.parseCoordinates=function(b){if(!this.isRegistered(b)){return false}var a=0;var d=0;var c=b.style;if(Zapatec.is_ie&&!Zapatec.is_ie7){a=c.getExpression("left").split(" ");a=parseInt(a[a.length-1],10);d=c.getExpression("top").split(" ");d=parseInt(d[d.length-1],10)}else{a=parseInt(c.left,10);d=parseInt(c.top,10)}a+=Zapatec.Utils.getPageScrollX();d+=Zapatec.Utils.getPageScrollY();return{x:a,y:d}};Zapatec.FixateOnScreen.correctCoordinates=function(a,b){position={x:a,y:b};if(position.x||position.x===0){position.x-=Zapatec.Utils.getPageScrollX();if(Zapatec.is_ie&&!Zapatec.is_ie7){position.x=this.getExpression(position.x,"X")}else{position.x+="px"}}if(position.y||position.y===0){position.y-=Zapatec.Utils.getPageScrollY();if(Zapatec.is_ie&&!Zapatec.is_ie7){position.y=this.getExpression(position.y,"Y")}else{position.y+="px"}}return position};Zapatec.FixateOnScreen.register=function(b){if(!Zapatec.isHtmlElement(b)){return false}if(this.isRegistered(b)){return true}var c=Zapatec.Utils.getElementOffset(b);c={x:parseInt(b.style.left,10)||c.x,y:parseInt(b.style.top,10)||c.y};c=this.correctCoordinates(c.x,c.y);if(!Zapatec.is_ie||Zapatec.is_ie7){var a=b.restorer;if(!a||!a.getObject||a.getObject()!=b){a=b.restorer=new Zapatec.SRProp(b)}a.saveProp("style.position");b.style.position="fixed";b.style.left=c.x;b.style.top=c.y}else{b.style.setExpression("left",c.x);b.style.setExpression("top",c.y)}b.zpFixed=true;return true};Zapatec.FixateOnScreen.unregister=function(a){if(!Zapatec.isHtmlElement(a)){return false}var b=this.parseCoordinates(a);if(b===false){return true}if(Zapatec.is_ie&&!Zapatec.is_ie7){a.style.removeExpression("left");a.style.removeExpression("top")}a.style.left=b.x+"px";a.style.top=b.y+"px";if(!Zapatec.is_ie||Zapatec.is_ie7){a.restorer.restoreProp("style.position",true)}a.zpFixed=false;return true};Zapatec.FixateOnScreen.isRegistered=function(a){if(a.zpFixed){return true}return false};Zapatec.Utils.destroy=function(a){if(a&&a.parentNode){a.parentNode.removeChild(a)}};Zapatec.Utils.newCenteredWindow=function(a,h,b,i,f){var d=0;var g=0;if(screen.width){d=(screen.width-b)/2}if(screen.height){g=(screen.height-i)/2}var c="height="+i+",width="+b+",top="+g+",left="+d+",scrollbars="+f+",resizable";var e=window.open(a,h,c);return e};Zapatec.Utils.getWindowSize=function(){var a=0;var b=0;if(Zapatec.is_opera){a=document.body.clientWidth||0;b=document.body.clientHeight||0}else{if(Zapatec.is_khtml){a=window.innerWidth||0;b=window.innerHeight||0}else{if(document.compatMode&&document.compatMode=="CSS1Compat"){a=document.documentElement.clientWidth||0;b=document.documentElement.clientHeight||0}else{a=document.body.clientWidth||0;b=document.body.clientHeight||0}}}return{width:a,height:b}};Zapatec.Utils.selectOption=function(sel,val,call_default){var a=sel.options,i,o;for(i=a.length;--i>=0;){o=a[i];o.selected=(o.value==val)}sel.value=val;if(call_default){if(typeof sel.onchange=="function"){sel.onchange()}else{if(typeof sel.onchange=="string"){eval(sel.onchange)}}}};Zapatec.Utils.getNextSibling=function(c,a,b){c=c.nextSibling;if(!a){return c}a=a.toLowerCase();if(b){b=b.toLowerCase()}while(c){if(c.nodeType==1&&(c.tagName.toLowerCase()==a||(b&&c.tagName.toLowerCase()==b))){return c}c=c.nextSibling}return c};Zapatec.Utils.getPreviousSibling=function(c,a,b){c=c.previousSibling;if(!a){return c}a=a.toLowerCase();if(b){b=b.toLowerCase()}while(c){if(c.nodeType==1&&(c.tagName.toLowerCase()==a||(b&&c.tagName.toLowerCase()==b))){return c}c=c.previousSibling}return c};Zapatec.Utils.getFirstChild=function(c,a,b){if(!c){return null}c=c.firstChild;if(!c){return null}if(!a){return c}a=a.toLowerCase();if(c.nodeType==1){if(c.tagName.toLowerCase()==a){return c}else{if(b){b=b.toLowerCase();if(c.tagName.toLowerCase()==b){return c}}}}return Zapatec.Utils.getNextSibling(c,a,b)};Zapatec.Utils.getLastChild=function(c,a,b){if(!c){return null}c=c.lastChild;if(!c){return null}if(!a){return c}a=a.toLowerCase();if(c.nodeType==1){if(c.tagName.toLowerCase()==a){return c}else{if(b){b=b.toLowerCase();if(c.tagName.toLowerCase()==b){return c}}}}return Zapatec.Utils.getPreviousSibling(c,a,b)};Zapatec.Utils.getChildText=function(c){if(c==null){return""}var b=[];var a=c.firstChild;while(a!=null){if(a.nodeType==3){b.push(a.data)}a=a.nextSibling}return b.join(" ")};Zapatec.Utils.insertAfter=function(b,a){if(b.nextSibling){b.parentNode.insertBefore(a,b.nextSibling)}else{b.parentNode.appendChild(a)}};Zapatec.Utils._ids={};Zapatec.Utils.generateID=function(a,b){if(typeof b=="undefined"){if(typeof this._ids[a]=="undefined"){this._ids[a]=0}b=++this._ids[a]}return"zapatec-"+a+"-"+b};Zapatec.Utils.addTooltip=function(b,a){return new Zapatec.Tooltip({target:b,tooltip:a})};Zapatec.isLite=true;Zapatec.Utils.checkLinks=function(){var b=document.getElementsByTagName("A");for(var a=0;a<b.length;a++){if(Zapatec.Utils.checkLink(b[a])){return true}}return false};Zapatec.Utils.checkLink=function(e){if(!e){return false}if(!/^https?:\/\/((dev|www)\.)?zapatec\.com/i.test(e.href)){return false}var c="";for(var b=0;b<e.childNodes.length;b++){if(e.childNodes[b].nodeType==3){c+=e.childNodes[b].nodeValue}}if(c.length<4){return false}var a=e;while(a&&a.nodeName.toLowerCase()!="html"){if(Zapatec.Utils.getStyleProperty(a,"display")=="none"||Zapatec.Utils.getStyleProperty(a,"visibility")=="hidden"||Zapatec.Utils.getStyleProperty(a,"opacity")=="0"||Zapatec.Utils.getStyleProperty(a,"-moz-opacity")=="0"||/alpha\(opacity=0\)/i.test(Zapatec.Utils.getStyleProperty(a,"filter"))){return false}a=a.parentNode}var d=Zapatec.Utils.getElementOffset(e);if(d.left<0||d.top<0){return false}return true};Zapatec.Utils.checkActivation=function(){if(!Zapatec.isLite){return true}var f=[];add_product=function(i,h,j){f[i]={webdir:h,name:j,bActive:false}};add_product("calendar.js","prod1","Calendar");add_product("zpmenu.js","menu","Menu");add_product("tree.js","prod3","Tree");add_product("form.js","forms","Forms");add_product("effects.js","effects","Effects");add_product("hoverer.js","effects","Effects - Hoverer");add_product("slideshow.js","effects","Effects - Slideshow");add_product("zpgrid.js","grid","Grid");add_product("slider.js","slider","Slider");add_product("zptabs.js","tabs","Tabs");add_product("zptime.js","time","Time");add_product("window.js","windows","Window");var e,g,d;var b=false;var a=document.getElementsByTagName("script");for(d=0;d<a.length;d++){if(/wizard.js/i.test(a[d].src)){return true}g=a[d].src.split("/");if(g.length==0){e=a[d]}else{e=g[g.length-1]}e=e.toLowerCase();if(typeof f[e]!="undefined"){b=true;f[e].bActive=true}}if(!b||Zapatec.Utils.checkLinks()){return true}var c="You are using the Free version of the Zapatec Software.\nWhile using the Free version, a link to www.zapatec.com in this page is required.";for(d in f){if(f[d].bActive==true){c+="\nTo purchase the Zapatec "+f[d].name+" visit www.zapatec.com/website/main/products/"+f[d].webdir+"/"}}alert(c);return false};Zapatec.Utils.clone=function(a){var c;if(!a&&typeof a=="object"){return null}else{if(typeof a=="undefined"){return c}}if((a instanceof String)||(a instanceof Number)||(a instanceof Boolean)){c=new a.constructor(a.valueOf())}else{c=new a.constructor()}for(var b in a){if(typeof a[b]=="object"){c[b]=Zapatec.Utils.clone(a[b],true)}else{c[b]=a[b]}}return c};Zapatec.is_opera=/opera/i.test(navigator.userAgent);Zapatec.is_ie=(/msie/i.test(navigator.userAgent)&&!Zapatec.is_opera);Zapatec.is_ie5=(Zapatec.is_ie&&/msie 5\.0/i.test(navigator.userAgent));Zapatec.is_ie7=(Zapatec.is_ie&&/msie 7\.0/i.test(navigator.userAgent));Zapatec.is_mac_ie=(/msie.*mac/i.test(navigator.userAgent)&&!Zapatec.is_opera);Zapatec.is_khtml=/Konqueror|Safari|KHTML/i.test(navigator.userAgent);Zapatec.is_konqueror=/Konqueror/i.test(navigator.userAgent);Zapatec.is_gecko=/Gecko/i.test(navigator.userAgent);Zapatec.is_webkit=/WebKit/i.test(navigator.userAgent);Zapatec.webkitVersion=Zapatec.is_webkit?parseInt(navigator.userAgent.replace(/.+WebKit\/([0-9]+)\..+/,"$1")):-1;if(!Object.prototype.hasOwnProperty){Object.prototype.hasOwnProperty=function(a){try{var b=this.constructor.prototype;while(b){if(b[a]==this[a]){return false}b=b.prototype}}catch(c){}return true}}if(!Function.prototype.call){Function.prototype.call=function(){var objThis=arguments[0];objThis._this_func=this;var arrArgs=[];for(var iArg=1;iArg<arguments.length;iArg++){arrArgs[arrArgs.length]="arguments["+iArg+"]"}var ret=eval("objThis._this_func("+arrArgs.join(",")+")");objThis._this_func=null;return ret}}if(!Function.prototype.apply){Function.prototype.apply=function(){var objThis=arguments[0];var objArgs=arguments[1];objThis._this_func=this;var arrArgs=[];if(objArgs){for(var iArg=0;iArg<objArgs.length;iArg++){arrArgs[arrArgs.length]="objArgs["+iArg+"]"}}var ret=eval("objThis._this_func("+arrArgs.join(",")+")");objThis._this_func=null;return ret}}if(!Array.prototype.pop){Array.prototype.pop=function(){var a;if(this.length){a=this[this.length-1];this.length-=1}return a}}if(!Array.prototype.push){Array.prototype.push=function(){for(var a=0;a<arguments.length;a++){this[this.length]=arguments[a]}return this.length}}if(!Array.prototype.shift){Array.prototype.shift=function(){var b;if(this.length){b=this[0];for(var a=0;a<this.length-1;a++){this[a]=this[a+1]}this.length-=1}return b}}if(!Array.prototype.unshift){Array.prototype.unshift=function(){if(arguments.length){var b,a=arguments.length;for(b=this.length+a-1;b>=a;b--){this[b]=this[b-a]}for(b=0;b<a;b++){this[b]=arguments[b]}}return this.length}}if(!Array.prototype.splice){Array.prototype.splice=function(a,c){var d=[],e=[],b;for(b=2;b<arguments.length;b++){d.push(arguments[b])}for(b=a;(b<a+c)&&(b<this.length);b++){e.push(this[b])}for(b=a+c;b<this.length;b++){this[b-c]=this[b]}this.length-=e.length;for(b=this.length+d.length-1;b>=a+d.length;b--){this[b]=this[b-d.length]}for(b=0;b<d.length;b++){this[a+b]=d[b]}return e}}Zapatec.Utils.arrIndexOf=function(a,b,c){if(Array.prototype.indexOf){return a.indexOf(b,c)}if(!c){c=0}for(var d=c;d<a.length;d++){if(a[d]==b){return d}}return -1};Zapatec.Log=function(a){if(!a){return}var b=a.description;if(a.severity){b=a.severity+":\n"+b}if(a.type!="warning"){alert(b)}};Zapatec.Utils.Array={};Zapatec.Utils.Array.insertBefore=function(b,f,e,a){var d=new Array();for(var c in b){if(c==a){if(e){d[e]=f}else{d.push(f)}}d[c]=b[c]}return d};Zapatec.inherit=function(d,b,a){var c=function(){};c.prototype=b.prototype;d.prototype=new c();d.prototype.constructor=d;d.SUPERconstructor=b;d.SUPERclass=b.prototype;if(typeof b.path!="undefined"){if(a&&a.keepPath){d.path=b.path}else{d.path=Zapatec.getPath(d.id)}}};Zapatec.getPath=function(c){var a;if(typeof c=="string"){var e=document.getElementById(c);if(e){a=e.getAttribute("src")}}if(!a){if(typeof Zapatec.lastLoadedModule=="string"){return Zapatec.lastLoadedModule}if(document.documentElement){var f=document.documentElement.innerHTML;var b=f.match(/<script[^>]+src=[^>]+>/gi);if(b&&b.length){f=b[b.length-1];b=f.match(/src="([^"]+)/i);if(b&&b.length==2){a=b[1]}}}if(!a){return""}}a=a.replace(/\\/g,"/");var d=a.split("?");d=d[0].split("/");d=d.slice(0,-1);if(!d.length){return""}return d.join("/")+"/"};Zapatec.Utils.setWindowEvent=function(a){if(a){window.event=a}};Zapatec.Utils.emulateWindowEvent=function(b){if(document.addEventListener){for(var a=0;a<b.length;a++){document.addEventListener(b[a],Zapatec.Utils.setWindowEvent,true)}}};Zapatec.windowLoaded=typeof(document.readyState)!="undefined"?(document.readyState=="loaded"||document.readyState=="complete"):document.getElementsByTagName!=null&&typeof(document.getElementsByTagName("body")[0])!="undefined";Zapatec.Utils.addEvent(window,"load",function(){Zapatec.windowLoaded=true});Zapatec.Utils.warnUnload=function(b,a){Zapatec.Utils.warnUnloadFlag=true;if(typeof(b)!="string"){b="All your changes will be lost."}if(typeof(a)=="undefined"){a=window}Zapatec.Utils.addEvent(a,"beforeunload",function(c){if(Zapatec.Utils.warnUnloadFlag!=true){return true}if(typeof(c)=="undefined"){c=window.event}c.returnValue=b;return false})};Zapatec.Utils.unwarnUnload=function(b,a){Zapatec.Utils.warnUnloadFlag=false};Zapatec.Utils.warnUnloadFlag=false;Zapatec.Utils.getMaxZindex=function(){if(window.opera||Zapatec.is_khtml){return 2147483583}else{if(Zapatec.is_ie){return 2147483647}else{return 10737418239}}};Zapatec.Utils.correctCssLength=function(a){if(typeof a=="undefined"||(typeof a=="object"&&!a)){return"auto"}a+="";if(!a.length){return"auto"}if(/\d$/.test(a)){a+="px"}return a};Zapatec.Utils.destroyOnUnload=[];Zapatec.Utils.addDestroyOnUnload=function(b,a){Zapatec.Utils.destroyOnUnload.push([b,a])};Zapatec.Utils.createProperty=function(b,a,c){b[a]=c;Zapatec.Utils.addDestroyOnUnload(b,a)};Zapatec.Utils.addEvent(window,"unload",function(){for(var d=Zapatec.Utils.destroyOnUnload.length-1;d>=0;d--){var c=Zapatec.Utils.destroyOnUnload[d];c[0][c[1]]=null;c[0]=null}for(var b=Zapatec.Utils.removeOnUnload.length-1;b>=0;b--){var a=Zapatec.Utils.removeOnUnload[b];if(!a){continue}Zapatec.Utils.removeOnUnload[b]=null;Zapatec.Utils.removeEvent(a.element,a.event,a.listener,a.capture)}});Zapatec.Utils.htmlEncode=function(a){a=a.replace(/&/ig,"&amp;");a=a.replace(/</ig,"&lt;");a=a.replace(/>/ig,"&gt;");a=a.replace(/\x22/ig,"&quot;");return a};Zapatec.Utils.applyStyle=function(c,a){if(typeof(c)=="string"){c=document.getElementById(c)}if(c==null||a==null||c.style==null){return null}if(Zapatec.is_opera){var b=a.split(";");for(var j=0;j<b.length;j++){var g=b[j].split(":");if(!g[1]){continue}var h=g[1].replace(/^\s*/,"").replace(/\s*$/,"");var i="";for(var d=0;d<g[0].length;d++){if(g[0].charAt(d)=="-"){d++;if(d<g[0].length){i+=g[0].charAt(d).toUpperCase()}continue}i+=g[0].charAt(d)}switch(i){case"float":i="cssFloat";break}try{c.style[i]=h}catch(f){}}}else{c.style.cssText=a}return true};Zapatec.Utils.getStyleProperty=function(c,a){if(document.defaultView&&document.defaultView.getComputedStyle){a=a.replace(/([A-Z])/g,"-$1").toLowerCase();var b=document.defaultView.getComputedStyle(c,"");if(b){return b.getPropertyValue(a)}}else{if(c.currentStyle){return c.currentStyle[a]}}return c.style[a]};Zapatec.Utils.getPrecision=function(a){return(a+"").replace(/^\d*\.*/,"").length};Zapatec.Utils.setPrecision=function(a,c){a*=1;if(a.toFixed){return(a*1).toFixed(c)*1}var b=Math.pow(10,c);return parseInt(a*b,10)/b};Zapatec.Utils.setPrecisionString=function(c,e){var a=Zapatec.Utils.setPrecision(c,e)+"";var b=e-Zapatec.Utils.getPrecision(a);for(var d=0;d<b;d++){a+="0"}return a};Zapatec.Utils.createNestedHash=function(c,d,e){if(c==null||d==null){return null}var a=c;for(var b=0;b<d.length;b++){if(typeof(a[d[b]])=="undefined"){a[d[b]]={}}if(b==d.length-1&&typeof(e)!="undefined"){a[d[b]]=e}a=a[d[b]]}};Zapatec.implement=function(c,d){if(typeof d!="string"){return false}if(typeof c=="function"){c=c.prototype}if(!c||typeof c!="object"){return false}var b=window;var g=d.split(".");try{for(var a=0;a<g.length;++a){b=b[g[a]]}}catch(f){return false}if(typeof c.interfaces!="object"){c.interfaces={};c.interfaces[d]=true}else{if(c.interfaces[d]!==true){c.interfaces=Zapatec.Utils.clone(c.interfaces);c.interfaces[d]=true}else{return true}}for(var h in b){c[h]=b[h]}c.hasInterface=function(e){if(this.interfaces[e]===true){return true}return false};return true};Zapatec.Utils.getCharFromEvent=function(a){if(!a){a=window.event}var b={};if(Zapatec.is_gecko&&!Zapatec.is_khtml&&a.type!="keydown"&&a.type!="keyup"){if(a.charCode){b.chr=String.fromCharCode(a.charCode)}else{b.charCode=a.keyCode}}else{b.charCode=a.keyCode||a.which;b.chr=String.fromCharCode(b.charCode)}if(Zapatec.is_opera&&b.charCode==0){b.charCode=null;b.chr=null}if(Zapatec.is_khtml&&b.charCode==63272){b.charCode=46;b.chr=null}return b};if(typeof Zapatec=="undefined"){Zapatec=function(){}}Zapatec.Transport=function(){};Zapatec.Transport.isBusy=function(e){var b=e.busyContainer;if(typeof b=="string"){b=document.getElementById(b)}if(!b){return}var a=e.busyImage;if(typeof a!="string"){a=""}a=a.split("/").pop();if(!a.length){a="zpbusy.gif"}var d=b.firstChild;if(d){d=d.firstChild;if(d){d=d.firstChild;if(d&&d.tagName&&d.tagName.toLowerCase()=="img"){var c=d.getAttribute("src");if(typeof c=="string"&&c.length){c=c.split("/").pop();if(c==a){return true}}}}}return false};Zapatec.Transport.showBusy=function(a){if(Zapatec.Transport.isBusy(a)){return}var l=a.busyContainer;if(typeof l=="string"){l=document.getElementById(l)}if(!l){return}var g=a.busyImage;var i=a.busyImageWidth;var k=a.busyImageHeight;if(typeof g!="string"||!g.length){g="zpbusy.gif"}else{if(typeof i=="number"||(typeof i=="string"&&/\d$/.test(i))){i+="px"}if(typeof k=="number"||(typeof k=="string"&&/\d$/.test(k))){k+="px"}}if(!i){i="65px"}if(!k){k="35px"}var f="";if(g.indexOf("/")<0){if(Zapatec.zapatecPath){f=Zapatec.zapatecPath}else{f=Zapatec.Transport.getPath("transport.js")}}var d=[];d.push('<img src="');d.push(f);d.push(g);d.push('"');if(i||k){d.push(' style="');if(i){d.push("width:");d.push(i);d.push(";")}if(k){d.push("height:");d.push(k)}d.push('"')}d.push(" />");var b=l.offsetWidth;var j=l.offsetHeight;var h=Zapatec.Utils.createElement("div");h.style.position="relative";h.style.zIndex=2147483583;var e=Zapatec.Utils.createElement("div",h);e.style.position="absolute";e.innerHTML=d.join("");if(l.firstChild){l.insertBefore(h,l.firstChild)}else{l.appendChild(h)}var m=e.offsetWidth;var c=e.offsetHeight;if(b>m){e.style.left=l.scrollLeft+(b-m)/2+"px"}if(j>c){e.style.top=l.scrollTop+(j-c)/2+"px"}};Zapatec.Transport.removeBusy=function(b){var a=b.busyContainer;if(typeof a=="string"){a=document.getElementById(a)}if(!a){return}if(Zapatec.Transport.isBusy(b)){a.removeChild(a.firstChild)}};Zapatec.Transport.fetch=function(b){if(b==null||typeof b!="object"){return null}if(!b.url){return null}if(!b.method){b.method="GET"}if(typeof b.async=="undefined"){b.async=true}if(!b.contentType&&b.method.toUpperCase()=="POST"){b.contentType="application/x-www-form-urlencoded"}if(!b.content){b.content=null}if(!b.onLoad){b.onLoad=null}if(!b.onError){b.onError=null}var c=Zapatec.Transport.createXmlHttpRequest();if(c==null){return null}Zapatec.Transport.showBusy(b);var e=false;var d=function(){Zapatec.Transport.removeBusy(b);try{if(c.status==200||c.status==304||(location.protocol=="file:"&&!c.status)){if(typeof b.onLoad=="function"){b.onLoad(c)}}else{if(!e){e=true;Zapatec.Transport.displayError(c.status,"Error: Can't fetch "+b.url+".\n"+(c.statusText||""),b.onError)}}}catch(f){if(!e){e=true;if(f.name&&f.name=="NS_ERROR_NOT_AVAILABLE"){Zapatec.Transport.displayError(0,"Error: Can't fetch "+b.url+".\nFile not found.",b.onError)}else{Zapatec.Transport.displayError(0,"Error: Can't fetch "+b.url+".\n"+(f.message||""),b.onError)}}}};try{if(typeof b.username!="undefined"&&typeof b.password!="undefined"){c.open(b.method,b.url,b.async,b.username,b.password)}else{c.open(b.method,b.url,b.async)}if(b.async){c.onreadystatechange=function(){if(c.readyState==4){d();c.onreadystatechange={}}}}if(b.contentType){c.setRequestHeader("Content-Type",b.contentType)}c.send(b.content);if(!b.async){d();return c}}catch(a){Zapatec.Transport.removeBusy(b);if(!e){e=true;if(a.name&&a.name=="NS_ERROR_FILE_NOT_FOUND"){Zapatec.Transport.displayError(0,"Error: Can't fetch "+b.url+".\nFile not found.",b.onError)}else{Zapatec.Transport.displayError(0,"Error: Can't fetch "+b.url+".\n"+(a.message||""),b.onError)}}}return null};Zapatec.Transport.parseHtml=function(b){b+="";b=b.replace(/^\s+/g,"");var a;if(document.createElementNS){a=document.createElementNS("http://www.w3.org/1999/xhtml","div")}else{a=document.createElement("div")}a.innerHTML=b;return a};Zapatec.Transport.evalGlobalScope=function(sScript){if(typeof sScript!="string"||!sScript.match(/\S/)){return}if(window.execScript){window.execScript(sScript,"javascript")}else{if(window.eval){window.eval(sScript)}}};Zapatec.Transport.setInnerHtml=function(c){if(!c||typeof c.html!="string"){return}var n=c.html;var p=null;if(typeof c.container=="string"){p=document.getElementById(c.container)}else{if(typeof c.container=="object"){p=c.container}}var l=[];if(n.match(/<\s*\/\s*script\s*>/i)){var k=n.split(/<\s*\/\s*script\s*>/i);var g=[];for(var e=k.length-1;e>=0;e--){var f=k[e];if(f.match(/\S/)){var b=f.match(/<\s*script([^>]*)>/i);if(b){var i=f.split(/<\s*script[^>]*>/i);while(i.length<2){if(f.match(/^<\s*script[^>]*>/i)){i.unshift("")}else{i.push("")}}g.unshift(i[0]);var q=b[1];var a=i[1];if(q.match(/\s+src\s*=/i)){a=""}else{a=a.replace(/function\s+([^(]+)/g,"$1=function")}l.push([q,a])}else{if(e<k.length-1){k[e-1]+="<\/script>"+f}else{g.unshift(f)}}}else{g.unshift(f)}}n=g.join("")}if(p){if(window.opera){p.innerHTML="<form></form>"}p.innerHTML=n}for(var o=0;o<l.length;o++){if(l[o][1].length){Zapatec.Transport.evalGlobalScope(l[o][1])}var q=l[o][0];q=q.replace(/\s+/g," ").replace(/^\s/,"").replace(/\s$/,"").replace(/ = /g,"=");if(q.indexOf("src=")>=0){var p=document.body;if(!p){p=document.getElementsByTagName("head")[0];if(!p){p=document}}var h=q.split(" ");var d=Zapatec.Utils.createElement("script");for(var m=0;m<h.length;m++){var j=h[m].split("=");if(j.length>1){d.setAttribute(j[0],j[1].match(/^[\s|"|']*([\s|\S]*[^'|"])[\s|"|']*$/)[1])}else{d.setAttribute(j[0],j[0])}}p.appendChild(d)}}};Zapatec.Transport.fetchXmlDoc=function(a){if(a==null||typeof a!="object"){return null}if(typeof a.async=="undefined"){a.async=true}if(!a.reliable){a.reliable=false}var c={};for(var d in a){c[d]=a[d]}if(a.async){c.onLoad=function(e){Zapatec.Transport.parseJson({strJson:e.responseText,reliable:a.reliable,onLoad:a.onLoad,onError:a.onError})}}else{c.onLoad=null}var b=Zapatec.Transport.fetch(c);if(!a.async&&b){return Zapatec.Transport.parseJson({strJson:b.responseText,reliable:a.reliable,onLoad:a.onLoad,onError:a.onError})}return null};Zapatec.Transport.parseJson=function(oArg){if(oArg==null||typeof oArg!="object"){return null}if(!oArg.reliable){oArg.reliable=false}if(!oArg.onLoad){oArg.onLoad=null}if(!oArg.onError){oArg.onError=null}var oJson=null;try{if(oArg.reliable){if(oArg.strJson){oJson=eval("("+oArg.strJson+")")}}else{oJson=Zapatec.Transport.parseJsonStr(oArg.strJson)}}catch(oExpn){var sError="Error: Can't parse.\nString doesn't appear to be a valid JSON fragment: ";sError+=oExpn.message;if(typeof oExpn.text!="undefined"&&oExpn.text.length){sError+="\n"+oExpn.text}sError+="\n"+oArg.strJson;Zapatec.Transport.displayError(0,sError,oArg.onError);return null}if(typeof oArg.onLoad=="function"){oArg.onLoad(oJson)}return oJson};Zapatec.Transport.parseJsonStr=function(text){var p=/^\s*(([,:{}\[\]])|"(\\.|[^\x00-\x1f"\\])*"|-?\d+(\.\d*)?([eE][+-]?\d+)?|true|false|null)\s*/,token,operator;function error(m,t){throw {name:"JSONError",message:m,text:t||operator||token}}function next(b){if(b&&b!=operator){error("Expected '"+b+"'")}if(text){var t=p.exec(text);if(t){if(t[2]){token=null;operator=t[2]}else{operator=null;try{token=eval(t[1])}catch(e){error("Bad token",t[1])}}text=text.substring(t[0].length)}else{error("Unrecognized token",text)}}else{token=operator=null}}function val(){var k,o;switch(operator){case"{":next("{");o={};if(operator!="}"){for(;;){if(operator||typeof token!="string"){error("Missing key")}k=token;next();next(":");o[k]=val();if(operator!=","){break}next(",")}}next("}");return o;case"[":next("[");o=[];if(operator!="]"){for(;;){o.push(val());if(operator!=","){break}next(",")}}next("]");return o;default:if(operator!==null){error("Missing value")}k=token;next();return k}}next();return val()};Zapatec.Transport.serializeJsonObj=function(c){var b=[];function f(a){b[b.length]=a}function d(a){var j,h,e,g;switch(typeof a){case"object":if(a){if(a instanceof Array){f("[");e=b.length;for(h=0;h<a.length;h+=1){g=a[h];if(typeof g!="undefined"&&typeof g!="function"){if(e<b.length){f(",")}d(g)}}f("]");return}else{if(typeof a.toString!="undefined"){f("{");e=b.length;for(h in a){g=a[h];if(a.hasOwnProperty(h)&&typeof g!="undefined"&&typeof g!="function"){if(e<b.length){f(",")}d(h);f(":");d(g)}}return f("}")}}}f("null");return;case"number":f(isFinite(a)?+a:"null");return;case"string":e=a.length;f('"');for(h=0;h<e;h+=1){j=a.charAt(h);if(j>=" "){if(j=="\\"||j=='"'){f("\\")}f(j)}else{switch(j){case"\b":f("\\b");break;case"\f":f("\\f");break;case"\n":f("\\n");break;case"\r":f("\\r");break;case"\t":f("\\t");break;default:j=j.charCodeAt();f("\\u00"+Math.floor(j/16).toString(16)+(j%16).toString(16))}}}f('"');return;case"boolean":f(String(a));return;default:f("null");return}}d(c);return b.join("")};Zapatec.Transport.displayError=function(a,c,b){if(typeof b=="function"){b({errorCode:a,errorDescription:c})}else{alert(c)}};Zapatec.Transport.translateUrl=function(a){if(!a||!a.url){return null}var g=a.url.split("?",2);var e=g[0];if(e.charAt(0)=="/"||e.indexOf(":")>=0){return a.url}var h;if(typeof a.relativeTo!="string"){h=document.location.toString().split("?",2)[0]}else{h=a.relativeTo.split("?",2)[0];if(h.indexOf("/")<0){h=document.location.toString().split("?",2)[0]}else{if(h.charAt(0)!="/"&&h.indexOf(":")<0){h=Zapatec.Transport.translateUrl({url:h})}}}var c=e.split("/");var b=h.split("/");b.pop();for(var d=0;d<c.length;d++){var f=c[d];if(f==".."){b.pop()}else{if(f!="."){b.push(f)}}}g[0]=b.join("/");return g.join("?")};Zapatec.Transport.loading={};Zapatec.Transport.setupEvents=function(a){if(!a){return{}}if(a.force||!Zapatec.EventDriven||!a.url){return{onLoad:a.onLoad,onError:a.onError}}var b=a.url;if(typeof a.onLoad=="function"){Zapatec.EventDriven.addEventListener("zpTransportOnLoad"+b,a.onLoad)}if(typeof a.onError=="function"){Zapatec.EventDriven.addEventListener("zpTransportOnError"+b,a.onError)}if(Zapatec.Transport.loading[b]){return{loading:true}}else{Zapatec.Transport.loading[b]=true;return{onLoad:new Function("Zapatec.EventDriven.fireEvent('zpTransportOnLoad"+b+"');Zapatec.EventDriven.removeEvent('zpTransportOnLoad"+b+"');Zapatec.EventDriven.removeEvent('zpTransportOnError"+b+"');Zapatec.Transport.loading['"+b+"'] = false;"),onError:new Function("oError","Zapatec.EventDriven.fireEvent('zpTransportOnError"+b+"',oError);Zapatec.EventDriven.removeEvent('zpTransportOnLoad"+b+"');Zapatec.EventDriven.removeEvent('zpTransportOnError"+b+"');Zapatec.Transport.loading['"+b+"'] = false;")}}};Zapatec.Transport.loadedJS={};Zapatec.Transport.isLoadedJS=function(d,e){if(typeof e=="undefined"){e=Zapatec.Transport.translateUrl({url:d})}if(Zapatec.Transport.loadedJS[e]){return true}var c=document.getElementsByTagName("script");for(var a=0;a<c.length;a++){var b=c[a].getAttribute("src")||"";if(b==d){Zapatec.Transport.loadedJS[e]=true;return true}}return false};Zapatec.Transport.getPath=function(b){var e=document.getElementsByTagName("script");for(var a=e.length-1;a>=0;a--){var c=e[a].getAttribute("src")||"";var d=c.split("/");var f=d.pop();if(f==b){return d.length?d.join("/")+"/":""}}for(var c in Zapatec.Transport.loadedJS){var d=c.split("/");var f=d.pop();if(f==b){return d.length?d.join("/")+"/":""}}return""};Zapatec.Transport.include=function(a,b,c){if(Zapatec.doNotInclude){return}var d=Zapatec.Transport.translateUrl({url:a});if(!c&&Zapatec.Transport.isLoadedJS(a,d)){return}document.write('<script type="text/javascript" src="'+a+(typeof b=="string"?'" id="'+b:"")+'"><\/script>');Zapatec.Transport.loadedJS[d]=true};Zapatec.include=Zapatec.Transport.include;Zapatec.Transport.includeJS=function(a,b){setTimeout(function(){var c=document.body;if(!c){c=document.getElementsByTagName("head")[0];if(!c){c=document}}var d=document.createElement("script");d.type="text/javascript";d.src=a;if(typeof b=="string"){d.id=b}c.appendChild(d)},0)};Zapatec.Transport.loadJS=function(c){if(!(c instanceof Object)){return}if(typeof c.async=="undefined"){c.async=true}var d=null;if(c.url){d=c.url}else{if(c.module){var a="";if(typeof c.path!="undefined"){a=c.path}else{if(typeof Zapatec.zapatecPath!="undefined"){a=Zapatec.zapatecPath}}d=a+c.module+".js"}else{return}}var e=Zapatec.Transport.translateUrl({url:d});if(!c.onLoad){c.onLoad=null}if(!c.onError){c.onError=null}if(Zapatec.doNotInclude||(!c.force&&Zapatec.Transport.isLoadedJS(d,e))){if(typeof c.onLoad=="function"){c.onLoad()}return}var b=Zapatec.Transport.setupEvents({url:e,force:c.force,onLoad:c.onLoad,onError:c.onError});if(b.loading){return}Zapatec.Transport.fetch({url:d,async:c.async,onLoad:function(g){if(c.force||!Zapatec.Transport.loadedJS[e]){var f=d.split("/");var h=f.pop();Zapatec.lastLoadedModule=f.join("/")+"/";Zapatec.Transport.evalGlobalScope(g.responseText);Zapatec.lastLoadedModule=null;Zapatec.Transport.loadedJS[e]=true}if(typeof b.onLoad=="function"){b.onLoad()}},onError:b.onError})};Zapatec.Transport.includeCSS=function(b){var a=document.getElementsByTagName("head")[0];if(!a){return}var c=document.createElement("link");c.setAttribute("rel","stylesheet");c.setAttribute("type","text/css");c.setAttribute("href",b);a.appendChild(c)};Zapatec.Transport.loadedCss={};Zapatec.Transport.loadCss=function(a){if(Zapatec.StyleSheet){Zapatec.Transport.loadCssWithStyleSheet(a)}else{Zapatec.Transport.loadJS({module:"stylesheet",async:a.async,onLoad:function(){Zapatec.Transport.loadCssWithStyleSheet(a)}})}};Zapatec.Transport.loadCssWithStyleSheet=function(c){if(!(c instanceof Object)){return}if(!c.url){return}if(typeof c.async=="undefined"){c.async=true}var e=Zapatec.Transport.translateUrl({url:c.url});if(!c.force){if(Zapatec.Transport.loadedCss[e]){if(typeof c.onLoad=="function"){c.onLoad()}return}var a=document.getElementsByTagName("link");for(var f=0;f<a.length;f++){var d=a[f].getAttribute("href")||"";d=Zapatec.Transport.translateUrl({url:d});if(d==e){Zapatec.Transport.loadedCss[e]=true;if(typeof c.onLoad=="function"){c.onLoad()}return}}}var b=Zapatec.Transport.setupEvents({url:e,force:c.force,onLoad:c.onLoad,onError:c.onError});if(b.loading){return}Zapatec.Transport.fetch({url:c.url,async:c.async,onLoad:function(h){var n=h.responseText;var l=[];var o=[];var g=[];var j=0;var k=n.indexOf("url(",j);while(k>=0){k+=4;var i=n.substring(j,k);var p=/@import\s+url\($/.test(i);l.push(i);j=k;k=n.indexOf(")",j);if(k>=0){var m=n.substring(j,k);m=m.replace(/['"]/g,"");m=Zapatec.Transport.translateUrl({url:m,relativeTo:c.url});m=Zapatec.Transport.translateUrl({url:m});l.push(m);if(p){g.push(m)}else{o.push(m)}j=k;k=n.indexOf("url(",j)}}l.push(n.substr(j));n=l.join("");Zapatec.Transport.loadCssList({urls:g,async:c.async,onLoad:function(){(new Zapatec.StyleSheet()).addParse(n);if(typeof b.onLoad=="function"){b.onLoad()}}});Zapatec.Transport.loadedCss[e]=true;Zapatec.Transport.preloadImages({urls:o,timeout:60000})},onError:b.onError})};Zapatec.Transport.loadCssList=function(b){if(!(b instanceof Object)){return}if(typeof b.async=="undefined"){b.async=true}if(!b.onLoad){b.onLoad=null}if(!b.onError){b.onError=null}if(!b.urls||!b.urls.length){if(typeof b.onLoad=="function"){b.onLoad()}return}var c=b.urls.shift();var a=function(){Zapatec.Transport.loadCssList({urls:b.urls,async:b.async,force:b.force,onLoad:b.onLoad,onError:b.onError})};Zapatec.Transport.loadCss({url:c,async:b.async,force:b.force,onLoad:a,onError:function(d){Zapatec.Transport.displayError(d.errorCode,d.errorDescription,b.onError);a()}})};Zapatec.Transport.imagePreloads=[];Zapatec.Transport.preloadImages=function(a){if(Zapatec.PreloadImages){Zapatec.Transport.imagePreloads.push(new Zapatec.PreloadImages(a))}else{Zapatec.Transport.loadJS({module:"preloadimages",onLoad:function(){Zapatec.Transport.imagePreloads.push(new Zapatec.PreloadImages(a))}})}};if(typeof Zapatec=="undefined"){Zapatec=function(){}}Zapatec.StyleSheet=function(d){if(d){if(document.createStyleSheet){if(document.styleSheets.length){this.styleSheet=document.styleSheets[document.styleSheets.length-1]}}else{var a=document.getElementsByTagName("style");if(a.length){this.styleSheet=a[a.length-1]}}}if(!this.styleSheet){if(document.createStyleSheet){try{this.styleSheet=document.createStyleSheet()}catch(c){this.styleSheet=document.styleSheets[document.styleSheets.length-1]}}else{this.styleSheet=document.createElement("style");this.styleSheet.type="text/css";var b=document.getElementsByTagName("head")[0];if(!b){b=document.documentElement}if(b){b.appendChild(this.styleSheet)}}}};Zapatec.StyleSheet.prototype.addRule=function(a,b){if(!this.styleSheet){return}if(document.createStyleSheet){this.styleSheet.cssText+=a+" { "+b+" }"}else{this.styleSheet.appendChild(document.createTextNode(a+" { "+b+" }"))}};Zapatec.StyleSheet.prototype.removeRules=function(){if(!this.styleSheet){return}if(document.createStyleSheet){var a=this.styleSheet.rules.length;for(var b=0;b<a;b++){this.styleSheet.removeRule()}}else{while(this.styleSheet.firstChild){this.styleSheet.removeChild(this.styleSheet.firstChild)}}};Zapatec.StyleSheet.prototype.addParse=function(c){var i=[];var d=c.split("/*");for(var g=0;g<d.length;g++){var a=d[g].split("*/");i.push(a[a.length-1])}c=i.join("");c=c.replace(/@[^{]*;/g,"");var e=c.split("}");for(var f=0;f<e.length;f++){var b=e[f].split("{");if(b[0]&&b[1]){var j=b[0].split(",");for(var h=0;h<j.length;h++){this.addRule(j[h],b[1])}}}};Zapatec.ImagePreloader=function(a){this.job=null;this.image=null;if(arguments.length>0){this.init(a)}};Zapatec.ImagePreloader.prototype.init=function(b){if(!b||!b.job){return}this.job=b.job;this.image=new Image();this.job.images.push(this.image);var a=this;this.image.onload=function(){a.job.loadedUrls.push(b.url);setTimeout(function(){a.onLoad()},0)};this.image.onerror=function(){a.job.invalidUrls.push(b.url);a.onLoad()};this.image.onabort=function(){a.job.abortedUrls.push(b.url);a.onLoad()};this.image.src=b.url;if(typeof b.timeout=="number"){setTimeout(function(){if(a.job){if(a.image.complete){a.job.loadedUrls.push(b.url)}else{a.job.abortedUrls.push(b.url)}a.onLoad()}},b.timeout)}};Zapatec.ImagePreloader.prototype.onLoad=function(){if(!this.job){return}this.image.onload=null;this.image.onerror=null;this.image.onabort=null;var b=this.job;this.job=null;b.leftToLoad--;if(b.leftToLoad==0&&typeof b.onLoad=="function"){var a=b.onLoad;b.onLoad=null;a(b)}};Zapatec.PreloadImages=function(a){this.images=[];this.leftToLoad=0;this.loadedUrls=[];this.invalidUrls=[];this.abortedUrls=[];this.onLoad=null;if(arguments.length>0){this.init(a)}};Zapatec.PreloadImages.prototype.init=function(b){if(!b){return}if(!b.urls||!b.urls.length){if(typeof b.onLoad=="function"){b.onLoad(this)}return}this.images=[];this.leftToLoad=b.urls.length;this.loadedUrls=[];this.invalidUrls=[];this.abortedUrls=[];this.onLoad=b.onLoad;for(var a=0;a<b.urls.length;a++){new Zapatec.ImagePreloader({job:this,url:b.urls[a],timeout:b.timeout})}};if(typeof Zapatec=="undefined"){Zapatec=function(){}}Zapatec.EventDriven=function(){};Zapatec.EventDriven.prototype.init=function(){this.events={}};Zapatec.EventDriven.prototype.addEventListener=function(b,a){if(typeof a!="function"){return false}if(!this.events[b]){this.events[b]={listeners:[]}}else{this.removeEventListener(b,a)}this.events[b].listeners.push(a)};Zapatec.EventDriven.prototype.unshiftEventListener=function(b,a){if(typeof a!="function"){return false}if(!this.events[b]){this.events[b]={listeners:[]}}else{this.removeEventListener(b,a)}this.events[b].listeners.unshift(a)};Zapatec.EventDriven.prototype.removeEventListener=function(d,b){if(!this.events[d]){return 0}var c=this.events[d].listeners;var e=0;for(var a=c.length-1;a>=0;a--){if(c[a]==b){c.splice(a,1);e++}}return e};Zapatec.EventDriven.prototype.getEventListeners=function(a){if(!this.events[a]){return[]}return this.events[a].listeners};Zapatec.EventDriven.prototype.isEventListener=function(d,b){if(!this.events[d]){return false}var c=this.events[d].listeners;for(var a=c.length-1;a>=0;a--){if(c[a]==b){return true}}return false};Zapatec.EventDriven.prototype.isEvent=function(a){if(this.events[a]){return true}return false};Zapatec.EventDriven.prototype.removeEvent=function(b){if(this.events[b]){var a;this.events[b]=a}};Zapatec.EventDriven.prototype.fireEvent=function(c){if(!this.events[c]){return}var b=this.events[c].listeners.slice();for(var a=0;a<b.length;a++){var d=[].slice.call(arguments,1);b[a].apply(this,d)}};Zapatec.EventDriven.events={};Zapatec.EventDriven.addEventListener=function(b,a){if(typeof a!="function"){return false}if(!Zapatec.EventDriven.events[b]){Zapatec.EventDriven.events[b]={listeners:[]}}else{Zapatec.EventDriven.removeEventListener(b,a)}Zapatec.EventDriven.events[b].listeners.push(a)};Zapatec.EventDriven.unshiftEventListener=function(b,a){if(typeof a!="function"){return false}if(!Zapatec.EventDriven.events[b]){Zapatec.EventDriven.events[b]={listeners:[]}}else{Zapatec.EventDriven.removeEventListener(b,a)}Zapatec.EventDriven.events[b].listeners.unshift(a)};Zapatec.EventDriven.removeEventListener=function(d,b){if(!Zapatec.EventDriven.events[d]){return 0}var c=Zapatec.EventDriven.events[d].listeners;var e=0;for(var a=c.length-1;a>=0;a--){if(c[a]==b){c.splice(a,1);e++}}return e};Zapatec.EventDriven.getEventListeners=function(a){if(!Zapatec.EventDriven.events[a]){return[]}return Zapatec.EventDriven.events[a].listeners};Zapatec.EventDriven.isEventListener=function(d,b){if(!Zapatec.EventDriven.events[d]){return false}var c=Zapatec.EventDriven.events[d].listeners;for(var a=c.length-1;a>=0;a--){if(c[a]==b){return true}}return false};Zapatec.EventDriven.isEvent=function(a){if(Zapatec.EventDriven.events[a]){return true}return false};Zapatec.EventDriven.removeEvent=function(b){if(Zapatec.EventDriven.events[b]){var a;Zapatec.EventDriven.events[b]=a}};Zapatec.EventDriven.fireEvent=function(c){if(!Zapatec.EventDriven.events[c]){return}var b=Zapatec.EventDriven.events[c].listeners.slice();for(var a=0;a<b.length;a++){var d=[].slice.call(arguments,1);b[a].apply(b[a],d)}};if(typeof Zapatec=="undefined"){Zapatec=function(){}}Zapatec.Widget=function(a){this.config={};Zapatec.Widget.SUPERconstructor.call(this);this.init(a)};Zapatec.inherit(Zapatec.Widget,Zapatec.EventDriven);Zapatec.Widget.path=Zapatec.getPath("Zapatec.Widget");Zapatec.Widget.prototype.init=function(a){Zapatec.Widget.SUPERclass.init.call(this);if(typeof this.id=="undefined"){var b=0;while(Zapatec.Widget.all[b]){b++}this.id=b;Zapatec.Widget.all[b]=this}this.configure(a);this.addUserEventListeners();this.addStandardEventListeners();this.loadTheme()};Zapatec.Widget.prototype.reconfigure=function(a){this.configure(a);this.loadTheme()};Zapatec.Widget.prototype.configure=function(a){this.defineConfigOption("theme","default");if(typeof this.constructor.path!="undefined"){this.defineConfigOption("themePath",this.constructor.path+"../themes/")}else{this.defineConfigOption("themePath","../themes/")}this.defineConfigOption("asyncTheme",false);this.defineConfigOption("source");this.defineConfigOption("sourceType");this.defineConfigOption("callbackSource");this.defineConfigOption("asyncSource",true);this.defineConfigOption("reliableSource",true);this.defineConfigOption("eventListeners",{});if(a){for(var b in a){if(typeof this.config[b]!="undefined"){this.config[b]=a[b]}else{Zapatec.Log({description:"Unknown config option: "+b})}}}};Zapatec.Widget.prototype.getConfiguration=function(){return this.config};Zapatec.Widget.all=[];Zapatec.Widget.getWidgetById=function(a){return Zapatec.Widget.all[a]};Zapatec.Widget.prototype.addCircularRef=function(a,b){if(!this.widgetCircularRefs){this.widgetCircularRefs=[]}this.widgetCircularRefs.push([a,b])};Zapatec.Widget.prototype.createProperty=function(a,b,c){a[b]=c;this.addCircularRef(a,b)};Zapatec.Widget.prototype.removeCircularRefs=function(){if(!this.widgetCircularRefs){return}for(var a=this.widgetCircularRefs.length-1;a>=0;a--){var b=this.widgetCircularRefs[a];b[0][b[1]]=null;b[0]=null}};Zapatec.Widget.prototype.discard=function(){Zapatec.Widget.all[this.id]=null;this.removeCircularRefs()};Zapatec.Widget.removeCircularRefs=function(){for(var b=Zapatec.Widget.all.length-1;b>=0;b--){var a=Zapatec.Widget.all[b];if(a){a.removeCircularRefs()}}};Zapatec.Utils.addEvent(window,"unload",Zapatec.Widget.removeCircularRefs);Zapatec.Widget.prototype.defineConfigOption=function(b,a){if(typeof this.config[b]=="undefined"){if(typeof a=="undefined"){this.config[b]=null}else{this.config[b]=a}}};Zapatec.Widget.prototype.addUserEventListeners=function(){for(var a in this.config.eventListeners){if(this.config.eventListeners.hasOwnProperty(a)){this.addEventListener(a,this.config.eventListeners[a])}}};Zapatec.Widget.prototype.addStandardEventListeners=function(){this.addEventListener("loadThemeError",Zapatec.Widget.loadThemeError)};Zapatec.Widget.loadThemeError=function(b){var a="Can't load theme.";if(b&&b.errorDescription){a+=" "+b.errorDescription}Zapatec.Log({description:a})};Zapatec.Widget.prototype.loadTheme=function(){if(typeof this.config.theme=="string"&&this.config.theme.length){var c=this.config.theme.lastIndexOf("/");if(c>=0){c++;this.config.themePath=this.config.theme.substring(0,c);this.config.theme=this.config.theme.substring(c)}c=this.config.theme.lastIndexOf(".");if(c>=0){this.config.theme=this.config.theme.substring(0,c)}this.config.theme=this.config.theme.toLowerCase()}else{this.config.theme=""}if(this.config.theme){this.fireEvent("loadThemeStart");this.themeLoaded=false;var a=this;var b=this.config.themePath+this.config.theme+".css";Zapatec.Transport.loadCss({url:b,async:this.config.asyncTheme,onLoad:function(){a.fireEvent("loadThemeEnd");a.themeLoaded=true;a.hideLoader()},onError:function(d){a.fireEvent("loadThemeEnd");a.fireEvent("loadThemeError",d);a.themeLoaded=true;a.hideLoader()}})}};Zapatec.Widget.prototype.getClassName=function(a){var b=[];if(a&&a.prefix){b.push(a.prefix)}if(this.config.theme!=""){b.push(this.config.theme.charAt(0).toUpperCase());b.push(this.config.theme.substr(1))}if(a&&a.suffix){b.push(a.suffix)}return b.join("")};Zapatec.Widget.prototype.formElementId=function(a){var b=[];if(a&&a.prefix){b.push(a.prefix)}else{b.push("zpWidget")}b.push(this.id);if(a&&a.suffix){b.push(a.suffix)}else{b.push("-")}if(typeof this.widgetUniqueIdCounter=="undefined"){this.widgetUniqueIdCounter=0}else{this.widgetUniqueIdCounter++}b.push(this.widgetUniqueIdCounter);return b.join("")};Zapatec.Widget.prototype.showLoader=function(b){if(this.container!=null&&this.config.theme&&!this.themeLoaded){if(!Zapatec.windowLoaded){var a=this;Zapatec.Utils.addEvent(window,"load",function(){a.showLoader(b)});return null}if(typeof(Zapatec.Indicator)=="undefined"){var a=this;Zapatec.Transport.loadJS({module:"indicator",onLoad:function(){if(a.themeLoaded){return null}a.showLoader(b)}});return null}this.loader=new Zapatec.Indicator({container:this.container,themePath:Zapatec.zapatecPath+"../zpextra/themes/indicator/"});this.loader.start(b||"loading");this.container.style.visibility="hidden"}};Zapatec.Widget.prototype.hideLoader=function(){if(this.loader&&this.loader.isActive()){this.container.style.visibility="";this.loader.stop()}};Zapatec.Widget.prototype.showContainer=function(a,c,b){return this.showHideContainer(a,c,b,true)};Zapatec.Widget.prototype.hideContainer=function(a,c,b){return this.showHideContainer(a,c,b,false)};Zapatec.Widget.prototype.showHideContainer=function(c,e,d,a){if(this.container==null){return null}if(c&&c.length>0&&typeof(Zapatec.Effects)=="undefined"){var b=this;Zapatec.Transport.loadJS({url:Zapatec.zapatecPath+"../zpeffects/src/effects.js",onLoad:function(){b.showHideContainer(c,e,d,a)}});return false}if(e==null&&isNaN(parseInt(e))){e=5}if(!c||c.length==0){if(a){this.container.style.display=this.originalContainerDisplay;this.originalContainerDisplay=null}else{this.originalContainerDisplay=this.container.style.display;this.container.style.display="none"}if(d){d()}}else{if(a){Zapatec.Effects.show(this.container,e,c,d)}else{Zapatec.Effects.hide(this.container,e,c,d)}}return true};Zapatec.Widget.prototype.loadData=function(oArg){if(typeof this.config.callbackSource=="function"){var oSource=this.config.callbackSource(oArg);if(oSource){if(typeof oSource.source!="undefined"){this.config.source=oSource.source}if(typeof oSource.sourceType!="undefined"){this.config.sourceType=oSource.sourceType}}}if(this.config.source!=null&&this.config.sourceType!=null){var sSourceType=this.config.sourceType.toLowerCase();if(sSourceType=="html"){this.fireEvent("loadDataStart");this.loadDataHtml(Zapatec.Widget.getElementById(this.config.source));this.fireEvent("loadDataEnd")}else{if(sSourceType=="html/text"){this.fireEvent("loadDataStart");this.loadDataHtmlText(this.config.source);this.fireEvent("loadDataEnd")}else{if(sSourceType=="html/url"){this.fireEvent("fetchSourceStart");var oWidget=this;Zapatec.Transport.fetch({url:this.config.source,async:this.config.asyncSource,onLoad:function(oRequest){oWidget.fireEvent("fetchSourceEnd");oWidget.fireEvent("loadDataStart");oWidget.loadDataHtmlText(oRequest.responseText);oWidget.fireEvent("loadDataEnd")},onError:function(oError){oWidget.fireEvent("fetchSourceError",oError);oWidget.fireEvent("fetchSourceEnd");oWidget.fireEvent("loadDataEnd")}})}else{if(sSourceType=="json"){this.fireEvent("loadDataStart");if(typeof this.config.source=="object"){this.loadDataJson(this.config.source)}else{if(this.config.reliableSource){this.loadDataJson(eval("("+this.config.source+")"))}else{this.loadDataJson(Zapatec.Transport.parseJson({strJson:this.config.source}))}}this.fireEvent("loadDataEnd")}else{if(sSourceType=="json/url"){this.fireEvent("fetchSourceStart");var oWidget=this;Zapatec.Transport.fetchJsonObj({url:this.config.source,async:this.config.asyncSource,reliable:this.config.reliableSource,onLoad:function(oResult){oWidget.fireEvent("fetchSourceEnd");oWidget.fireEvent("loadDataStart");oWidget.loadDataJson(oResult);oWidget.fireEvent("loadDataEnd")},onError:function(oError){oWidget.fireEvent("fetchSourceError",oError);oWidget.fireEvent("fetchSourceEnd");oWidget.fireEvent("loadDataEnd")}})}else{if(sSourceType=="xml"){this.fireEvent("loadDataStart");if(typeof this.config.source=="object"){this.loadDataXml(this.config.source)}else{this.loadDataXml(Zapatec.Transport.parseXml({strXml:this.config.source}))}this.fireEvent("loadDataEnd")}else{if(sSourceType=="xml/url"){this.fireEvent("fetchSourceStart");var oWidget=this;Zapatec.Transport.fetchXmlDoc({url:this.config.source,async:this.config.asyncSource,onLoad:function(oResult){oWidget.fireEvent("fetchSourceEnd");oWidget.fireEvent("loadDataStart");oWidget.loadDataXml(oResult);oWidget.fireEvent("loadDataEnd")},onError:function(oError){oWidget.fireEvent("fetchSourceError",oError);oWidget.fireEvent("fetchSourceEnd");oWidget.fireEvent("loadDataEnd")}})}}}}}}}}else{this.fireEvent("loadDataStart");this.loadDataHtml(Zapatec.Widget.getElementById(this.config.source));this.fireEvent("loadDataEnd")}};Zapatec.Widget.prototype.loadDataHtml=function(a){};Zapatec.Widget.prototype.loadDataHtmlText=function(a){var b=Zapatec.Transport.parseHtml(a);this.loadDataHtml(b.firstChild)};Zapatec.Widget.prototype.loadDataJson=function(a){};Zapatec.Widget.prototype.loadDataXml=function(a){};Zapatec.Widget.prototype.editData=function(a){this.fireEvent("editData",a)};Zapatec.Widget.prototype.editDataGet=function(){return null};Zapatec.Widget.prototype.editDataCancel=function(){this.fireEvent("editDataCancel");if(typeof this.hide=="function"){this.hide()}};Zapatec.Widget.prototype.editDataReturn=function(a){this.fireEvent("editDataReturn",a);if(!a.widget||typeof a.widget.editDataReceive!="function"){return}a.widget.editDataReceive({data:this.editDataGet()});this.editDataCancel()};Zapatec.Widget.prototype.editDataReceive=function(a){this.fireEvent("editDataReceive",a)};Zapatec.Widget.callMethod=function(b,c){var a=Zapatec.Widget.getWidgetById(b);if(a&&typeof a[c]=="function"){var d=[].slice.call(arguments,2);return a[c].apply(a,d)}};Zapatec.Widget.getElementById=function(a){if(typeof a=="string"){return document.getElementById(a)}return a};Zapatec.Widget.getStyle=function(a){var b=a.getAttribute("style")||"";if(typeof b=="string"){return b}return b.cssText};Zapatec.Drag={};Zapatec.Utils.emulateWindowEvent(["mousedown","mousemove","mouseup"]);Zapatec.Drag.currentId=null;Zapatec.Drag.start=function(f,c,e){if(Zapatec.Drag.currentId){return true}var b=document.getElementById(c);if(!b||b.zpDrag){return true}if(!e){e={}}var a=Zapatec.Utils.getMousePos(f||window.event);Zapatec.EventDriven.fireEvent("dragStart",{id:c});b.zpDrag=true;b.zpDragPageX=a.pageX;b.zpDragPageY=a.pageY;if(b.offsetParent){var a=Zapatec.Utils.getElementOffset(b);var d=Zapatec.Utils.getElementOffset(b.offsetParent);b.zpDragLeft=a.left-d.left;b.zpDragTop=a.top-d.top}else{b.zpDragLeft=b.offsetLeft;b.zpDragTop=b.offsetTop}b.zpDragPrevLeft=b.zpDragLeft;b.zpDragPrevTop=b.zpDragTop;b.zpDragV=e.vertical;b.zpDragH=e.horizontal;b.zpDragLimTop=typeof e.limitTop=="number"?e.limitTop:-Infinity;b.zpDragLimBot=typeof e.limitBottom=="number"?e.limitBottom:Infinity;b.zpDragLimLft=typeof e.limitLeft=="number"?e.limitLeft:-Infinity;b.zpDragLimRgh=typeof e.limitRight=="number"?e.limitRight:Infinity;Zapatec.Drag.currentId=c;Zapatec.Utils.addEvent(document,"mousemove",Zapatec.Drag.move);Zapatec.Utils.addEvent(document,"mouseup",Zapatec.Drag.end);return true};Zapatec.Drag.move=function(d){d||(d=window.event);if(!Zapatec.Drag.currentId){return Zapatec.Utils.stopEvent(d)}var c=document.getElementById(Zapatec.Drag.currentId);if(!(c&&c.zpDrag)){return Zapatec.Utils.stopEvent(d)}var b=Zapatec.Utils.getMousePos(d);var a={id:Zapatec.Drag.currentId,startLeft:c.zpDragLeft,startTop:c.zpDragTop,prevLeft:c.zpDragPrevLeft,prevTop:c.zpDragPrevTop,left:0,top:0};if(!c.zpDragV){var f=c.zpDragLeft+b.pageX-c.zpDragPageX;if(c.zpDragLimLft<=f&&c.zpDragLimRgh>=f){c.style.right="";c.style.left=f+"px";a.left=f;c.zpDragPrevLeft=f}else{a.left=a.prevLeft}}if(!c.zpDragH){var e=c.zpDragTop+b.pageY-c.zpDragPageY;if(c.zpDragLimTop<=e&&c.zpDragLimBot>=e){c.style.bottom="";c.style.top=e+"px";a.top=e;c.zpDragPrevTop=e}else{a.top=a.prevTop}}Zapatec.EventDriven.fireEvent("dragMove",a);return Zapatec.Utils.stopEvent(d)};Zapatec.Drag.end=function(c){c||(c=window.event);if(!Zapatec.Drag.currentId){return Zapatec.Utils.stopEvent(c)}var b=document.getElementById(Zapatec.Drag.currentId);if(!(b&&b.zpDrag)){return Zapatec.Utils.stopEvent(c)}Zapatec.Utils.removeEvent(document,"mousemove",Zapatec.Drag.move);Zapatec.Utils.removeEvent(document,"mouseup",Zapatec.Drag.end);var a={id:Zapatec.Drag.currentId,startLeft:b.zpDragLeft,startTop:b.zpDragTop,left:b.zpDragPrevLeft,top:b.zpDragPrevTop};Zapatec.Drag.currentId=null;b.zpDrag=null;b.zpDragPageX=null;b.zpDragPageY=null;b.zpDragLeft=null;b.zpDragTop=null;b.zpDragPrevLeft=null;b.zpDragPrevTop=null;b.zpDragV=null;b.zpDragH=null;b.zpDragLimTop=null;b.zpDragLimBot=null;b.zpDragLimLft=null;b.zpDragLimRgh=null;Zapatec.EventDriven.fireEvent("dragEnd",a);return Zapatec.Utils.stopEvent(c)};

if(!window.Zapatec||(Zapatec&&!Zapatec.include)){alert("You need to include zapatec.js file!")}else{Zapatec.calendarPath=Zapatec.getPath("Zapatec.CalendarWidget")}window.calendar=null;Zapatec.Calendar=function(c,b,e,a){this.bShowHistoryEvent=false;this.activeDiv=null;this.currentDateEl=null;this.getDateStatus=null;this.getDateToolTip=null;this.getDateText=null;this.timeout=null;this.onSelected=e||null;this.onClose=a||null;this.onFDOW=null;this.dragging=false;this.hidden=false;this.minYear=1970;this.maxYear=2050;this.minMonth=0;this.maxMonth=11;this.dateFormat=Zapatec.Calendar.i18n("DEF_DATE_FORMAT");this.ttDateFormat=Zapatec.Calendar.i18n("TT_DATE_FORMAT");this.historyDateFormat="%B %d, %Y";this.isPopup=true;this.weekNumbers=true;this.noGrab=false;if(Zapatec.Calendar.prefs.fdow||(Zapatec.Calendar.prefs.fdow==0)){this.firstDayOfWeek=parseInt(Zapatec.Calendar.prefs.fdow,10)}else{var d=0;if(typeof c=="number"){d=c}else{if(typeof Zapatec.Calendar._FD=="number"){d=Zapatec.Calendar._FD}}this.firstDayOfWeek=d}this.showsOtherMonths=false;this.dateStr=b;this.showsTime=false;this.sortOrder="asc";this.time24=true;this.timeInterval=null;this.yearStep=2;this.hiliteToday=true;this.multiple=null;this.table=null;this.element=null;this.tbody=new Array();this.firstdayname=null;this.monthsCombo=null;this.hilitedMonth=null;this.activeMonth=null;this.yearsCombo=null;this.hilitedYear=null;this.activeYear=null;this.histCombo=null;this.hilitedHist=null;this.dateClicked=false;this.numberMonths=1;this.controlMonth=1;this.vertical=false;this.monthsInRow=1;this.titles=new Array();this.rowsOfDayNames=new Array();this.helpButton=true;this.disableFdowClick=true;this.disableDrag=false;this.yearNav=true;this.closeButton=true;Zapatec.Calendar._initSDN()};Zapatec.Calendar._initSDN=function(){if(typeof Zapatec.Calendar._TT._SDN=="undefined"){if(typeof Zapatec.Calendar._TT._SDN_len=="undefined"){Zapatec.Calendar._TT._SDN_len=3}var a=[];for(var b=8;b>0;){a[--b]=Zapatec.Calendar._TT._DN[b].substr(0,Zapatec.Calendar._TT._SDN_len)}Zapatec.Calendar._TT._SDN=a;if(typeof Zapatec.Calendar._TT._SMN_len=="undefined"){Zapatec.Calendar._TT._SMN_len=3}a=[];for(var b=12;b>0;){a[--b]=Zapatec.Calendar._TT._MN[b].substr(0,Zapatec.Calendar._TT._SMN_len)}Zapatec.Calendar._TT._SMN=a}if(typeof Zapatec.Calendar._TT._AMPM=="undefined"){Zapatec.Calendar._TT._AMPM={am:"am",pm:"pm"}}};Zapatec.Calendar.i18n=function(c,a){var b="";if(!a){if(Zapatec.Calendar._TT){b=Zapatec.Calendar._TT[c]}if(!b&&Zapatec.Calendar._TT_en){b=Zapatec.Calendar._TT_en[c]}}else{switch(a){case"dn":b=Zapatec.Calendar._TT._DN[c];break;case"sdn":b=Zapatec.Calendar._TT._SDN[c];break;case"mn":b=Zapatec.Calendar._TT._MN[c];break;case"smn":b=Zapatec.Calendar._TT._SMN[c];break;case"ampm":b=Zapatec.Calendar._TT._AMPM[c];break}}if(!b){b=""+c}return b};Zapatec.Calendar._C=null;Zapatec.Calendar.prefs={fdow:null,history:"",sortOrder:"asc",hsize:9};Zapatec.Calendar.savePrefs=function(){Zapatec.Utils.writeCookie("ZP_CAL",Zapatec.Utils.makePref(this.prefs),null,"/",30)};Zapatec.Calendar.loadPrefs=function(){var a=Zapatec.Utils.getCookie("ZP_CAL"),b;if(a){b=Zapatec.Utils.loadPref(a);if(b){Zapatec.Utils.mergeObjects(this.prefs,b)}}};Zapatec.Calendar._add_evs=function(a){var b=Zapatec.Calendar;Zapatec.Utils.addEvent(a,"mouseover",b.dayMouseOver);Zapatec.Utils.addEvent(a,"mousedown",b.dayMouseDown);Zapatec.Utils.addEvent(a,"mouseout",b.dayMouseOut);if(Zapatec.is_ie){Zapatec.Utils.addEvent(a,"dblclick",b.dayMouseDblClick)}};Zapatec.Calendar._del_evs=function(a){var b=this;Zapatec.Utils.removeEvent(a,"mouseover",b.dayMouseOver);Zapatec.Utils.removeEvent(a,"mousedown",b.dayMouseDown);Zapatec.Utils.removeEvent(a,"mouseout",b.dayMouseOut);if(Zapatec.is_ie){Zapatec.Utils.removeEvent(a,"dblclick",b.dayMouseDblClick)}};Zapatec.Calendar.findMonth=function(a){if(typeof a.month!="undefined"){return a}else{if(a.parentNode&&typeof a.parentNode.month!="undefined"){return a.parentNode}}return null};Zapatec.Calendar.findHist=function(a){if(typeof a.histDate!="undefined"){return a}else{if(a.parentNode&&typeof a.parentNode.histDate!="undefined"){return a.parentNode}}return null};Zapatec.Calendar.findYear=function(a){if(typeof a.year!="undefined"){return a}else{if(a.parentNode&&typeof a.parentNode.year!="undefined"){return a.parentNode}}return null};Zapatec.Calendar.showMonthsCombo=function(){var b=Zapatec.Calendar._C;if(!b){return false}var d=b.activeDiv;var n=b.monthsCombo;var f=b.date,o=b.date.getMonth(),c=b.date.getFullYear(),g=(c==b.minYear),l=(c==b.maxYear);for(var h=n.firstChild;h;h=h.nextSibling){var e=h.month;Zapatec.Utils.removeClass(h,"hilite");Zapatec.Utils.removeClass(h,"active");Zapatec.Utils.removeClass(h,"disabled");h.disabled=false;if((g&&e<b.minMonth)||(l&&e>b.maxMonth)){Zapatec.Utils.addClass(h,"disabled");h.disabled=true}if(e==o){Zapatec.Utils.addClass(b.activeMonth=h,"active")}}var p=n.style;p.display="block";if(d.navtype<0){p.left=d.offsetLeft+"px"}else{var a=n.offsetWidth;if(typeof a=="undefined"){a=50}p.left=(d.offsetLeft+d.offsetWidth-a)+"px"}p.top=(d.offsetTop+d.offsetHeight)+"px";b.updateWCH(n)};Zapatec.Calendar.showHistoryCombo=function(){var c=Zapatec.Calendar._C,m,g,e,d,l,n,f,b;if(!c){return false}l=c.histCombo;while(l.firstChild){l.removeChild(l.lastChild)}if(Zapatec.Calendar.prefs.history){m=Zapatec.Calendar.prefs.history.split(/,/);e=0;while(f=m[e++]){f=f.split(/\//);g=Zapatec.Utils.createElement("div");g.className=Zapatec.is_ie?"label-IEfix":"label";g.histDate=new Date(parseInt(f[0],10),parseInt(f[1],10)-1,parseInt(f[2],10),f[3]?parseInt(f[3],10):0,f[4]?parseInt(f[4],10):0);g.appendChild(window.document.createTextNode(g.histDate.print(c.historyDateFormat)));l.appendChild(g);if(g.histDate.dateEqualsTo(c.date)){Zapatec.Utils.addClass(g,"active")}}}d=c.activeDiv;n=l.style;n.display="block";n.left=Math.floor(d.offsetLeft+(d.offsetWidth-l.offsetWidth)/2)+"px";n.top=(d.offsetTop+d.offsetHeight)+"px";c.updateWCH(l);c.bEventShowHistory=true};Zapatec.Calendar.showYearsCombo=function(d){var a=Zapatec.Calendar._C;if(!a){return false}var c=a.activeDiv;var f=a.yearsCombo;if(a.hilitedYear){Zapatec.Utils.removeClass(a.hilitedYear,"hilite")}if(a.activeYear){Zapatec.Utils.removeClass(a.activeYear,"active")}a.activeYear=null;var b=a.date.getFullYear()+(d?1:-1);var l=f.firstChild;var h=false;for(var e=12;e>0;--e){if(b>=a.minYear&&b<=a.maxYear){l.firstChild.data=b;l.year=b;l.style.display="block";h=true}else{l.style.display="none"}l=l.nextSibling;b+=d?a.yearStep:-a.yearStep}if(h){var m=f.style;m.display="block";if(c.navtype<0){m.left=c.offsetLeft+"px"}else{var g=f.offsetWidth;if(typeof g=="undefined"){g=50}m.left=(c.offsetLeft+c.offsetWidth-g)+"px"}m.top=(c.offsetTop+c.offsetHeight)+"px"}a.updateWCH(f)};Zapatec.Calendar.tableMouseUp=function(e){var h=Zapatec.Calendar._C;if(!h){return false}if(h.timeout){clearTimeout(h.timeout)}var d=h.activeDiv;if(!d){return false}var g=Zapatec.Utils.getTargetElement(e);if(typeof(d.navtype)=="undefined"){while(g&&!g.calendar){g=g.parentNode}}e||(e=window.event);Zapatec.Utils.removeClass(d,"active");if(g==d||g.parentNode==d){Zapatec.Calendar.cellClick(d,e)}var c=Zapatec.Calendar.findMonth(g);var a=null;if(c){if(!c.disabled){a=new Date(h.date);if(c.month!=a.getMonth()){a.setMonth(c.month);h.setDate(a,true);h.dateClicked=false;h.callHandler()}}}else{var b=Zapatec.Calendar.findYear(g);if(b){a=new Date(h.date);if(b.year!=a.getFullYear()){a.setFullYear(b.year);h.setDate(a,true);h.dateClicked=false;h.callHandler()}}else{var f=Zapatec.Calendar.findHist(g);if(f&&!f.histDate.dateEqualsTo(h.date)){a=new Date(f.histDate);h._init(h.firstDayOfWeek,h.date=a);h.dateClicked=false;h.callHandler();h.updateHistory()}}}Zapatec.Utils.removeEvent(window.document,"mouseup",Zapatec.Calendar.tableMouseUp);Zapatec.Utils.removeEvent(window.document,"mouseover",Zapatec.Calendar.tableMouseOver);Zapatec.Utils.removeEvent(window.document,"mousemove",Zapatec.Calendar.tableMouseOver);h._hideCombos();Zapatec.Calendar._C=null;return Zapatec.Utils.stopEvent(e)};Zapatec.Calendar.tableMouseOver=function(z){var p=Zapatec.Calendar._C;if(!p){return}var d=p.activeDiv;var B=Zapatec.Utils.getTargetElement(z);if(B==d||B.parentNode==d){Zapatec.Utils.addClass(d,"hilite active");Zapatec.Utils.addClass(d.parentNode,"rowhilite")}else{if(typeof d.navtype=="undefined"||(d.navtype!=50&&((d.navtype==0&&!p.histCombo)||Math.abs(d.navtype)>2))){Zapatec.Utils.removeClass(d,"active")}Zapatec.Utils.removeClass(d,"hilite");Zapatec.Utils.removeClass(d.parentNode,"rowhilite")}z||(z=window.event);if(d.navtype==50&&B!=d){var g=Zapatec.Utils.getAbsolutePos(d);var m=d.offsetWidth;var l=z.clientX;var o;var a=true;if(l>g.x+m){o=l-g.x-m;a=false}else{o=g.x-l}if(o<0){o=0}var q=d._range;var s=d._current;var A=p.currentDate;var y=(A.getHours()>=12);var b=d.firstChild.data;var h=Math.floor(o/10)%q.length;for(var v=q.length;--v>=0;){if(q[v]==s){break}}while(h-->0){if(a){if(--v<0){v=q.length-1}}else{if(++v>=q.length){v=0}}}if(p.getDateStatus){var r=null;var f=null;var c=new Date(A);if(d.className.indexOf("ampm",0)!=-1){r=A.getMinutes();if(b!=q[v]){f=(q[v]==Zapatec.Calendar.i18n("pm","ampm"))?((A.getHours()==0)?(12):(A.getHours()+12)):(A.getHours()-12)}else{f=A.getHours()}c.setHours(f)}if(d.className.indexOf("hour",0)!=-1){r=A.getMinutes();f=(!p.time24)?((y)?((q[v]!=12)?(parseInt(q[v],10)+12):(12)):((q[v]!=12)?(q[v]):(0))):(q[v]);c.setHours(f)}if(d.className.indexOf("minute",0)!=-1){f=A.getHours();r=q[v];c.setMinutes(r)}}var t=false;if(p.getDateStatus){t=p.getDateStatus(c,A.getFullYear(),A.getMonth(),A.getDate(),parseInt(f,10),parseInt(r,10))}if(t==false){if(!((!p.time24)&&(q[v]==Zapatec.Calendar.i18n("pm","ampm"))&&(f>23))){d.firstChild.data=q[v]}}p.onUpdateTime()}var u=Zapatec.Calendar.findMonth(B);if(u){if(!u.disabled){if(u.month!=p.date.getMonth()){if(p.hilitedMonth){Zapatec.Utils.removeClass(p.hilitedMonth,"hilite")}Zapatec.Utils.addClass(u,"hilite");p.hilitedMonth=u}else{if(p.hilitedMonth){Zapatec.Utils.removeClass(p.hilitedMonth,"hilite")}}}}else{if(p.hilitedMonth){Zapatec.Utils.removeClass(p.hilitedMonth,"hilite")}var n=Zapatec.Calendar.findYear(B);if(n){if(n.year!=p.date.getFullYear()){if(p.hilitedYear){Zapatec.Utils.removeClass(p.hilitedYear,"hilite")}Zapatec.Utils.addClass(n,"hilite");p.hilitedYear=n}else{if(p.hilitedYear){Zapatec.Utils.removeClass(p.hilitedYear,"hilite")}}}else{if(p.hilitedYear){Zapatec.Utils.removeClass(p.hilitedYear,"hilite")}var e=Zapatec.Calendar.findHist(B);if(e){if(!e.histDate.dateEqualsTo(p.date)){if(p.hilitedHist){Zapatec.Utils.removeClass(p.hilitedHist,"hilite")}Zapatec.Utils.addClass(e,"hilite");p.hilitedHist=e}else{if(p.hilitedHist){Zapatec.Utils.removeClass(p.hilitedHist,"hilite")}}}else{if(p.hilitedHist){Zapatec.Utils.removeClass(p.hilitedHist,"hilite")}}}}return Zapatec.Utils.stopEvent(z)};Zapatec.Calendar.tableMouseDown=function(a){if(Zapatec.Utils.getTargetElement(a)==Zapatec.Utils.getElement(a)){return Zapatec.Utils.stopEvent(a)}};Zapatec.Calendar.calDragIt=function(d){d||(d=window.event);var e=Zapatec.Calendar._C;if(!e){Zapatec.Calendar.calDragEnd()}if(!e.disableDrag){if(!(e&&e.dragging)){return false}var g=d.clientX+window.document.body.scrollLeft;var f=d.clientY+window.document.body.scrollTop;e.hideShowCovered();var c=e.element.style,a=g-e.xOffs,b=f-e.yOffs;c.left=a+"px";c.top=b+"px";Zapatec.Utils.setupWCH(e.WCH,a,b)}return Zapatec.Utils.stopEvent(d)};Zapatec.Calendar.calDragEnd=function(a){var b=Zapatec.Calendar._C;Zapatec.Utils.removeEvent(window.document,"mousemove",Zapatec.Calendar.calDragIt);Zapatec.Utils.removeEvent(window.document,"mouseover",Zapatec.Calendar.calDragIt);Zapatec.Utils.removeEvent(window.document,"mouseup",Zapatec.Calendar.calDragEnd);if(!b){return false}b.dragging=false;Zapatec.Calendar.tableMouseUp(a);b.hideShowCovered()};Zapatec.Calendar.dayMouseDown=function(c){var a=true;var b=Zapatec.Utils.getElement(c);if(b.className.indexOf("disabled")!=-1||b.className.indexOf("true")!=-1){return false}var d=b.calendar;while(!d){b=b.parentNode;d=b.calendar}d.bEventShowHistory=false;d.activeDiv=b;Zapatec.Calendar._C=d;if(b.navtype!=300){if(b.navtype==50){if(!((d.timeInterval==null)||((d.timeInterval<60)&&(b.className.indexOf("hour",0)!=-1)))){a=false}b._current=b.firstChild.data;if(a){Zapatec.Utils.addEvent(window.document,"mousemove",Zapatec.Calendar.tableMouseOver)}}else{if(((b.navtype==201)||(b.navtype==202))&&(d.timeInterval>30)&&(b.timePart.className.indexOf("minute",0)!=-1)){a=false}if(a){Zapatec.Utils.addEvent(window.document,Zapatec.is_ie5?"mousemove":"mouseover",Zapatec.Calendar.tableMouseOver)}}if(a){Zapatec.Utils.addClass(b,"hilite active")}Zapatec.Utils.addEvent(window.document,"mouseup",Zapatec.Calendar.tableMouseUp)}else{if(d.isPopup){d._dragStart(c)}else{Zapatec.Calendar._C=null}}if(b.navtype==-1||b.navtype==1){if(d.timeout){clearTimeout(d.timeout)}d.timeout=setTimeout("Zapatec.Calendar.showMonthsCombo()",250)}else{if(b.navtype==-2||b.navtype==2){if(d.timeout){clearTimeout(d.timeout)}d.timeout=setTimeout((b.navtype>0)?"Zapatec.Calendar.showYearsCombo(true)":"Zapatec.Calendar.showYearsCombo(false)",250)}else{if(b.navtype==0&&Zapatec.Calendar.prefs.history){if(d.timeout){clearTimeout(d.timeout)}d.timeout=setTimeout("Zapatec.Calendar.showHistoryCombo()",250)}else{d.timeout=null}}}return Zapatec.Utils.stopEvent(c)};Zapatec.Calendar.dayMouseDblClick=function(a){Zapatec.Calendar.cellClick(Zapatec.Utils.getElement(a),a||window.event);if(Zapatec.is_ie){window.document.selection.empty()}};Zapatec.Calendar.dayMouseOver=function(d){var c=Zapatec.Utils.getElement(d),a=c.caldate;while(!c.calendar){c=c.parentNode;a=c.caldate}var e=c.calendar;var b=c.timePart;if(a){a=new Date(a[0],a[1],a[2]);if(a.getDate()!=c.caldate[2]){a.setDate(c.caldate[2])}}if(Zapatec.Utils.isRelated(c,d)||Zapatec.Calendar._C||c.className.indexOf("disabled")!=-1||c.className.indexOf("true")!=-1){return false}if(c.ttip){if(c.ttip.substr(0,1)=="_"){c.ttip=a.print(c.calendar.ttDateFormat)+c.ttip.substr(1)}c.calendar.showHint(c.ttip)}if(c.navtype!=300){if(!((e.timeInterval==null)||(c.className.indexOf("ampm",0)!=-1)||((e.timeInterval<60)&&(c.className.indexOf("hour",0)!=-1)))&&(c.navtype==50)){return Zapatec.Utils.stopEvent(d)}if(((c.navtype==201)||(c.navtype==202))&&(e.timeInterval>30)&&(b.className.indexOf("minute",0)!=-1)){return Zapatec.Utils.stopEvent(d)}Zapatec.Utils.addClass(c,"hilite");if(a){Zapatec.Utils.addClass(c.parentNode,"rowhilite")}}return Zapatec.Utils.stopEvent(d)};Zapatec.Calendar.dayMouseOut=function(b){var a=Zapatec.Utils.getElement(b);while(!a.calendar){a=a.parentNode;caldate=a.caldate}if(Zapatec.Utils.isRelated(a,b)||Zapatec.Calendar._C||a.className.indexOf("disabled")!=-1||a.className.indexOf("true")!=-1){return false}Zapatec.Utils.removeClass(a,"hilite");if(a.caldate){Zapatec.Utils.removeClass(a.parentNode,"rowhilite")}if(a.calendar){a.calendar.showHint(Zapatec.Calendar.i18n("SEL_DATE"))}return Zapatec.Utils.stopEvent(b)};Zapatec.Calendar.cellClick=function(c,x){var n=c.calendar;var g=false;var b=false;var y=null;while(!n){c=c.parentNode;n=c.calendar}if(c.className.indexOf("disabled")!=-1||c.className.indexOf("true")!=-1){return false}if(typeof c.navtype=="undefined"){if(n.currentDateEl){Zapatec.Utils.removeClass(n.currentDateEl,"selected");Zapatec.Utils.addClass(c,"selected");g=(n.currentDateEl==c);if(!g){n.currentDateEl=c}}var d=new Date(c.caldate[0],c.caldate[1],c.caldate[2]);if(d.getDate()!=c.caldate[2]){d.setDate(c.caldate[2])}n.date.setDateOnly(d);n.currentDate.setDateOnly(d);y=n.date;n.dateClicked=true;if(n.multiple){n._toggleMultipleDate(new Date(y))}b=true;if(c.otherMonth){n._init(n.firstDayOfWeek,y)}n.onSetTime()}else{if(c.navtype==200){Zapatec.Utils.removeClass(c,"hilite");n.callCloseHandler();return}y=new Date(n.date);if(c.navtype==0&&!n.bEventShowHistory){y.setDateOnly(new Date())}n.dateClicked=false;var m=y.getFullYear();var t=y.getMonth();function l(A){var B=y.getDate();var i=y.getMonthDays(A);if(B>i){y.setDate(i)}y.setMonth(A)}switch(c.navtype){case 400:Zapatec.Utils.removeClass(c,"hilite");var o=Zapatec.Calendar.i18n("ABOUT");if(typeof o!="undefined"){o+=n.showsTime?Zapatec.Calendar.i18n("ABOUT_TIME"):""}else{o='Help and about box text is not translated into this language.\nIf you know this language and you feel generous please update\nthe corresponding file in "lang" subdir to match calendar-en.js\nand send it back to <support@zapatec.com> to get it into the distribution  ;-)\n\nThank you!\nhttp://www.zapatec.com\n'}alert(o);return;case -2:if(m>n.minYear){y.setFullYear(m-1)}break;case -1:if(t>0){l(t-1)}else{if(m-->n.minYear){y.setFullYear(m);l(11)}}break;case 1:if(t<11){l(t+1)}else{if(m<n.maxYear){y.setFullYear(m+1);l(0)}}break;case 2:if(m<n.maxYear){y.setFullYear(m+1)}break;case 100:n.setFirstDayOfWeek(c.fdow);Zapatec.Calendar.prefs.fdow=n.firstDayOfWeek;Zapatec.Calendar.savePrefs();if(n.onFDOW){n.onFDOW(n.firstDayOfWeek)}return;case 50:var y=n.currentDate;if(c.className.indexOf("ampm",0)>=0){}else{if(!((n.timeInterval==null)||((n.timeInterval<60)&&(c.className.indexOf("hour",0)!=-1)))){break}}var p=c._range;var r=c.firstChild.data;var v=(y.getHours()>=12);for(var u=p.length;--u>=0;){if(p[u]==r){break}}if(x&&x.shiftKey){if(--u<0){u=p.length-1}}else{if(++u>=p.length){u=0}}if(n.getDateStatus){var q=null;var f=null;var a=new Date(y);if(c.className.indexOf("ampm",0)!=-1){q=y.getMinutes();f=(p[u]==Zapatec.Calendar.i18n("pm","ampm"))?((y.getHours()==12)?(y.getHours()):(y.getHours()+12)):(y.getHours()-12);if(n.getDateStatus&&n.getDateStatus(a,y.getFullYear(),y.getMonth(),y.getDate(),parseInt(f,10),parseInt(q,10))){var h;if(p[u]==Zapatec.Calendar.i18n("pm","ampm")){h=-5}else{h=5}hours=f;minutes=q;do{minutes+=h;if(minutes>=60){minutes-=60;++hours;if(hours>=24){hours-=24}a.setHours(hours)}if(minutes<0){minutes+=60;--hours;if(hours<0){hours+=24}a.setHours(hours)}a.setMinutes(minutes);if(!n.getDateStatus(a,y.getFullYear(),y.getMonth(),y.getDate(),parseInt(hours,10),parseInt(minutes,10))){f=hours;q=minutes;if(f>12){u=1}else{u=0}n.date.setHours(f);n.date.setMinutes(q);n.onSetTime()}}while((f!=hours)||(q!=minutes))}a.setHours(f)}if(c.className.indexOf("hour",0)!=-1){q=y.getMinutes();f=(!n.time24)?((v)?((p[u]!=12)?(parseInt(p[u],10)+12):(12)):((p[u]!=12)?(p[u]):(0))):(p[u]);a.setHours(f)}if(c.className.indexOf("minute",0)!=-1){f=y.getHours();q=p[u];a.setMinutes(q)}}var s=false;if(n.getDateStatus){s=n.getDateStatus(a,y.getFullYear(),y.getMonth(),y.getDate(),parseInt(f,10),parseInt(q,10))}if(!s){c.firstChild.data=p[u]}n.onUpdateTime();return;case 201:case 202:var w=c.timePart;var y=n.currentDate;if((w.className.indexOf("minute",0)!=-1)&&(n.timeInterval>30)){break}var z=parseInt(w.firstChild.data,10);var v=(y.getHours()>=12);var p=w._range;for(var u=p.length;--u>=0;){if(z==p[u]){z=u;break}}var e=w._step;if(c.navtype==201){z=e*Math.floor(z/e);z+=e;if(z>=p.length){z=0}}else{z=e*Math.ceil(z/e);z-=e;if(z<0){z=p.length-e}}if(n.getDateStatus){var q=null;var f=null;var a=new Date(y);if(w.className=="hour"){q=y.getMinutes();f=(!n.time24)?((v)?((p[z]!=12)?(parseInt(p[z],10)+12):(12)):((p[z]!=12)?(p[z]):(0))):(p[z]);a.setHours(f)}if(w.className=="minute"){f=y.getHours();q=z;a.setMinutes(p[z])}}var s=false;if(n.getDateStatus){s=n.getDateStatus(a,y.getFullYear(),y.getMonth(),y.getDate(),parseInt(f,10),parseInt(q,10))}if(!s){w.firstChild.data=p[z]}n.onUpdateTime();return;case 0:if(n.getDateStatus&&((n.getDateStatus(y,y.getFullYear(),y.getMonth(),y.getDate())==true)||(n.getDateStatus(y,y.getFullYear(),y.getMonth(),y.getDate())=="disabled"))){return false}break}if(!y.equalsTo(n.date)){if((c.navtype>=-2&&c.navtype<=2)&&(c.navtype!=0)){n._init(n.firstDayOfWeek,y,true);return}n.setDate(y);b=!(c.navtype&&(c.navtype>=-2&&c.navtype<=2))}}if(b){n.callHandler()}if(g){Zapatec.Utils.removeClass(c,"hilite");n.callCloseHandler()}};Zapatec.Calendar.prototype.create=function(o){var g=null;if(!o){g=window.document.getElementsByTagName("body")[0];this.isPopup=true;this.WCH=Zapatec.Utils.createWCH()}else{g=o;this.isPopup=false}this.currentDate=this.date=this.dateStr?new Date(this.dateStr):new Date();var x=Zapatec.Utils.createElement("table");this.table=x;x.cellSpacing=0;x.cellPadding=0;Zapatec.Utils.createProperty(x,"calendar",this);Zapatec.Utils.addEvent(x,"mousedown",Zapatec.Calendar.tableMouseDown);var n=Zapatec.Utils.createElement("div");this.element=n;n.className="calendar";if(Zapatec.is_opera){x.style.width=(this.monthsInRow*((this.weekNumbers)?(8):(7))*2+4.4*this.monthsInRow)+"em"}if(this.isPopup){n.style.position="absolute";n.style.display="none"}n.appendChild(x);var c=null;var f=null;var m=this;var d=function(A,l,i){c=Zapatec.Utils.createElement("td",f);c.colSpan=l;c.className="button";if(Math.abs(i)<=2){c.className+=" nav"}Zapatec.Calendar._add_evs(c);Zapatec.Utils.createProperty(c,"calendar",m);c.navtype=i;if(A.substr(0,1)!="&"){c.appendChild(document.createTextNode(A))}else{c.innerHTML=A}return c};var e=function(i,l){c=Zapatec.Utils.createElement("td",i);c.colSpan=l;c.className="button";c.innerHTML="<div>&nbsp</div>";return c};var y=((this.weekNumbers)?(8):(7))*this.monthsInRow-2;var w=Zapatec.Utils.createElement("thead",x);if(this.numberMonths==1){this.title=w}f=Zapatec.Utils.createElement("tr",w);if(this.helpButton){d("?",1,400).ttip=Zapatec.Calendar.i18n("INFO")}else{e(f,1)}this.title=d("&nbsp;",y,300);this.title.className="title";if(this.isPopup){if(!this.disableDrag){this.title.ttip=Zapatec.Calendar.i18n("DRAG_TO_MOVE");this.title.style.cursor="move"}if(this.closeButton){d("&#x00d7;",1,200).ttip=Zapatec.Calendar.i18n("CLOSE")}else{e(f,1)}}else{e(f,1)}f=Zapatec.Utils.createElement("tr",w);this._nav_py=d("&#x00ab;",1,-2);this._nav_py.ttip=Zapatec.Calendar.i18n("PREV_YEAR");this._nav_pm=d("&#x2039;",1,-1);this._nav_pm.ttip=Zapatec.Calendar.i18n("PREV_MONTH");this._nav_now=d(Zapatec.Calendar.i18n("TODAY"),y-2,0);this._nav_now.ttip=Zapatec.Calendar.i18n("GO_TODAY");this._nav_nm=d("&#x203a;",1,1);this._nav_nm.ttip=Zapatec.Calendar.i18n("NEXT_MONTH");this._nav_ny=d("&#x00bb;",1,2);this._nav_ny.ttip=Zapatec.Calendar.i18n("NEXT_YEAR");var z=Math.floor(this.numberMonths/this.monthsInRow);if(this.numberMonths%this.monthsInRow>0){++z}for(var p=1;p<=z;++p){var w=Zapatec.Utils.createElement("thead",x);if(Zapatec.is_opera){w.style.display="table-row-group"}if(this.numberMonths!=1){f=Zapatec.Utils.createElement("tr",w);var y=5;this.weekNumbers&&++y;this.titles[p]=new Array();for(var q=1;(q<=this.monthsInRow)&&((p-1)*this.monthsInRow+q<=this.numberMonths);++q){e(f,1);this.titles[p][q]=d("&nbsp;",y,300);this.titles[p][q].className="title";e(f,1)}}f=Zapatec.Utils.createElement("tr",w);f.className="daynames";for(q=1;(q<=this.monthsInRow)&&((p-1)*this.monthsInRow+q<=this.numberMonths);++q){if(this.weekNumbers){c=Zapatec.Utils.createElement("td",f);c.className="name wn";c.appendChild(window.document.createTextNode(Zapatec.Calendar.i18n("WK")));if(q>1){Zapatec.Utils.addClass(c,"month-left-border")}var v=Zapatec.Calendar.i18n("WK");if(v==null){v=""}}for(var u=7;u>0;--u){c=Zapatec.Utils.createElement("td",f);c.appendChild(document.createTextNode("&nbsp;"))}}this.firstdayname=f.childNodes[this.weekNumbers?1:0];this.rowsOfDayNames[p]=this.firstdayname;this._displayWeekdays();var b=Zapatec.Utils.createElement("tbody",x);this.tbody[p]=b;for(u=6;u>0;--u){f=Zapatec.Utils.createElement("tr",b);for(q=1;(q<=this.monthsInRow)&&((p-1)*this.monthsInRow+q<=this.numberMonths);++q){if(this.weekNumbers){c=Zapatec.Utils.createElement("td",f);c.appendChild(document.createTextNode("&nbsp;"))}for(var r=7;r>0;--r){c=Zapatec.Utils.createElement("td",f);c.appendChild(document.createTextNode("&nbsp;"));Zapatec.Utils.createProperty(c,"calendar",this);Zapatec.Calendar._add_evs(c)}}}}var h=Zapatec.Utils.createElement("tfoot",x);if(this.showsTime){f=Zapatec.Utils.createElement("tr",h);f.className="time";var a;if(this.monthsInRow!=1){c=Zapatec.Utils.createElement("td",f);a=c.colSpan=Math.ceil((((this.weekNumbers)?8:7)*(this.monthsInRow-1))/2);c.className="timetext";c.innerHTML="&nbsp"}c=Zapatec.Utils.createElement("td",f);c.className="timetext";c.colSpan=this.weekNumbers?2:1;c.innerHTML=Zapatec.Calendar.i18n("TIME")||"&nbsp;";(function(){function D(P,T,H,S){var U,O,Q,K,J;if(S){c=Zapatec.Utils.createElement("td",f);c.colSpan=1;if(m.showsTime!="seconds"){++c.colSpan}c.className="parent-"+P;U=Zapatec.Utils.createElement("table",c);U.cellSpacing=U.cellPadding=0;if(P=="hour"){U.align="right"}U.className="calendar-time-scroller";O=Zapatec.Utils.createElement("tbody",U);Q=Zapatec.Utils.createElement("tr",O);K=Zapatec.Utils.createElement("tr",O)}else{Q=f}J=Zapatec.Utils.createElement("td",Q);J.className=P;J.appendChild(window.document.createTextNode(T));Zapatec.Utils.createProperty(J,"calendar",m);J.ttip=Zapatec.Calendar.i18n("TIME_PART");J.navtype=50;J._range=[];if(!S){J._range=H}else{J.rowSpan=2;for(var N=H;N<=S;++N){var M;if(N<10&&S>=10){M="0"+N}else{M=""+N}J._range[J._range.length]=M}var L=Zapatec.Utils.createElement("td",Q);L.className="up";L.navtype=201;Zapatec.Utils.createProperty(L,"calendar",m);L.timePart=J;if(Zapatec.is_khtml){L.innerHTML="&nbsp;"}Zapatec.Calendar._add_evs(L);var R=Zapatec.Utils.createElement("td",K);R.className="down";R.navtype=202;Zapatec.Utils.createProperty(R,"calendar",m);R.timePart=J;if(Zapatec.is_khtml){R.innerHTML="&nbsp;"}Zapatec.Calendar._add_evs(R)}Zapatec.Calendar._add_evs(J);return J}var G=m.currentDate.getHours();var i=m.currentDate.getMinutes();if(m.showsTime=="seconds"){var B=m.currentDate.getSeconds()}var I=!m.time24;var l=(G>12);if(I&&l){G-=12}var E=D("hour",G,I?1:0,I?12:23);E._step=(m.timeInterval>30)?(m.timeInterval/60):1;c=Zapatec.Utils.createElement("td",f);c.innerHTML=":";c.className="colon";var C=D("minute",i,0,59);C._step=((m.timeInterval)&&(m.timeInterval<60))?(m.timeInterval):5;if(m.showsTime=="seconds"){c=Zapatec.Utils.createElement("td",f);c.innerHTML=":";c.className="colon";var A=D("minute",B,0,59);A._step=5}var F=null;if(I){F=D("ampm",l?Zapatec.Calendar.i18n("pm","ampm"):Zapatec.Calendar.i18n("am","ampm"),[Zapatec.Calendar.i18n("am","ampm"),Zapatec.Calendar.i18n("pm","ampm")]);F.className+=" button"}else{Zapatec.Utils.createElement("td",f).innerHTML="&nbsp;"}m.onSetTime=function(){var L=this.currentDate.getHours();var M=this.currentDate.getMinutes();if(this.showsTime=="seconds"){var K=m.currentDate.getSeconds()}if(this.timeInterval){M+=this.timeInterval-((M-1+this.timeInterval)%this.timeInterval)-1}while(M>=60){M-=60;++L}if(this.timeInterval>60){var H=this.timeInterval/60;if(L%H!=0){L+=H-((L-1+H)%H)-1}if(L>=24){L-=24}}var N=new Date(this.currentDate);if(this.getDateStatus&&this.getDateStatus(this.currentDate,this.currentDate.getFullYear(),this.currentDate.getMonth(),this.currentDate.getDate(),L,M)){hours=L;minutes=M;do{if(this.timeInterval){if(this.timeInterval<60){minutes+=this.timeInterval}else{L+=this.timeInterval/60}}else{minutes+=5}if(minutes>=60){minutes-=60;hours+=1}if(hours>=24){hours-=24}N.setMinutes(minutes);N.setHours(hours);if(!this.getDateStatus(N,this.currentDate.getFullYear(),this.currentDate.getMonth(),this.currentDate.getDate(),hours,minutes)){L=hours;M=minutes}}while((L!=hours)||(M!=minutes))}this.currentDate.setMinutes(M);this.currentDate.setHours(L);var J=(L>=12);if(J&&I&&L!=12){L-=12}if(!J&&I&&L==0){L=12}E.firstChild.data=(L<10)?("0"+L):L;C.firstChild.data=(M<10)?("0"+M):M;if(this.showsTime=="seconds"){A.firstChild.data=(K<10)?("0"+K):K}if(I){F.firstChild.data=J?Zapatec.Calendar.i18n("pm","ampm"):Zapatec.Calendar.i18n("am","ampm")}};m.onUpdateTime=function(){var J=this.currentDate;var K=parseInt(E.firstChild.data,10);if(I){if(/pm/i.test(F.firstChild.data)&&K<12){K+=12}else{if(/am/i.test(F.firstChild.data)&&K==12){K=0}}}var L=J.getDate();var H=J.getMonth();var M=J.getFullYear();J.setHours(K);J.setMinutes(parseInt(C.firstChild.data,10));if(this.showsTime=="seconds"){J.setSeconds(parseInt(A.firstChild.data,10))}J.setFullYear(M);J.setMonth(H);J.setDate(L);this.dateClicked=false;this.callHandler()}})();if(this.monthsInRow!=1){c=Zapatec.Utils.createElement("td",f);c.colSpan=((this.weekNumbers)?8:7)*(this.monthsInRow-1)-Math.ceil(a);c.className="timetext";c.innerHTML="&nbsp"}}else{this.onSetTime=this.onUpdateTime=function(){}}f=Zapatec.Utils.createElement("tr",h);f.className="footrow";c=d(Zapatec.Calendar.i18n("SEL_DATE"),this.weekNumbers?(8*this.numberMonths):(7*this.numberMonths),300);c.className="ttip";if(this.isPopup&&!this.disableDrag){c.ttip=Zapatec.Calendar.i18n("DRAG_TO_MOVE");c.style.cursor="move"}this.tooltips=c;n=this.monthsCombo=Zapatec.Utils.createElement("div",this.element);n.className="combo";for(u=0;u<12;++u){var t=Zapatec.Utils.createElement("div");t.className=Zapatec.is_ie?"label-IEfix":"label";t.month=u;t.appendChild(window.document.createTextNode(Zapatec.Calendar.i18n(u,"smn")));n.appendChild(t)}n=this.yearsCombo=Zapatec.Utils.createElement("div",this.element);n.className="combo";for(u=12;u>0;--u){var s=Zapatec.Utils.createElement("div");s.className=Zapatec.is_ie?"label-IEfix":"label";s.appendChild(window.document.createTextNode("&nbsp;"));n.appendChild(s)}n=this.histCombo=Zapatec.Utils.createElement("div",this.element);n.className="combo history";this._init(this.firstDayOfWeek,this.date);g.appendChild(this.element)};Zapatec.Calendar._keyEvent=function(d){if(!window.calendar){return false}(Zapatec.is_ie)&&(d=window.event);var e=window.calendar;var b=(Zapatec.is_ie||d.type=="keypress");var a=d.keyCode;var c=new Date(e.date);if(d.ctrlKey){switch(a){case 37:b&&Zapatec.Calendar.cellClick(e._nav_pm);break;case 38:b&&Zapatec.Calendar.cellClick(e._nav_py);break;case 39:b&&Zapatec.Calendar.cellClick(e._nav_nm);break;case 40:b&&Zapatec.Calendar.cellClick(e._nav_ny);break;default:return false}}else{switch(a){case 32:Zapatec.Calendar.cellClick(e._nav_now);break;case 27:b&&e.callCloseHandler();break;case 37:if(b&&!e.multiple){c.setTime(c.getTime()-86400000);e.setDate(c)}break;case 38:if(b&&!e.multiple){c.setTime(c.getTime()-7*86400000);e.setDate(c)}break;case 39:if(b&&!e.multiple){c.setTime(c.getTime()+86400000);e.setDate(c)}break;case 40:if(b&&!e.multiple){c.setTime(c.getTime()+7*86400000);e.setDate(c)}break;case 13:if(b){Zapatec.Calendar.cellClick(e.currentDateEl)}break;default:return false}}return Zapatec.Utils.stopEvent(d)};Zapatec.Calendar.prototype._init=function(u,T,r){var m=new Date(),Q=m.getDate(),F=m.getFullYear(),L=m.getMonth();if(this.getDateStatus&&!r){var D=this.getDateStatus(T,T.getFullYear(),T.getMonth(),T.getDate());var f=new Date(T);while(((D==true)||(D=="disabled"))&&(f.getMonth()==T.getMonth())){T.setTime(T.getTime()+86400000);var D=this.getDateStatus(T,T.getFullYear(),T.getMonth(),T.getDate())}if(f.getMonth()!=T.getMonth()){T=new Date(f);while(((D==true)||(D=="disabled"))&&(f.getMonth()==T.getMonth())){T.setTime(T.getTime()-86400000);var D=this.getDateStatus(T,T.getFullYear(),T.getMonth(),T.getDate())}}if(f.getMonth()!=T.getMonth()){r=true;T=new Date(f)}}var e=T.getFullYear();var a=T.getMonth();var V=Math.floor(this.numberMonths/this.monthsInRow);var t;var x,E,o;if(!this.vertical){x=(this.controlMonth-1);t=a-x}else{E=((this.numberMonths-1)%this.monthsInRow)+1;o=(this.controlMonth-1)%this.monthsInRow;bottom=(o>=(E)?(E):(o));x=(o)*(V-1)+Math.floor((this.controlMonth-1)/this.monthsInRow)+bottom;t=a-x}var q=e;if(t<0){t+=12;--q}var y=t+this.numberMonths-1;var w=q;if(y>11){y-=12;++w}function A(i){Zapatec.Calendar._del_evs(i);i.disabled=true;i.className="button";i.innerHTML="<div>&nbsp</div>"}function d(l,i){Zapatec.Calendar._add_evs(l);l.disabled=false;l.className="button nav";l.innerHTML=i}if((q<=this.minYear)||!this.yearNav){if(!this._nav_py.disabled){A(this._nav_py)}}else{if(this._nav_py.disabled){d(this._nav_py,"&#x00ab;")}}if(w>=this.maxYear||!this.yearNav){if(!this._nav_ny.disabled){A(this._nav_ny)}}else{if(this._nav_ny.disabled){d(this._nav_ny,"&#x00bb;")}}if(((q==this.minYear)&&(t<=this.minMonth))||(q<this.minYear)){if(!this._nav_pm.disabled){A(this._nav_pm)}}else{if(this._nav_pm.disabled){d(this._nav_pm,"&#x2039;")}}if(((w==this.maxYear)&&(y>=this.maxMonth))||(w>this.maxYear)){if(!this._nav_nm.disabled){A(this._nav_nm)}}else{if(this._nav_nm.disabled){d(this._nav_nm,"&#x203a;")}}upperMonth=this.maxMonth+1;upperYear=this.maxYear;if(upperMonth>11){upperMonth-=12;++upperYear}bottomMonth=this.minMonth-1;bottomYear=this.minYear;if(bottomMonth<0){bottomMonth+=12;--bottomYear}maxDate1=new Date(w,y,T.getMonthDays(y),23,59,59,999);maxDate2=new Date(upperYear,upperMonth,1,0,0,0,0);minDate1=new Date(q,t,1,0,0,0,0);minDate2=new Date(bottomYear,bottomMonth,T.getMonthDays(bottomMonth),23,59,59,999);if(maxDate1.getTime()>maxDate2.getTime()){T.setTime(T.getTime()-(maxDate1.getTime()-maxDate2.getTime()))}if(minDate1.getTime()<minDate2.getTime()){T.setTime(T.getTime()+(minDate2.getTime()-minDate1.getTime())+1)}delete maxDate1;delete maxDate2;delete minDate1;delete minDate2;this.firstDayOfWeek=u;if(!r){this.currentDate=T}this.date=T;(this.date=new Date(this.date)).setDateOnly(T);e=this.date.getFullYear();a=this.date.getMonth();var h=T.getMonth();var g=this.date.getDate();var I=T.getMonthDays();var v=new Array();if(this.numberMonths%this.monthsInRow>0){++V}for(var O=1;O<=V;++O){v[O]=new Array();for(var P=1;(P<=this.monthsInRow)&&((O-1)*this.monthsInRow+P<=this.numberMonths);++P){var H=new Date(T);if(this.vertical){var U=T.getMonth()-x+((P-1)*(V-1)+(O-1)+((E<P)?(E):(P-1)))}else{var U=T.getMonth()-x+(O-1)*this.monthsInRow+P-1}if(U<0){H.setFullYear(H.getFullYear()-1);U=12+U}if(U>11){H.setFullYear(H.getFullYear()+1);U=U-12}H.setDate(1);H.setMonth(U);var M=(H.getDay()-this.firstDayOfWeek)%7;if(M<0){M+=7}var z=H.getHours();H.setDate(-M);H.setDate(H.getDate()+1);if(z!=H.getHours()){H.setDate(1);H.setMonth(U);H.setDate(-M);H.setDate(H.getDate()+1)}v[O][P]=H}}var b=Zapatec.Calendar.i18n(a,"smn");var c=Zapatec.Calendar.i18n("WEEKEND");var N=this.multiple?(this.datesCells={}):null;var J=this.getDateText;for(var O=1;O<=V;++O){var n=this.tbody[O].firstChild;for(var R=7;--R>0;n=n.nextSibling){var B=n.firstChild;var W=false;for(var P=1;(P<=this.monthsInRow)&&((O-1)*this.monthsInRow+P<=this.numberMonths);++P){T=v[O][P];if(this.weekNumbers){B.className=" day wn";B.innerHTML=T.getWeekNumber();if(P>1){Zapatec.Utils.addClass(B,"month-left-border")}B=B.nextSibling}n.className="daysrow";var C;for(j=7;B&&(C=T.getDate())&&(j>0);T.setDate(C+1),((T.getDate()==C)?(T.setHours(1)&&T.setDate(C+1)):(false)),B=B.nextSibling,--j){var p=T.getDay(),G=T.getMonth(),K=T.getFullYear();B.className=" day";if((!this.weekNumbers)&&(j==7)&&(P!=1)){Zapatec.Utils.addClass(B,"month-left-border")}if((j==1)&&(P!=this.monthsInRow)){Zapatec.Utils.addClass(B,"month-right-border")}if(this.vertical){U=h-x+((P-1)*(V-1)+(O-1)+((E<P)?(E):(P-1)))}else{U=h-x+((O-1)*this.monthsInRow+P-1)}if(U<0){U=12+U}if(U>11){U=U-12}var S=!(B.otherMonth=!(G==U));if(!S){if(this.showsOtherMonths){B.className+=" othermonth"}else{B.className+=" true";B.innerHTML="<div>&nbsp;</div>";continue}}else{W=true}B.innerHTML=J?J(T,K,G,C):C;N&&(N[T.print("%Y%m%d")]=B);if(this.getDateStatus){var D=this.getDateStatus(T,K,G,C);if(this.getDateToolTip){var s=this.getDateToolTip(T,K,G,C);if(s){B.title=s}}if(D==true){B.className+=" disabled"}else{B.className+=" "+D}}if(!B.disabled){B.caldate=[K,G,C];B.ttip="_";if(!this.multiple&&S&&C==this.currentDate.getDate()&&this.hiliteToday&&(G==this.currentDate.getMonth())&&(K==this.currentDate.getFullYear())){B.className+=" selected";this.currentDateEl=B}if(K==F&&G==L&&C==Q){B.className+=" today";B.ttip+=Zapatec.Calendar.i18n("PART_TODAY")}if((c!=null)&&(c.indexOf(p.toString())!=-1)){B.className+=B.otherMonth?" oweekend":" weekend"}}}if(!(W||this.showsOtherMonths)){n.className="emptyrow"}}if((R==1)&&(O<V)){if(n.className=="emptyrow"){n=n.previousSibling}B=n.firstChild;while(B!=null){Zapatec.Utils.addClass(B,"month-bottom-border");B=B.nextSibling}}}}if(this.numberMonths==1){this.title.innerHTML=Zapatec.Calendar.i18n(a,"mn")+", "+e;if(this.params&&this.params.titleHtml){if(typeof this.params.titleHtml=="function"){this.title.innerHTML=this.params.titleHtml(this.title.innerHTML,a,e)}else{this.title.innerHTML+=this.params.titleHtml}}}else{if(this.params&&this.params.titleHtml){if(typeof this.params.titleHtml=="function"){this.title.innerHTML=this.params.titleHtml(Zapatec.Calendar.i18n(a,"mn")+", "+e,a,e)}else{this.title.innerHTML=this.params.titleHtml}}for(var O=1;O<=V;++O){for(var P=1;(P<=this.monthsInRow)&&((O-1)*this.monthsInRow+P<=this.numberMonths);++P){if(this.vertical){U=a-x+((P-1)*(V-1)+(O-1)+((E<P)?(E):(P-1)))}else{U=a-x+(O-1)*this.monthsInRow+P-1}validYear=e;if(U<0){--validYear;U=12+U}if(U>11){++validYear;U=U-12}this.titles[O][P].innerHTML=Zapatec.Calendar.i18n(U,"mn")+", "+validYear}}}this.onSetTime();this._initMultipleDates();this.updateWCH()};Zapatec.Calendar.prototype._initMultipleDates=function(){if(this.multiple){for(var b in this.multiple){var a=this.datesCells[b];var c=this.multiple[b];if(!c){continue}if(a){a.className+=" selected"}}}};Zapatec.Calendar.prototype._toggleMultipleDate=function(b){if(this.multiple){var c=b.print("%Y%m%d");var a=this.datesCells[c];if(a){var e=this.multiple[c];if(!e){Zapatec.Utils.addClass(a,"selected");this.multiple[c]=b}else{Zapatec.Utils.removeClass(a,"selected");delete this.multiple[c]}}}};Zapatec.Calendar.prototype.setDateToolTipHandler=function(a){this.getDateToolTip=a};Zapatec.Calendar.prototype.setDate=function(b,d){if(!b){b=new Date()}if(!b.equalsTo(this.date)){var c=b.getFullYear(),a=b.getMonth();if(c<this.minYear||(c==this.minYear&&a<this.minMonth)){this.showHint("<div class='error'>"+Zapatec.Calendar.i18n("E_RANGE")+" »»»</div>")}else{if(c>this.maxYear||(c==this.maxYear&&a>this.maxMonth)){this.showHint("<div class='error'>««« "+Zapatec.Calendar.i18n("E_RANGE")+"</div>")}}this._init(this.firstDayOfWeek,b,d)}};Zapatec.Calendar.prototype.showHint=function(a){this.tooltips.innerHTML=a};Zapatec.Calendar.prototype.reinit=function(){this._init(this.firstDayOfWeek,this.date)};Zapatec.Calendar.prototype.refresh=function(){var b=this.isPopup?null:this.element.parentNode;var a=parseInt(this.element.style.left);var c=parseInt(this.element.style.top);this.destroy();this.dateStr=this.date;this.create(b);if(this.isPopup){this.showAt(a,c)}else{this.show()}};Zapatec.Calendar.prototype.setFirstDayOfWeek=function(b){if(this.firstDayOfWeek!=b){this._init(b,this.date);var c=Math.floor(this.numberMonths/this.monthsInRow);if(this.numberMonths%this.monthsInRow>0){++c}for(var a=1;a<=c;++a){this.firstdayname=this.rowsOfDayNames[a];this._displayWeekdays()}}};Zapatec.Calendar.prototype.setDateStatusHandler=Zapatec.Calendar.prototype.setDisabledHandler=function(a){this.getDateStatus=a};Zapatec.Calendar.prototype.setRange=function(c,e){var b,d=Math.min(c,e),f=Math.max(c,e);this.minYear=b=Math.floor(d);this.minMonth=(b==d)?0:Math.ceil((d-b)*100-1);this.maxYear=b=Math.floor(f);this.maxMonth=(b==f)?11:Math.ceil((f-b)*100-1)};Zapatec.Calendar.prototype.setMultipleDates=function(a){if(!a||typeof a=="undefined"){return}this.multiple={};for(var b=a.length;--b>=0;){var e=a[b];var c=e.print("%Y%m%d");this.multiple[c]=e}};Zapatec.Calendar.prototype.submitFlatDates=function(){if(typeof this.params.flatCallback=="function"){Zapatec.Utils.sortOrder=(this.sortOrder!="asc"&&this.sortOrder!="desc"&&this.sortOrder!="none")?"none":this.sortOrder;if(this.multiple&&(Zapatec.Utils.sortOrder!="none")){var e=new Array();for(var b in this.multiple){var a=this.multiple[b];if(a){e[e.length]=a}e.sort(Zapatec.Utils.compareDates)}this.multiple={};for(var b=0;b<e.length;b++){var f=e[b];var c=f.print("%Y%m%d");this.multiple[c]=f}}this.params.flatCallback(this)}};Zapatec.Calendar.prototype.callHandler=function(){if(this.onSelected){this.onSelected(this,this.date.print(this.dateFormat))}};Zapatec.Calendar.prototype.updateHistory=function(){var c,f,l,e,g,h="",b=Zapatec.Calendar.prefs.hsize-1;if(Zapatec.Calendar.prefs.history){c=Zapatec.Calendar.prefs.history.split(/,/);f=0;while(f<b&&(e=c[f++])){g=e.split(/\//);l=new Date(parseInt(g[0],10),parseInt(g[1],10)-1,parseInt(g[2],10),parseInt(g[3],10),parseInt(g[4],10));if(!l.dateEqualsTo(this.date)){h+=","+e}}}Zapatec.Calendar.prefs.history=this.date.print("%Y/%m/%d/%H/%M")+h;Zapatec.Calendar.savePrefs()};Zapatec.Calendar.prototype.callCloseHandler=function(){if(this.dateClicked){this.updateHistory()}if(this.onClose){this.onClose(this)}this.hideShowCovered()};Zapatec.Calendar.prototype.destroy=function(){this.hide();Zapatec.Utils.destroy(this.element);Zapatec.Utils.destroy(this.WCH);Zapatec.Calendar._C=null;window.calendar=null};Zapatec.Calendar.prototype.reparent=function(b){var a=this.element;a.parentNode.removeChild(a);b.appendChild(a)};Zapatec.Calendar._checkCalendar=function(b){if(!window.calendar){return false}var a=Zapatec.is_ie?Zapatec.Utils.getElement(b):Zapatec.Utils.getTargetElement(b);for(;a!=null&&a!=calendar.element;a=a.parentNode){}if(a==null){window.calendar.callCloseHandler()}};Zapatec.Calendar.prototype.updateWCH=function(a){Zapatec.Utils.setupWCH_el(this.WCH,this.element,a)};Zapatec.Calendar.prototype.show=function(){var e=this.table.getElementsByTagName("tr");for(var d=e.length;d>0;){var f=e[--d];Zapatec.Utils.removeClass(f,"rowhilite");var c=f.getElementsByTagName("td");for(var b=c.length;b>0;){var a=c[--b];Zapatec.Utils.removeClass(a,"hilite");Zapatec.Utils.removeClass(a,"active")}}if(this.element.style.display!="block"){this.element.style.display="block"}this.hidden=false;if(this.isPopup){this.updateWCH();window.calendar=this;if(!this.noGrab){Zapatec.Utils.addEvent(window.document,"keydown",Zapatec.Calendar._keyEvent);Zapatec.Utils.addEvent(window.document,"keypress",Zapatec.Calendar._keyEvent);Zapatec.Utils.addEvent(window.document,"mousedown",Zapatec.Calendar._checkCalendar)}}this.hideShowCovered()};Zapatec.Calendar.prototype.hide=function(){if(this.isPopup){Zapatec.Utils.removeEvent(window.document,"keydown",Zapatec.Calendar._keyEvent);Zapatec.Utils.removeEvent(window.document,"keypress",Zapatec.Calendar._keyEvent);Zapatec.Utils.removeEvent(window.document,"mousedown",Zapatec.Calendar._checkCalendar)}this.element.style.display="none";Zapatec.Utils.hideWCH(this.WCH);this.hidden=true;this.hideShowCovered()};Zapatec.Calendar.prototype.showAt=function(a,c){var b=this.element.style;b.left=a+"px";b.top=c+"px";this.show()};Zapatec.Calendar.prototype.showAtElement=function(e,f){var b=this;var i=Zapatec.Utils.getElementOffset(e);if(!f||typeof f!="string"){this.showAt(i.x,i.y+e.offsetHeight);return true}this.element.style.display="block";var a=b.element.offsetWidth;var d=b.element.offsetHeight;b.element.style.display="none";var c=f.substr(0,1);var g="l";if(f.length>1){g=f.substr(1,1)}switch(c){case"T":i.y-=d;break;case"B":i.y+=e.offsetHeight;break;case"C":i.y+=(e.offsetHeight-d)/2;break;case"t":i.y+=e.offsetHeight-d;break;case"b":break}switch(g){case"L":i.x-=a;break;case"R":i.x+=e.offsetWidth;break;case"C":i.x+=(e.offsetWidth-a)/2;break;case"l":i.x+=e.offsetWidth-a;break;case"r":break}i.width=a;i.height=d;b.monthsCombo.style.display="none";Zapatec.Utils.fixBoxPosition(i,10);b.showAt(i.x,i.y)};Zapatec.Calendar.prototype.setDateFormat=function(a){this.dateFormat=a};Zapatec.Calendar.prototype.setTtDateFormat=function(a){this.ttDateFormat=a};Zapatec.Calendar.prototype.parseDate=function(c,a){if(!c){return this.setDate(this.date)}if(!a){a=this.dateFormat}var b=Date.parseDate(c,a);return this.setDate(b)};Zapatec.Calendar.prototype.hideShowCovered=function(){if(!Zapatec.is_ie5){return}var t=this;function b(p){var i=p.style.visibility;if(!i){if(window.document.defaultView&&typeof(window.document.defaultView.getComputedStyle)=="function"){if(!Zapatec.is_khtml){i=window.document.defaultView.getComputedStyle(p,"").getPropertyValue("visibility")}else{i=""}}else{if(p.currentStyle){i=p.currentStyle.visibility}else{i=""}}}return i}var u=["applet","iframe","select"];var c=t.element;var a=Zapatec.Utils.getAbsolutePos(c);var f=a.x;var d=c.offsetWidth+f;var s=a.y;var r=c.offsetHeight+s;for(var h=u.length;h>0;){var g=window.document.getElementsByTagName(u[--h]);var e=null;for(var m=g.length;m>0;){e=g[--m];a=Zapatec.Utils.getAbsolutePos(e);var q=a.x;var o=e.offsetWidth+q;var n=a.y;var l=e.offsetHeight+n;if(t.hidden||(q>d)||(o<f)||(n>r)||(l<s)){if(!e.__msh_save_visibility){e.__msh_save_visibility=b(e)}e.style.visibility=e.__msh_save_visibility}else{if(!e.__msh_save_visibility){e.__msh_save_visibility=b(e)}e.style.visibility="hidden"}}}};Zapatec.Calendar.prototype._displayWeekdays=function(){var b=this.firstDayOfWeek;var a=this.firstdayname;var d=Zapatec.Calendar.i18n("WEEKEND");for(k=1;(k<=this.monthsInRow)&&(a);++k){for(var c=0;c<7;++c){a.className=" day name";if((!this.weekNumbers)&&(c==0)&&(k!=1)){Zapatec.Utils.addClass(a,"month-left-border")}if((c==6)&&(k!=this.monthsInRow)){Zapatec.Utils.addClass(a,"month-right-border")}var e=(c+b)%7;if((!this.disableFdowClick)&&((this.params&&this.params.fdowClick)||c)){if(Zapatec.Calendar.i18n("DAY_FIRST")!=null){a.ttip=Zapatec.Calendar.i18n("DAY_FIRST").replace("%s",Zapatec.Calendar.i18n(e,"dn"))}a.navtype=100;a.calendar=this;a.fdow=e;Zapatec.Calendar._add_evs(a)}if((d!=null)&&(d.indexOf(e.toString())!=-1)){Zapatec.Utils.addClass(a,"weekend")}a.innerHTML=Zapatec.Calendar.i18n((c+b)%7,"sdn");a=a.nextSibling}if(this.weekNumbers&&a){a=a.nextSibling}}};Zapatec.Utils.compareDates=function(b,a){if(Zapatec.Calendar.prefs.sortOrder=="asc"){return b-a}else{return a-b}};Zapatec.Calendar.prototype._hideCombos=function(){this.monthsCombo.style.display="none";this.yearsCombo.style.display="none";this.histCombo.style.display="none";this.updateWCH()};Zapatec.Calendar.prototype._dragStart=function(b){b||(b=window.event);if(this.dragging){return}this.dragging=true;var d=b.clientX+window.document.body.scrollLeft;var c=b.clientY+window.document.body.scrollTop;var a=this.element.style;this.xOffs=d-parseInt(a.left);this.yOffs=c-parseInt(a.top);Zapatec.Utils.addEvent(window.document,"mousemove",Zapatec.Calendar.calDragIt);Zapatec.Utils.addEvent(window.document,"mouseover",Zapatec.Calendar.calDragIt);Zapatec.Utils.addEvent(window.document,"mouseup",Zapatec.Calendar.calDragEnd)};Date._MD=[31,28,31,30,31,30,31,31,30,31,30,31];Date.SECOND=1000;Date.MINUTE=60*Date.SECOND;Date.HOUR=60*Date.MINUTE;Date.DAY=24*Date.HOUR;Date.WEEK=7*Date.DAY;Date.prototype.getMonthDays=function(b){var a=this.getFullYear();if(typeof b=="undefined"){b=this.getMonth()}if(((0==(a%4))&&((0!=(a%100))||(0==(a%400))))&&b==1){return 29}else{return Date._MD[b]}};Date.prototype.getDayOfYear=function(){var a=new Date(this.getFullYear(),this.getMonth(),this.getDate(),0,0,0);var c=new Date(this.getFullYear(),0,0,0,0,0);var b=a-c;return Math.round(b/Date.DAY)};Date.prototype.getWeekNumber=function(){var c=new Date(this.getFullYear(),this.getMonth(),this.getDate(),0,0,0);var b=c.getDay();c.setDate(c.getDate()-(b+6)%7+3);var a=c.valueOf();c.setMonth(0);c.setDate(4);return Math.round((a-c.valueOf())/(7*86400000))+1};Date.prototype.equalsTo=function(a){return((this.getFullYear()==a.getFullYear())&&(this.getMonth()==a.getMonth())&&(this.getDate()==a.getDate())&&(this.getHours()==a.getHours())&&(this.getMinutes()==a.getMinutes()))};Date.prototype.dateEqualsTo=function(a){return((this.getFullYear()==a.getFullYear())&&(this.getMonth()==a.getMonth())&&(this.getDate()==a.getDate()))};Date.prototype.setDateOnly=function(a){var b=new Date(a);this.setDate(1);this.setFullYear(b.getFullYear());this.setMonth(b.getMonth());this.setDate(b.getDate())};Date.prototype.print=function(o){var b=this.getMonth();var n=this.getDate();var p=this.getFullYear();var r=this.getWeekNumber();var t=this.getDay();var z={};var u=this.getHours();var c=(u>=12);var h=(c)?(u-12):u;var x=this.getDayOfYear();if(h==0){h=12}var e=this.getMinutes();var l=this.getSeconds();z["%a"]=Zapatec.Calendar.i18n(t,"sdn");z["%A"]=Zapatec.Calendar.i18n(t,"dn");z["%b"]=Zapatec.Calendar.i18n(b,"smn");z["%B"]=Zapatec.Calendar.i18n(b,"mn");z["%C"]=1+Math.floor(p/100);z["%d"]=(n<10)?("0"+n):n;z["%e"]=n;z["%H"]=(u<10)?("0"+u):u;z["%I"]=(h<10)?("0"+h):h;z["%j"]=(x<100)?((x<10)?("00"+x):("0"+x)):x;z["%k"]=u?u:"0";z["%l"]=h;z["%m"]=(b<9)?("0"+(1+b)):(1+b);z["%M"]=(e<10)?("0"+e):e;z["%n"]="\n";z["%p"]=c?"PM":"AM";z["%P"]=c?"pm":"am";z["%s"]=Math.floor(this.getTime()/1000);z["%S"]=(l<10)?("0"+l):l;z["%t"]="\t";z["%U"]=z["%W"]=z["%V"]=(r<10)?("0"+r):r;z["%u"]=(t==0)?7:t;z["%w"]=t?t:"0";z["%y"]=""+p%100;if(z["%y"]<10){z["%y"]="0"+z["%y"]}z["%Y"]=p;z["%%"]="%";var v=/%./g;var q=o.match(v)||[];for(var g=0;g<q.length;g++){var f=z[q[g]];if(f){v=new RegExp(q[g],"g");o=o.replace(v,f)}}return o};Date.parseDate=function(t,x){var b=x,a=0,g=null,i=null,u=null,p=null,A=null,B=new Date(),c={};var q=["%d","%H","%I","%m","%M","%S","%s","%W","%u","%w","%y","%e","%k","%l","%s","%Y","%C"];function d(D){if(Zapatec.Utils.arrIndexOf(q,D)!=-1){return true}return false}function h(){for(var D=p[0];D<p[1];++D){var E=Zapatec.Calendar.i18n(D,A);if(!E){return null}if(E==t.substr(a,E.length)){u=E.length;return D}}return null}function n(){var D=t.substr(a,u);if(D.length!=u||/$\d+^/.test(D)){return null}return parseInt(D,10)}function v(){var D=(t.substr(a,u).toLowerCase()==Zapatec.Calendar.i18n("pm","ampm"))?true:false;return D||((t.substr(a,u).toLowerCase()==Zapatec.Calendar.i18n("am","ampm"))?false:null)}function m(){return""}function l(D){return(c[D]=i())}function r(D){if(typeof D=="undefined"||D===null){return false}return true}function e(){for(var D=0;D<arguments.length;++D){if(arguments[D]!==null&&typeof arguments[D]!="undefined"&&!isNaN(arguments[D])){return arguments[D]}}return null}if(typeof b!="string"||typeof t!="string"||t==""||b==""){return null}while(b){i=n;u=b.indexOf("%");u=(u==-1)?b.length:u;g=b.slice(0,u);if(g!=t.substr(a,u)){return null}a+=u;b=b.slice(u);if(b==""){break}g=b.slice(0,2);u=2;switch(g){case"%A":case"%a":A=(g=="%A")?"dn":"sdn";p=[0,7];i=h;break;case"%B":case"%b":A=(g=="%B")?"mn":"smn";p=[0,12];i=h;break;case"%p":case"%P":i=v;break;case"%Y":u=4;if(d(b.substr(2,2))){return null}while(isNaN(parseInt(t.charAt(a+u-1)))&&u>0){--u}if(u==0){break}break;case"%C":case"%s":u=1;if(d(b.substr(2,2))){return null}while(!isNaN(parseInt(t.charAt(a+u)))){++u}break;case"%k":case"%l":case"%e":u=1;if(d(b.substr(2,2))){return null}if(!isNaN(parseInt(t.charAt(a+1)))){++u}break;case"%j":u=3;break;case"%u":case"%w":u=1;case"%y":case"%m":case"%d":case"%W":case"%H":case"%I":case"%M":case"%S":break}if(l(g)===null){return null}a+=u;b=b.slice(2)}if(r(c["%s"])){B.setTime(c["%s"]*1000)}else{var o=e(c["%Y"],c["%y"]+ --c["%C"]*100,c["%y"]+(B.getFullYear()-B.getFullYear()%100),c["%C"]*100+B.getFullYear()%100);var C=e(c["%m"]-1,c["%b"],c["%B"]);var w=e(c["%d"]||c["%e"]);if(w===null||C===null){var s=e(c["%a"],c["%A"],c["%u"]==7?0:c["%u"],c["%w"])}var f=e(c["%H"],c["%k"]);if(f===null&&(r(c["%p"])||r(c["%P"]))){var z=e(c["%p"],c["%P"]);f=e(c["%I"],c["%l"]);f=z?((f==12)?12:(f+12)):((f==12)?(0):f)}if(o||o===0){B.setFullYear(o)}if(C||C===0){B.setMonth(C)}if(w||w===0){B.setDate(w)}if(r(c["%j"])){B.setMonth(0);B.setDate(1);B.setDate(c["%j"])}if(r(s)){B.setDate(B.getDate()+(s-B.getDay()))}if(r(c["%W"])){var y=B.getWeekNumber();if(y!=c["%W"]){B.setDate(B.getDate()+(c["%W"]-y)*7)}}if(f!==null){B.setHours(f)}if(r(c["%M"])){B.setMinutes(c["%M"])}if(r(c["%S"])){B.setSeconds(c["%S"])}}if(B.print(x)!=t){return null}return B};Date.prototype.__msh_oldSetFullYear=Date.prototype.setFullYear;Date.prototype.setFullYear=function(b){var a=new Date(this);a.__msh_oldSetFullYear(b);if(a.getMonth()!=this.getMonth()){this.setDate(28)}this.__msh_oldSetFullYear(b)};Date.prototype.compareDatesOnly=function(e,d){var c=e.getYear();var b=d.getYear();var a=e.getMonth();var h=d.getMonth();var g=e.getDate();var f=d.getDate();if(c>b){return -1}if(b>c){return 1}if(a>h){return -1}if(h>a){return 1}if(g>f){return -1}if(f>g){return 1}return 0};Zapatec.Setup=function(){};Zapatec.Setup.test=true;Zapatec.Calendar.setup=function(b){paramsList=["id"];function f(i,o){if(typeof b[i]=="undefined"){b[i]=o}paramsList.push(i)}b.id=Zapatec.Utils.generateID("calendar");f("inputField",null);f("displayArea",null);f("button",null);f("eventName","click");f("closeEventName",null);f("ifFormat",Zapatec.Calendar.i18n("DEF_DATE_FORMAT"));f("daFormat","%Y/%m/%d");f("singleClick",true);f("disableFunc",null);f("dateStatusFunc",b.disableFunc);f("dateText",null);f("firstDay",null);f("align","Br");f("range",[1900,2999]);f("weekNumbers",true);f("flat",null);f("flatCallback",null);f("onSelect",null);f("onClose",null);f("onUpdate",null);f("date",null);f("showsTime",false);f("sortOrder","asc");f("timeFormat","24");f("timeInterval",null);f("electric",true);f("step",2);f("position",null);f("cache",false);f("showOthers",false);f("multiple",null);f("saveDate",null);f("fdowClick",false);f("titleHtml",null);f("noHelp",false);f("noCloseButton",false);f("disableYearNav",false);f("disableFdowChange",false);if(b.weekNumbers){b.disableFdowChange=true;b.firstDay=1}f("disableDrag",false);f("numberMonths",1);if((b.numberMonths>12)||(b.numberMonths<1)){b.numberMonths=1}if(b.numberMonths>1){b.showOthers=false}b.numberMonths=parseInt(b.numberMonths,10);f("controlMonth",1);if((b.controlMonth>b.numberMonths)||(b.controlMonth<1)){b.controlMonth=1}b.controlMonth=parseInt(b.controlMonth,10);f("vertical",false);if(b.monthsInRow>b.numberMonths){b.monthsInRow=b.numberMonths}f("monthsInRow",b.numberMonths);b.monthsInRow=parseInt(b.monthsInRow,10);f("multiple",false);if(b.multiple){b.singleClick=false}f("canType",false);var d=["inputField","displayArea","button"];for(var e in d){if(typeof b[d[e]]=="string"){b[d[e]]=document.getElementById(b[d[e]])}}if(!b.inputField){b.canType=false}else{b.inputField.setAttribute("autocomplete","off")}if(!(b.flat||b.multiple||b.inputField||b.displayArea||b.button)){alert("Calendar.setup '"+b.id+"':\n  Nothing to setup (no fields found).  Please check your code");return false}if(((b.timeInterval)&&((b.timeInterval!==Math.floor(b.timeInterval))||((60%b.timeInterval!==0)&&(b.timeInterval%60!==0))))||(b.timeInterval>360)){alert("'"+b.id+"': timeInterval option can only have the following number of minutes:\n1, 2, 3, 4, 5, 6, 10, 15, 30,  60, 120, 180, 240, 300, 360 ");b.timeInterval=null}if(b.date&&!Date.parse(b.date)){alert("'"+b.id+"' Start Date Invalid: "+b.date+".\nSee date option.\nDefaulting to today.");b.date=null}if(b.saveDate){f("cookiePrefix",window.location.href+"--"+b.button.id);var l=b.cookiePrefix;var g=Zapatec.Utils.getCookie(l);if(g!=null){document.getElementById(b.inputField.id).value=g}}for(var m in b){if(typeof b.constructor.prototype[m]!="undefined"){continue}if(Zapatec.Utils.arrIndexOf(paramsList,m)==-1){alert("Wrong config option: "+m)}}function h(o){var i=o.params;var r=(o.dateClicked||i.electric);if(r&&i.flat){if(typeof i.flatCallback=="function"){if(!i.multiple){i.flatCallback(o)}}else{alert("'"+o.id+"': No flatCallback given -- doing nothing.")}return false}if(r&&i.inputField){i.inputField.value=o.currentDate.print(i.ifFormat);if(typeof i.inputField.onchange=="function"){i.inputField.onchange()}}if(r&&i.displayArea){i.displayArea.innerHTML=o.currentDate.print(i.daFormat)}if(r&&i.singleClick&&o.dateClicked){o.callCloseHandler()}if(r&&typeof i.onUpdate=="function"){i.onUpdate(o)}if(i.saveDate){var q=i.cookiePrefix;Zapatec.Utils.writeCookie(q,i.inputField.value,null,"/",i.saveDate)}}if(b.flat!=null){if(typeof b.flat=="string"){b.flat=document.getElementById(b.flat)}if(!b.flat){alert("Calendar.setup '"+b.id+"':\n  Flat specified but can't find parent.");return false}var a=new Zapatec.Calendar(b.firstDay,b.date,b.onSelect||h);a.id=b.id;a.disableFdowClick=b.disableFdowChange;a.showsOtherMonths=b.showOthers;a.showsTime=b.showsTime;a.time24=(b.timeFormat=="24");a.timeInterval=b.timeInterval;a.params=b;a.weekNumbers=b.weekNumbers;a.sortOrder=b.sortOrder.toLowerCase();a.setRange(b.range[0],b.range[1]);a.setDateStatusHandler(b.dateStatusFunc);a.getDateText=b.dateText;a.numberMonths=b.numberMonths;a.controlMonth=b.controlMonth;a.vertical=b.vertical;a.yearStep=b.step;a.monthsInRow=b.monthsInRow;a.helpButton=!b.noHelp;a.closeButton=!b.noCloseButton;a.yearNav=!b.disableYearNav;if(b.ifFormat){a.setDateFormat(b.ifFormat)}if(b.inputField&&b.inputField.type=="text"&&typeof b.inputField.value=="string"){a.parseDate(b.inputField.value)}if(b.multiple){a.setMultipleDates(b.multiple)}a.create(b.flat);a.show();return a}var n=b.button||b.displayArea||b.inputField;if(b.canType){function c(i){i=i||window.event;if(Zapatec.is_ie){i.cancelBubble=true}else{i.stopPropagation()}}Zapatec.Utils.addEvent(b.inputField,"mousedown",c);Zapatec.Utils.addEvent(b.inputField,"keydown",c);Zapatec.Utils.addEvent(b.inputField,"keypress",c);Zapatec.Utils.addEvent(b.inputField,"keyup",function(o){var q=b.inputField?b.ifFormat:b.daFormat;var i=Date.parseDate(b.inputField.value,q);var p=window.calendar;if(p&&i&&!p.hidden){p.setDate(i)}})}n["on"+b.eventName]=function(){var i=b.inputField||b.displayArea;if((!b.canType||b.inputField!=n)&&n.blur){n.blur()}var q=b.inputField?b.ifFormat:b.daFormat;var s=false;var r=window.calendar;if(b.canType&&(b.inputField==n)&&r&&!r.hidden){return}if(!(r&&b.cache)){window.calendar=r=new Zapatec.Calendar(b.firstDay,b.date,b.onSelect||h,b.onClose||function(t){if(b.cache){t.hide()}else{t.destroy()}});r.id=b.id;r.disableFdowClick=b.disableFdowChange;r.showsTime=b.showsTime;r.time24=(b.timeFormat=="24");r.timeInterval=b.timeInterval;r.weekNumbers=b.weekNumbers;r.numberMonths=b.numberMonths;r.controlMonth=b.controlMonth;r.vertical=b.vertical;r.monthsInRow=b.monthsInRow;r.historyDateFormat=b.ifFormat||b.daFormat;r.helpButton=!b.noHelp;r.disableDrag=b.disableDrag;r.closeButton=!b.noCloseButton;r.yearNav=!b.disableYearNav;r.sortOrder=b.sortOrder.toLowerCase();s=true}else{if(b.date){r.setDate(b.date)}r.hide()}if(b.multiple){r.setMultipleDates(b.multiple)}r.showsOtherMonths=b.showOthers;r.yearStep=b.step;r.setRange(b.range[0],b.range[1]);r.params=b;r.setDateStatusHandler(b.dateStatusFunc);r.getDateText=b.dateText;r.setDateFormat(q);if(s){r.create()}if(i){var o;if(i.value){o=i.value}else{o=i.innerHTML}if(o!=""){var p=Date.parseDate(i.value||i.innerHTML,q);if(p!=null){r.setDate(p)}}}if(!b.position){r.showAtElement(b.button||b.displayArea||b.inputField,b.align)}else{r.showAt(b.position[0],b.position[1])}return false};if(b.closeEventName){n["on"+b.closeEventName]=function(){if(window.calendar){window.calendar.callCloseHandler()}}}return a};

Zapatec.Calendar._DN=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday");Zapatec.Calendar._SDN=new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun");Zapatec.Calendar._FD=0;Zapatec.Calendar._MN=new Array("January","February","March","April","May","June","July","August","September","October","November","December");Zapatec.Calendar._SMN=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");Zapatec.Calendar._TT_en=Zapatec.Calendar._TT={};Zapatec.Calendar._TT.INFO="About the calendar";Zapatec.Calendar._TT.ABOUT="DHTML Date/Time Selector\n(c) zapatec.com 2002-2007\nFor latest version visit: http://www.zapatec.com/\n\n\nDate selection:\n- Use the \xab, \xbb buttons to select year\n- Use the "+String.fromCharCode(8249)+", "+String.fromCharCode(8250)+" buttons to select month\n- Hold mouse button on any of the above buttons for faster selection.";Zapatec.Calendar._TT.ABOUT_TIME="\n\nTime selection:\n- Click on any of the time parts to increase it\n- or Shift-click to decrease it\n- or click and drag for faster selection.";Zapatec.Calendar._TT.PREV_YEAR="Prev. year (hold for menu)";Zapatec.Calendar._TT.PREV_MONTH="Prev. month (hold for menu)";Zapatec.Calendar._TT.GO_TODAY="Go Today (hold for history)";Zapatec.Calendar._TT.NEXT_MONTH="Next month (hold for menu)";Zapatec.Calendar._TT.NEXT_YEAR="Next year (hold for menu)";Zapatec.Calendar._TT.SEL_DATE="Select date";Zapatec.Calendar._TT.DRAG_TO_MOVE="Drag to move";Zapatec.Calendar._TT.PART_TODAY=" (today)";Zapatec.Calendar._TT.DAY_FIRST="Display %s first";Zapatec.Calendar._TT.WEEKEND="0,6";Zapatec.Calendar._TT.CLOSE="Close";Zapatec.Calendar._TT.TODAY="Today";Zapatec.Calendar._TT.TIME_PART="(Shift-)Click or drag to change value";Zapatec.Calendar._TT.DEF_DATE_FORMAT="%m/%d/%Y";Zapatec.Calendar._TT.TT_DATE_FORMAT="%a, %b %e";Zapatec.Calendar._TT.WK="wk";Zapatec.Calendar._TT.TIME="Time:";Zapatec.Calendar._TT.E_RANGE="Outside the range";Zapatec.Calendar._TT._AMPM={am:"am",pm:"pm"};if(Zapatec.Calendar._DN){Zapatec.Calendar._TT._DN=Zapatec.Calendar._DN}if(Zapatec.Calendar._SDN){Zapatec.Calendar._TT._SDN=Zapatec.Calendar._SDN}if(Zapatec.Calendar._SDN_len){Zapatec.Calendar._TT._SDN_len=Zapatec.Calendar._SDN_len}if(Zapatec.Calendar._MN){Zapatec.Calendar._TT._MN=Zapatec.Calendar._MN}if(Zapatec.Calendar._SMN){Zapatec.Calendar._TT._SMN=Zapatec.Calendar._SMN}if(Zapatec.Calendar._SMN_len){Zapatec.Calendar._TT._SMN_len=Zapatec.Calendar._SMN_len}Zapatec.Calendar._DN=Zapatec.Calendar._SDN=Zapatec.Calendar._SDN_len=Zapatec.Calendar._MN=Zapatec.Calendar._SMN=Zapatec.Calendar._SMN_len=null;

var UserPicker=Class.create();UserPicker.prototype={initialize:function(e,c,b,d,a){this.fieldAutocomplete=e?e:"autocomplete";this.fieldAutocompleteChoices=c?c:"user_choices";this.fieldValues=b?b:"username";this.fieldContainer=d?d:"blog-authors";this.fieldRowIDPrefix=a?a:"jive-user-";this.startAutoCompleter(this)},startAutoCompleter:function(a){var b=new Ajax.Autocompleter(this.fieldAutocomplete,this.fieldAutocompleteChoices,"view-people-autocomplete.jspa?resultTypes=COMMUNITY&sort=relevance&start=0&view=search&usernameEnabled=true&nameEnabled=true&emailEnabled=true",{tokens:[","," "],updateElement:function(c){a.addUser(Element.collectTextNodesIgnoreClass(c,"informal"),a)},paramName:"query",minChars:1});b.getToken=function(){var c=this.getTokenBounds();return this.element.value.substring(c[0],c[1]).strip().toLowerCase()}},loadWin:function(b,a){this.win=window.open("user-picker!input.jspa?selectedUsers="+encodeURIComponent(b.value)+"&multiple="+a+"&element="+b.getAttributeNode("name").value+"&form="+b.form.getAttributeNode("name").value,"","menubar=yes,location=no,personalbar=no,scrollbars=yes,width=600,height=800,resizable")},removeUser:function(a){if(typeof a!="string"){a=Event.element(a).id.gsub("jive-remove-user-link-","")}if(a&&a.length>0){Element.remove(this.fieldRowIDPrefix+a);var b=$(this.fieldValues).value.split(",");b[b.indexOf(a)]=null;b=b.compact();$(this.fieldValues).value=b.join(",")}},addUser:function(b,a){if(!a){a=this}if(!b){b=$F(a.fieldAutocomplete)}else{b=b.strip()}if(b.length>0){if(b.indexOf(",")>-1){var f=new Array();f=b.split(",");for(var c=0;c<f.length;c++){a.addUser(f[c])}}else{if(!$(a.fieldRowIDPrefix+b)){var d=this._addUserElement(b);$(a.fieldValues).value+=","+b;if(d){d.observe("click",this.removeUser.bindAsEventListener(this),false)}}var e=$F(a.fieldAutocomplete).split(",");if(e.length>0){e.pop()}$(a.fieldAutocomplete).value=e.join(",");Field.focus(a.fieldAutocomplete);new Effect.Highlight(a.fieldRowIDPrefix+b)}}},_addUserElement:function(a){var b=new Element("a",{href:"javascript:;",id:"jive-remove-user-link-"+a}).update("[x]");$(this.fieldContainer).insert(new Element("tr",{id:this.fieldRowIDPrefix+a}).insert(new Element("td").insert(new Element("img",{src:"../people/"+encodeURI(a)+"/avatar/16.png"}))).insert(new Element("td",{width:200}).update(a)).insert(new Element("td").insert(b)));return b}};

var JiveProjectChooser=Class.create();JiveProjectChooser.prototype={initialize:function(a){this.chooserURL=a},handleChange:function(a){if($F(a)==-1){this.openChooser(a.id)}},openChooser:function(a){this.win=window.open(this.chooserURL+"?id="+a,"","menubar=yes,location=no,personalbar=no,scrollbars=yes,width=600,height=800,resizable")},addProject:function(h,g,f){var b=$(h);var c=$A(b.getElementsByTagName("option"));var d=c.find(function(i){return(i.value==g)});if(!d){var e=new Element("option",{value:g});e.update(f);var a=$(c.find(function(i){return(i.value=="")}));a.insert({after:e});b.selectedIndex=-1;e.selected=true}else{b.selectedIndex=-1;d.selected=true}b.focus()}};

var JiveGroupChooser=Class.create();JiveGroupChooser.prototype={initialize:function(a){this.chooserURL=a},handleChange:function(a){if($F(a)==-1){this.openChooser(a.id)}},openChooser:function(a){this.win=window.open(this.chooserURL+"?id="+a,"","menubar=yes,location=no,personalbar=no,scrollbars=yes,width=600,height=800,resizable")},addGroup:function(h,g,f){var b=$(h);var c=$A(b.getElementsByTagName("option"));var d=c.find(function(i){return(i.value==g)});if(!d){var e=new Element("option",{value:g});e.update(f);var a=$(c.find(function(i){return(i.value=="")}));a.insert({after:e});b.selectedIndex=-1;e.selected=true}else{b.selectedIndex=-1;d.selected=true}b.focus()}};

function insertZoomHTML(){var k=document.getElementsByTagName("body").item(0);var G=document.createElement("div");G.setAttribute("id","ZoomSpin");G.style.position="absolute";G.style.left="10px";G.style.top="10px";G.style.visibility="hidden";G.style.zIndex="525";k.insertBefore(G,k.firstChild);var s=document.createElement("img");s.setAttribute("id","SpinImage");s.setAttribute("src",zoomImagesURI+"zoom-spin-1.png");G.appendChild(s);var j=document.createElement("div");j.setAttribute("id","ZoomBox");j.style.position="absolute";j.style.left="10px";j.style.top="10px";j.style.visibility="hidden";j.style.zIndex="499";k.insertBefore(j,G.nextSibling);var t=document.createElement("img");t.onclick=function(N){zoomOut(this,N);return false};t.setAttribute("src",zoomImagesURI+"spacer.gif");t.setAttribute("id","ZoomImage");t.setAttribute("border","0");t.setAttribute("style","-webkit-box-shadow: "+shadowSettings+"0.0)");t.style.display="block";t.style.width="10px";t.style.height="10px";t.style.cursor="pointer";j.appendChild(t);var p=document.createElement("div");p.setAttribute("id","ZoomClose");p.style.position="absolute";if(browserIsIE){p.style.left="-1px";p.style.top="0px"}else{p.style.left="-15px";p.style.top="-15px"}p.style.visibility="hidden";j.appendChild(p);var q=document.createElement("img");q.onclick=function(N){zoomOut(this,N);return false};q.setAttribute("src",zoomImagesURI+"closebox.png");q.setAttribute("width","30");q.setAttribute("height","30");q.setAttribute("border","0");q.style.cursor="pointer";p.appendChild(q);if(!document.getElementById("ZoomImage").style.webkitBoxShadow&&!browserIsIE){var o=document.createElement("div");o.setAttribute("id","ShadowBox");o.style.position="absolute";o.style.left="50px";o.style.top="50px";o.style.width="100px";o.style.height="100px";o.style.visibility="hidden";o.style.zIndex="498";k.insertBefore(o,j.nextSibling);var r=document.createElement("table");r.setAttribute("border","0");r.setAttribute("width","100%");r.setAttribute("height","100%");r.setAttribute("cellpadding","0");r.setAttribute("cellspacing","0");o.appendChild(r);var d=document.createElement("tbody");r.appendChild(d);var n=document.createElement("tr");n.style.height="25px";d.appendChild(n);var K=document.createElement("td");K.style.width="27px";n.appendChild(K);var D=document.createElement("img");D.setAttribute("src",zoomImagesURI+"zoom-shadow1.png");D.setAttribute("width","27");D.setAttribute("height","25");D.style.display="block";K.appendChild(D);var J=document.createElement("td");J.setAttribute("background",zoomImagesURI+"zoom-shadow2.png");n.appendChild(J);var c=document.createElement("img");c.setAttribute("src",zoomImagesURI+"spacer.gif");c.setAttribute("height","1");c.setAttribute("width","1");c.style.display="block";J.appendChild(c);var I=document.createElement("td");I.style.width="27px";n.appendChild(I);var A=document.createElement("img");A.setAttribute("src",zoomImagesURI+"zoom-shadow3.png");A.setAttribute("width","27");A.setAttribute("height","25");A.style.display="block";I.appendChild(A);inRow2=document.createElement("tr");d.appendChild(inRow2);var H=document.createElement("td");H.setAttribute("background",zoomImagesURI+"zoom-shadow4.png");inRow2.appendChild(H);var b=document.createElement("img");b.setAttribute("src",zoomImagesURI+"spacer.gif");b.setAttribute("height","1");b.setAttribute("width","1");b.style.display="block";H.appendChild(b);var F=document.createElement("td");F.setAttribute("bgcolor","#ffffff");inRow2.appendChild(F);var a=document.createElement("img");a.setAttribute("src",zoomImagesURI+"spacer.gif");a.setAttribute("height","1");a.setAttribute("width","1");a.style.display="block";F.appendChild(a);var E=document.createElement("td");E.setAttribute("background",zoomImagesURI+"zoom-shadow5.png");inRow2.appendChild(E);var M=document.createElement("img");M.setAttribute("src",zoomImagesURI+"spacer.gif");M.setAttribute("height","1");M.setAttribute("width","1");M.style.display="block";E.appendChild(M);var m=document.createElement("tr");m.style.height="26px";d.appendChild(m);var C=document.createElement("td");C.style.width="27px";m.appendChild(C);var y=document.createElement("img");y.setAttribute("src",zoomImagesURI+"zoom-shadow6.png");y.setAttribute("width","27");y.setAttribute("height","26");y.style.display="block";C.appendChild(y);var B=document.createElement("td");B.setAttribute("background",zoomImagesURI+"zoom-shadow7.png");m.appendChild(B);var L=document.createElement("img");L.setAttribute("src",zoomImagesURI+"spacer.gif");L.setAttribute("height","1");L.setAttribute("width","1");L.style.display="block";B.appendChild(L);var z=document.createElement("td");z.style.width="27px";m.appendChild(z);var x=document.createElement("img");x.setAttribute("src",zoomImagesURI+"zoom-shadow8.png");x.setAttribute("width","27");x.setAttribute("height","26");x.style.display="block";z.appendChild(x)}if(includeCaption){var f=document.createElement("div");f.setAttribute("id","ZoomCapDiv");f.style.position="absolute";f.style.visibility="hidden";f.style.marginLeft="auto";f.style.marginRight="auto";f.style.zIndex="501";k.insertBefore(f,j.nextSibling);var h=document.createElement("table");h.setAttribute("border","0");h.setAttribute("cellPadding","0");h.setAttribute("cellSpacing","0");f.appendChild(h);var l=document.createElement("tbody");h.appendChild(l);var i=document.createElement("tr");l.appendChild(i);var w=document.createElement("td");w.setAttribute("align","right");i.appendChild(w);var g=document.createElement("img");g.setAttribute("src",zoomImagesURI+"zoom-caption-l.png");g.setAttribute("width","13");g.setAttribute("height","26");g.style.display="block";w.appendChild(g);var v=document.createElement("td");v.setAttribute("background",zoomImagesURI+"zoom-caption-fill.png");v.setAttribute("id","ZoomCaption");v.setAttribute("valign","middle");v.style.fontSize="14px";v.style.fontFamily="Helvetica";v.style.fontWeight="bold";v.style.color="#ffffff";v.style.textShadow="0px 2px 4px #000000";v.style.whiteSpace="nowrap";i.appendChild(v);var u=document.createElement("td");i.appendChild(u);var e=document.createElement("img");e.setAttribute("src",zoomImagesURI+"zoom-caption-r.png");e.setAttribute("width","13");e.setAttribute("height","26");e.style.display="block";u.appendChild(e)}};

var includeCaption=true;var zoomTime=5;var zoomSteps=15;var includeFade=1;var minBorder=90;var shadowSettings="0px 5px 25px rgba(0, 0, 0, ";var zoomImagesURI="/images-global/zoom/";var myWidth=0,myHeight=0,myScroll=0;myScrollWidth=0;myScrollHeight=0;var zoomOpen=false,preloadFrame=1,preloadActive=false,preloadTime=0,imgPreload=new Image(),preloadFail=false;var preloadAnimTimer=0;var zoomActive=new Array();var zoomTimer=new Array();var zoomOrigW=new Array();var zoomOrigH=new Array();var zoomOrigX=new Array();var zoomOrigY=new Array();var zoomID="ZoomBox";var theID="ZoomImage";var zoomCaption="ZoomCaption";var zoomCaptionDiv="ZoomCapDiv";if(navigator.userAgent.indexOf("MSIE")!=-1){var browserIsIE=true}function setupZoom(){prepZooms();insertZoomHTML();zoomdiv=document.getElementById(zoomID);zoomimg=document.getElementById(theID)}function prepZooms(){if(!document.getElementsByTagName){return}var a=document.getElementsByTagName("a");for(i=0;i<a.length;i++){if(a[i].getAttribute("href")){if(a[i].getAttribute("href").search(/(.*)\.(jpg|jpeg|gif|png|bmp|tif|tiff)/gi)!=-1){if(a[i].getAttribute("rel")!="nozoom"&&a[i].getAttribute("class")!="jive-link-external-small"){a[i].onclick=function(b){return zoomClick(this,b)};a[i].onmouseover=function(){zoomPreload(this)}}}}}}function zoomPreload(b){var a=b.getAttribute("href");if(imgPreload.src.indexOf(b.getAttribute("href").substr(b.getAttribute("href").lastIndexOf("/")))==-1){preloadActive=true;imgPreload=new Image();imgPreload.onload=function(){preloadActive=false};imgPreload.onerror=function(){preloadFail=true;if(preloadActive){document.getElementById("ZoomSpin").style.visibility="hidden";clearInterval(preloadAnimTimer);preloadAnimTimer=0}};imgPreload.src=a}}function preloadAnimStart(){preloadTime=new Date();document.getElementById("ZoomSpin").style.left=(myWidth/2)+"px";document.getElementById("ZoomSpin").style.top=((myHeight/2)+myScroll)+"px";document.getElementById("ZoomSpin").style.visibility="visible";preloadFrame=1;document.getElementById("SpinImage").src=zoomImagesURI+"zoom-spin-"+preloadFrame+".png";preloadAnimTimer=setInterval("preloadAnim()",100)}function preloadAnim(a){if(preloadActive!=false&&preloadFail==false){document.getElementById("SpinImage").src=zoomImagesURI+"zoom-spin-"+preloadFrame+".png";preloadFrame++;if(preloadFrame>12){preloadFrame=1}}else{if(preloadFail==false){document.getElementById("ZoomSpin").style.visibility="hidden";clearInterval(preloadAnimTimer);preloadAnimTimer=0;zoomIn(preloadFrom)}else{document.getElementById("ZoomSpin").style.visibility="hidden";clearInterval(preloadAnimTimer);preloadAnimTimer=0}}}function zoomClick(c,b){var a=getShift(b);if(!b&&window.event&&(window.event.metaKey||window.event.altKey)){return true}else{if(b&&(b.metaKey||b.altKey)){return true}}getSize();if(preloadActive==true){if(preloadAnimTimer==0){preloadFrom=c;preloadAnimStart()}}else{zoomIn(c,a)}return false}function zoomIn(b,a){zoomimg.src=b.getAttribute("href");if(b.childNodes[0].width){startW=b.childNodes[0].width;startH=b.childNodes[0].height;startPos=findElementPos(b.childNodes[0])}else{startW=50;startH=12;startPos=findElementPos(b)}hostX=startPos[0];hostY=startPos[1];if(document.getElementById("scroller")){hostX=hostX-document.getElementById("scroller").scrollLeft}endW=imgPreload.width;endH=imgPreload.height;if(zoomActive[theID]!=true){if(document.getElementById("ShadowBox")){document.getElementById("ShadowBox").style.visibility="hidden"}else{if(!browserIsIE){if(fadeActive.ZoomImage){clearInterval(fadeTimer.ZoomImage);fadeActive.ZoomImage=false;fadeTimer.ZoomImage=false}document.getElementById("ZoomImage").style.webkitBoxShadow=shadowSettings+"0.0)"}}document.getElementById("ZoomClose").style.visibility="hidden";if(includeCaption){document.getElementById(zoomCaptionDiv).style.visibility="hidden";if(b.getAttribute("title")&&includeCaption){document.getElementById(zoomCaption).innerHTML=b.getAttribute("title")}else{document.getElementById(zoomCaption).innerHTML=""}}zoomOrigW[theID]=startW;zoomOrigH[theID]=startH;zoomOrigX[theID]=hostX;zoomOrigY[theID]=hostY;zoomimg.style.width=startW+"px";zoomimg.style.height=startH+"px";zoomdiv.style.left=hostX+"px";zoomdiv.style.top=hostY+"px";if(includeFade==1){setOpacity(0,zoomID)}zoomdiv.style.visibility="visible";sizeRatio=endW/endH;if(endW>myWidth-minBorder){endW=myWidth-minBorder;endH=endW/sizeRatio}if(endH>myHeight-minBorder){endH=myHeight-minBorder;endW=endH*sizeRatio}zoomChangeX=((myWidth/2)-(endW/2)-hostX);zoomChangeY=(((myHeight/2)-(endH/2)-hostY)+myScroll);zoomChangeW=(endW-startW);zoomChangeH=(endH-startH);if(a){tempSteps=zoomSteps*7}else{tempSteps=zoomSteps}zoomCurrent=0;if(includeFade==1){fadeCurrent=0;fadeAmount=(0-100)/tempSteps}else{fadeAmount=0}zoomTimer[theID]=setInterval("zoomElement('"+zoomID+"', '"+theID+"', "+zoomCurrent+", "+startW+", "+zoomChangeW+", "+startH+", "+zoomChangeH+", "+hostX+", "+zoomChangeX+", "+hostY+", "+zoomChangeY+", "+tempSteps+", "+includeFade+", "+fadeAmount+", 'zoomDoneIn(zoomID)')",zoomTime);zoomActive[theID]=true}}function zoomOut(b,a){if(getShift(a)){tempSteps=zoomSteps*7}else{tempSteps=zoomSteps}if(zoomActive[theID]!=true){if(document.getElementById("ShadowBox")){document.getElementById("ShadowBox").style.visibility="hidden"}else{if(!browserIsIE){if(fadeActive.ZoomImage){clearInterval(fadeTimer.ZoomImage);fadeActive.ZoomImage=false;fadeTimer.ZoomImage=false}document.getElementById("ZoomImage").style.webkitBoxShadow=shadowSettings+"0.0)"}}document.getElementById("ZoomClose").style.visibility="hidden";if(includeCaption&&document.getElementById(zoomCaption).innerHTML!=""){document.getElementById(zoomCaptionDiv).style.visibility="hidden"}startX=parseInt(zoomdiv.style.left);startY=parseInt(zoomdiv.style.top);startW=zoomimg.width;startH=zoomimg.height;zoomChangeX=zoomOrigX[theID]-startX;zoomChangeY=zoomOrigY[theID]-startY;zoomChangeW=zoomOrigW[theID]-startW;zoomChangeH=zoomOrigH[theID]-startH;zoomCurrent=0;if(includeFade==1){fadeCurrent=0;fadeAmount=(100-0)/tempSteps}else{fadeAmount=0}zoomTimer[theID]=setInterval("zoomElement('"+zoomID+"', '"+theID+"', "+zoomCurrent+", "+startW+", "+zoomChangeW+", "+startH+", "+zoomChangeH+", "+startX+", "+zoomChangeX+", "+startY+", "+zoomChangeY+", "+tempSteps+", "+includeFade+", "+fadeAmount+", 'zoomDone(zoomID, theID)')",zoomTime);zoomActive[theID]=true}}function zoomDoneIn(a,b){zoomOpen=true;a=document.getElementById(a);if(document.getElementById("ShadowBox")){setOpacity(0,"ShadowBox");shadowdiv=document.getElementById("ShadowBox");shadowLeft=parseInt(a.style.left)-13;shadowTop=parseInt(a.style.top)-8;shadowWidth=a.offsetWidth+26;shadowHeight=a.offsetHeight+26;shadowdiv.style.width=shadowWidth+"px";shadowdiv.style.height=shadowHeight+"px";shadowdiv.style.left=shadowLeft+"px";shadowdiv.style.top=shadowTop+"px";document.getElementById("ShadowBox").style.visibility="visible";fadeElementSetup("ShadowBox",0,100,5)}else{if(!browserIsIE){fadeElementSetup("ZoomImage",0,0.8,5,0,"shadow")}}if(includeCaption&&document.getElementById(zoomCaption).innerHTML!=""){zoomcapd=document.getElementById(zoomCaptionDiv);zoomcapd.style.top=parseInt(a.style.top)+(a.offsetHeight+15)+"px";zoomcapd.style.left=(myWidth/2)-(zoomcapd.offsetWidth/2)+"px";zoomcapd.style.visibility="visible"}if(!browserIsIE){setOpacity(0,"ZoomClose")}document.getElementById("ZoomClose").style.visibility="visible";if(!browserIsIE){fadeElementSetup("ZoomClose",0,100,5)}document.onkeypress=getKey}function zoomDone(a,b){zoomOpen=false;zoomOrigH[b]="";zoomOrigW[b]="";document.getElementById(a).style.visibility="hidden";zoomActive[b]==false;document.onkeypress=null}function zoomElement(zoomdiv,theID,zoomCurrent,zoomStartW,zoomChangeW,zoomStartH,zoomChangeH,zoomStartX,zoomChangeX,zoomStartY,zoomChangeY,zoomSteps,includeFade,fadeAmount,execWhenDone){if(zoomCurrent==(zoomSteps+1)){zoomActive[theID]=false;clearInterval(zoomTimer[theID]);if(execWhenDone!=""){eval(execWhenDone)}}else{if(includeFade==1){if(fadeAmount<0){setOpacity(Math.abs(zoomCurrent*fadeAmount),zoomdiv)}else{setOpacity(100-(zoomCurrent*fadeAmount),zoomdiv)}}moveW=cubicInOut(zoomCurrent,zoomStartW,zoomChangeW,zoomSteps);moveH=cubicInOut(zoomCurrent,zoomStartH,zoomChangeH,zoomSteps);moveX=cubicInOut(zoomCurrent,zoomStartX,zoomChangeX,zoomSteps);moveY=cubicInOut(zoomCurrent,zoomStartY,zoomChangeY,zoomSteps);document.getElementById(zoomdiv).style.left=moveX+"px";document.getElementById(zoomdiv).style.top=moveY+"px";zoomimg.style.width=moveW+"px";zoomimg.style.height=moveH+"px";zoomCurrent++;clearInterval(zoomTimer[theID]);zoomTimer[theID]=setInterval("zoomElement('"+zoomdiv+"', '"+theID+"', "+zoomCurrent+", "+zoomStartW+", "+zoomChangeW+", "+zoomStartH+", "+zoomChangeH+", "+zoomStartX+", "+zoomChangeX+", "+zoomStartY+", "+zoomChangeY+", "+zoomSteps+", "+includeFade+", "+fadeAmount+", '"+execWhenDone+"')",zoomTime)}}function getKey(a){if(!a){theKey=event.keyCode}else{theKey=a.keyCode}if(theKey==27){zoomOut(this,a)}}function fadeOut(a){if(a.id){fadeElementSetup(a.id,100,0,10)}}function fadeIn(a){if(a.id){fadeElementSetup(a.id,0,100,10)}}var fadeActive=new Array();var fadeQueue=new Array();var fadeTimer=new Array();var fadeClose=new Array();var fadeMode=new Array();function fadeElementSetup(d,f,c,b,e,a){if(fadeActive[d]==true){fadeQueue[d]=new Array(d,f,c,b)}else{fadeSteps=b;fadeCurrent=0;fadeAmount=(f-c)/fadeSteps;fadeTimer[d]=setInterval("fadeElement('"+d+"', '"+fadeCurrent+"', '"+fadeAmount+"', '"+fadeSteps+"')",15);fadeActive[d]=true;fadeMode[d]=a;if(e==1){fadeClose[d]=true}else{fadeClose[d]=false}}}function fadeElement(b,d,a,c){if(d==c){clearInterval(fadeTimer[b]);fadeActive[b]=false;fadeTimer[b]=false;if(fadeClose[b]==true){document.getElementById(b).style.visibility="hidden"}if(fadeQueue[b]&&fadeQueue[b]!=false){fadeElementSetup(fadeQueue[b][0],fadeQueue[b][1],fadeQueue[b][2],fadeQueue[b][3]);fadeQueue[b]=false}}else{d++;if(fadeMode[b]=="shadow"){if(a<0){document.getElementById(b).style.webkitBoxShadow=shadowSettings+(Math.abs(d*a))+")"}else{document.getElementById(b).style.webkitBoxShadow=shadowSettings+(100-(d*a))+")"}}else{if(a<0){setOpacity(Math.abs(d*a),b)}else{setOpacity(100-(d*a),b)}}clearInterval(fadeTimer[b]);fadeTimer[b]=setInterval("fadeElement('"+b+"', '"+d+"', '"+a+"', '"+c+"')",15)}}function setOpacity(c,a){var b=document.getElementById(a).style;if(navigator.userAgent.indexOf("Firefox")!=-1){if(c==100){c=99.9999}}b.filter="alpha(opacity="+c+")";b.opacity=(c/100)}function linear(e,a,g,f){return g*e/f+a}function sineInOut(e,a,g,f){return -g/2*(Math.cos(Math.PI*e/f)-1)+a}function cubicIn(e,a,g,f){return g*(e/=f)*e*e+a}function cubicOut(e,a,g,f){return g*((e=e/f-1)*e*e+1)+a}function cubicInOut(e,a,g,f){if((e/=f/2)<1){return g/2*e*e*e+a}return g/2*((e-=2)*e*e+2)+a}function bounceOut(e,a,g,f){if((e/=f)<(1/2.75)){return g*(7.5625*e*e)+a}else{if(e<(2/2.75)){return g*(7.5625*(e-=(1.5/2.75))*e+0.75)+a}else{if(e<(2.5/2.75)){return g*(7.5625*(e-=(2.25/2.75))*e+0.9375)+a}else{return g*(7.5625*(e-=(2.625/2.75))*e+0.984375)+a}}}}function getSize(){if(self.innerHeight){myWidth=window.innerWidth;myHeight=window.innerHeight;myScroll=window.pageYOffset}else{if(document.documentElement&&document.documentElement.clientHeight){myWidth=document.documentElement.clientWidth;myHeight=document.documentElement.clientHeight;myScroll=document.documentElement.scrollTop}else{if(document.body){myWidth=document.body.clientWidth;myHeight=document.body.clientHeight;myScroll=document.body.scrollTop}}}if(window.innerHeight&&window.scrollMaxY){myScrollWidth=document.body.scrollWidth;myScrollHeight=window.innerHeight+window.scrollMaxY}else{if(document.body.scrollHeight>document.body.offsetHeight){myScrollWidth=document.body.scrollWidth;myScrollHeight=document.body.scrollHeight}else{myScrollWidth=document.body.offsetWidth;myScrollHeight=document.body.offsetHeight}}}function getShift(b){var a=false;if(!b&&window.event){a=window.event.shiftKey}else{if(b){a=b.shiftKey;if(a){b.stopPropagation()}}}return a}function findElementPos(a){var c=0;var b=0;do{c+=a.offsetLeft;b+=a.offsetTop}while(a=a.offsetParent);return Array(c,b)};

if(dwr==null){var dwr={}}if(dwr.engine==null){dwr.engine={}}if(DWREngine==null){var DWREngine=dwr.engine}dwr.engine.setErrorHandler=function(a){dwr.engine._errorHandler=a};dwr.engine.setWarningHandler=function(a){dwr.engine._warningHandler=a};dwr.engine.setTextHtmlHandler=function(a){dwr.engine._textHtmlHandler=a};dwr.engine.setTimeout=function(a){dwr.engine._timeout=a};dwr.engine.setPreHook=function(a){dwr.engine._preHook=a};dwr.engine.setPostHook=function(a){dwr.engine._postHook=a};dwr.engine.setHeaders=function(a){dwr.engine._headers=a};dwr.engine.setParameters=function(a){dwr.engine._parameters=a};dwr.engine.XMLHttpRequest=1;dwr.engine.IFrame=2;dwr.engine.ScriptTag=3;dwr.engine.setRpcType=function(a){if(a!=dwr.engine.XMLHttpRequest&&a!=dwr.engine.IFrame&&a!=dwr.engine.ScriptTag){dwr.engine._handleError(null,{name:"dwr.engine.invalidRpcType",message:"RpcType must be one of dwr.engine.XMLHttpRequest or dwr.engine.IFrame or dwr.engine.ScriptTag"});return}dwr.engine._rpcType=a};dwr.engine.setHttpMethod=function(a){if(a!="GET"&&a!="POST"){dwr.engine._handleError(null,{name:"dwr.engine.invalidHttpMethod",message:"Remoting method must be one of GET or POST"});return}dwr.engine._httpMethod=a};dwr.engine.setOrdered=function(a){dwr.engine._ordered=a};dwr.engine.setAsync=function(a){dwr.engine._async=a};dwr.engine.setActiveReverseAjax=function(a){if(a){if(dwr.engine._activeReverseAjax){return}dwr.engine._activeReverseAjax=true;dwr.engine._poll()}else{if(dwr.engine._activeReverseAjax&&dwr.engine._pollReq){dwr.engine._pollReq.abort()}dwr.engine._activeReverseAjax=false}};dwr.engine.defaultErrorHandler=function(b,a){dwr.engine._debug("Error: "+a.name+", "+a.message,true);if(b==null||b==""){alert("A server error has occurred.")}else{if(b.indexOf("0x80040111")!=-1){dwr.engine._debug(b)}else{alert(b)}}};dwr.engine.defaultWarningHandler=function(b,a){dwr.engine._debug(b)};dwr.engine.beginBatch=function(){if(dwr.engine._batch){dwr.engine._handleError(null,{name:"dwr.engine.batchBegun",message:"Batch already begun"});return}dwr.engine._batch=dwr.engine._createBatch()};dwr.engine.endBatch=function(b){var a=dwr.engine._batch;if(a==null){dwr.engine._handleError(null,{name:"dwr.engine.batchNotBegun",message:"No batch in progress"});return}dwr.engine._batch=null;if(a.map.callCount==0){return}if(b){dwr.engine._mergeBatch(a,b)}if(dwr.engine._ordered&&dwr.engine._batchesLength!=0){dwr.engine._batchQueue[dwr.engine._batchQueue.length]=a}else{dwr.engine._sendData(a)}};dwr.engine.setPollMethod=function(a){dwr.engine.setPollType(a)};dwr.engine.setMethod=function(a){dwr.engine.setRpcType(a)};dwr.engine.setVerb=function(a){dwr.engine.setHttpMethod(a)};dwr.engine.setPollType=function(){dwr.engine._debug("Manually setting the Poll Type is not supported")};dwr.engine._scriptSessionId=null;dwr.engine._getScriptSessionId=function(){if(dwr.engine._scriptSessionId==null){dwr.engine._scriptSessionId=dwr.engine._origScriptSessionId+Math.floor(Math.random()*1000)}return dwr.engine._scriptSessionId};dwr.engine._errorHandler=dwr.engine.defaultErrorHandler;dwr.engine._warningHandler=dwr.engine.defaultWarningHandler;dwr.engine._preHook=null;dwr.engine._postHook=null;dwr.engine._batches={};dwr.engine._batchesLength=0;dwr.engine._batchQueue=[];dwr.engine._rpcType=dwr.engine.XMLHttpRequest;dwr.engine._httpMethod="POST";dwr.engine._ordered=false;dwr.engine._async=true;dwr.engine._batch=null;dwr.engine._timeout=0;dwr.engine._DOMDocument=["Msxml2.DOMDocument.6.0","Msxml2.DOMDocument.5.0","Msxml2.DOMDocument.4.0","Msxml2.DOMDocument.3.0","MSXML2.DOMDocument","MSXML.DOMDocument","Microsoft.XMLDOM"];dwr.engine._XMLHTTP=["Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.5.0","Msxml2.XMLHTTP.4.0","MSXML2.XMLHTTP.3.0","MSXML2.XMLHTTP","Microsoft.XMLHTTP"];dwr.engine._activeReverseAjax=false;dwr.engine._outstandingIFrames=[];dwr.engine._pollReq=null;dwr.engine._pollCometInterval=200;dwr.engine._pollRetries=0;dwr.engine._maxPollRetries=0;dwr.engine._textHtmlHandler=null;dwr.engine._headers=null;dwr.engine._parameters=null;dwr.engine._postSeperator="\n";dwr.engine._defaultInterceptor=function(a){return a};dwr.engine._urlRewriteHandler=dwr.engine._defaultInterceptor;dwr.engine._contentRewriteHandler=dwr.engine._defaultInterceptor;dwr.engine._replyRewriteHandler=dwr.engine._defaultInterceptor;dwr.engine._nextBatchId=0;dwr.engine._propnames=["rpcType","httpMethod","async","timeout","errorHandler","warningHandler","textHtmlHandler"];dwr.engine._partialResponseNo=0;dwr.engine._partialResponseYes=1;dwr.engine._partialResponseFlush=2;dwr.engine._unloading=false;dwr.engine._execute=function(l,b,j,h){var e=false;if(dwr.engine._batch==null){dwr.engine.beginBatch();e=true}var d=dwr.engine._batch;var g=[];for(var c=0;c<arguments.length-3;c++){g[c]=arguments[c+3]}if(d.path==null){d.path=l}else{if(d.path!=l){dwr.engine._handleError(d,{name:"dwr.engine.multipleServlets",message:"Can't batch requests to multiple DWR Servlets."});return}}var a;var k=g[g.length-1];if(typeof k=="function"||k==null){a={callback:g.pop()}}else{a=g.pop()}dwr.engine._mergeBatch(d,a);d.handlers[d.map.callCount]={exceptionHandler:a.exceptionHandler,callback:a.callback};var f="c"+d.map.callCount+"-";d.map[f+"scriptName"]=b;d.map[f+"methodName"]=j;d.map[f+"id"]=d.map.callCount;for(c=0;c<g.length;c++){dwr.engine._serializeAll(d,[],g[c],f+"param"+c)}d.map.callCount++;if(e){dwr.engine.endBatch()}};dwr.engine._poll=function(){if(!dwr.engine._activeReverseAjax){return}var a=dwr.engine._createBatch();a.map.id=0;a.map.callCount=1;a.isPoll=true;if(dwr.engine._pollWithXhr=="true"){a.rpcType=dwr.engine.XMLHttpRequest;a.map.partialResponse=dwr.engine._partialResponseNo}else{if(navigator.userAgent.indexOf("Gecko/")!=-1){a.rpcType=dwr.engine.XMLHttpRequest;a.map.partialResponse=dwr.engine._partialResponseYes}else{a.rpcType=dwr.engine.XMLHttpRequest;a.map.partialResponse=dwr.engine._partialResponseNo}}a.httpMethod="POST";a.async=true;a.timeout=0;a.path=dwr.engine._defaultPath;a.preHooks=[];a.postHooks=[];a.errorHandler=dwr.engine._pollErrorHandler;a.warningHandler=dwr.engine._pollErrorHandler;a.handlers[0]={callback:function(b){dwr.engine._pollRetries=0;setTimeout(dwr.engine._poll,b)}};dwr.engine._sendData(a);if(a.rpcType==dwr.engine.XMLHttpRequest&&a.map.partialResponse==dwr.engine._partialResponseYes){dwr.engine._checkCometPoll()}};dwr.engine._pollErrorHandler=function(b,a){dwr.engine._pollRetries++;dwr.engine._debug("Reverse Ajax poll failed (pollRetries="+dwr.engine._pollRetries+"): "+a.name+" : "+a.message);if(dwr.engine._pollRetries<dwr.engine._maxPollRetries){setTimeout(dwr.engine._poll,10000)}else{dwr.engine._activeReverseAjax=false;dwr.engine._debug("Giving up.")}};dwr.engine._createBatch=function(){var a={map:{callCount:0,page:window.location.pathname+window.location.search,httpSessionId:dwr.engine._getJSessionId(),scriptSessionId:dwr.engine._getScriptSessionId()},charsProcessed:0,paramCount:0,parameters:{},headers:{},isPoll:false,handlers:{},preHooks:[],postHooks:[],rpcType:dwr.engine._rpcType,httpMethod:dwr.engine._httpMethod,async:dwr.engine._async,timeout:dwr.engine._timeout,errorHandler:dwr.engine._errorHandler,warningHandler:dwr.engine._warningHandler,textHtmlHandler:dwr.engine._textHtmlHandler};if(dwr.engine._preHook){a.preHooks.push(dwr.engine._preHook)}if(dwr.engine._postHook){a.postHooks.push(dwr.engine._postHook)}var c,b;if(dwr.engine._headers){for(c in dwr.engine._headers){b=dwr.engine._headers[c];if(typeof b!="function"){a.headers[c]=b}}}if(dwr.engine._parameters){for(c in dwr.engine._parameters){b=dwr.engine._parameters[c];if(typeof b!="function"){a.parameters[c]=b}}}return a};dwr.engine._mergeBatch=function(a,d){var e,c;for(var b=0;b<dwr.engine._propnames.length;b++){e=dwr.engine._propnames[b];if(d[e]!=null){a[e]=d[e]}}if(d.preHook!=null){a.preHooks.unshift(d.preHook)}if(d.postHook!=null){a.postHooks.push(d.postHook)}if(d.headers){for(e in d.headers){c=d.headers[e];if(typeof c!="function"){a.headers[e]=c}}}if(d.parameters){for(e in d.parameters){c=d.parameters[e];if(typeof c!="function"){a.map["p-"+e]=""+c}}}};dwr.engine._getJSessionId=function(){var c=document.cookie.split(";");for(var b=0;b<c.length;b++){var a=c[b];while(a.charAt(0)==" "){a=a.substring(1,a.length)}if(a.indexOf(dwr.engine._sessionCookieName+"=")==0){return a.substring(dwr.engine._sessionCookieName.length+1,a.length)}}return""};dwr.engine._checkCometPoll=function(){for(var b=0;b<dwr.engine._outstandingIFrames.length;b++){var e="";var c=dwr.engine._outstandingIFrames[b];try{e=dwr.engine._getTextFromCometIFrame(c)}catch(a){dwr.engine._handleWarning(c.batch,a)}if(e!=""){dwr.engine._processCometResponse(e,c.batch)}}if(dwr.engine._pollReq){var d=dwr.engine._pollReq;var e=d.responseText;if(e!=null){dwr.engine._processCometResponse(e,d.batch)}}if(dwr.engine._outstandingIFrames.length>0||dwr.engine._pollReq){setTimeout(dwr.engine._checkCometPoll,dwr.engine._pollCometInterval)}};dwr.engine._getTextFromCometIFrame=function(b){var a=b.contentWindow.document.body;if(a==null){return""}var c=a.innerHTML;if(c.indexOf("<PRE>")==0||c.indexOf("<pre>")==0){c=c.substring(5,c.length-7)}return c};dwr.engine._processCometResponse=function(d,e){if(e.charsProcessed==d.length){return}if(d.length==0){e.charsProcessed=0;return}var b=d.indexOf("//#DWR-START#",e.charsProcessed);if(b==-1){e.charsProcessed=d.length;return}var a=d.lastIndexOf("//#DWR-END#");if(a==-1){return}if(d.charCodeAt(a+11)==13&&d.charCodeAt(a+12)==10){e.charsProcessed=a+13}else{e.charsProcessed=a+11}var c=d.substring(b+13,a);dwr.engine._receivedBatch=e;dwr.engine._eval(c);dwr.engine._receivedBatch=null};dwr.engine._sendData=function(e){e.map.batchId=dwr.engine._nextBatchId;dwr.engine._nextBatchId++;dwr.engine._batches[e.map.batchId]=e;dwr.engine._batchesLength++;e.completed=false;for(var d=0;d<e.preHooks.length;d++){e.preHooks[d]()}e.preHooks=null;if(e.timeout&&e.timeout!=0){e.timeoutId=setTimeout(function(){dwr.engine._abortRequest(e)},e.timeout)}if(e.rpcType==dwr.engine.XMLHttpRequest){if(window.XMLHttpRequest){e.req=new XMLHttpRequest()}else{if(window.ActiveXObject&&!(navigator.userAgent.indexOf("Mac")>=0&&navigator.userAgent.indexOf("MSIE")>=0)){e.req=dwr.engine._newActiveXObject(dwr.engine._XMLHTTP)}}}var a,c;if(e.req){if(e.async){e.req.onreadystatechange=function(){if(typeof dwr!="undefined"){dwr.engine._stateChange(e)}}}if(e.isPoll){dwr.engine._pollReq=e.req;if(!(document.all&&!window.opera)){e.req.batch=e}}var b=navigator.userAgent.indexOf("Safari/");if(b>=0){var g=navigator.userAgent.substring(b+7);if(parseInt(g,10)<400){if(dwr.engine._allowGetForSafariButMakeForgeryEasier=="true"){e.httpMethod="GET"}else{dwr.engine._handleWarning(e,{name:"dwr.engine.oldSafari",message:"Safari GET support disabled. See getahead.org/dwr/server/servlet and allowGetForSafariButMakeForgeryEasier."})}}}e.mode=e.isPoll?dwr.engine._ModePlainPoll:dwr.engine._ModePlainCall;c=dwr.engine._constructRequest(e);try{e.req.open(e.httpMethod,c.url,e.async);try{for(a in e.headers){var j=e.headers[a];if(typeof j=="string"){e.req.setRequestHeader(a,j)}}if(!e.headers["Content-Type"]){e.req.setRequestHeader("Content-Type","text/plain")}}catch(h){dwr.engine._handleWarning(e,h)}e.req.send(c.body);if(!e.async){dwr.engine._stateChange(e)}}catch(h){dwr.engine._handleError(e,h)}}else{if(e.rpcType!=dwr.engine.ScriptTag){var f=e.isPoll?"dwr-if-poll-"+e.map.batchId:"dwr-if-"+e.map.batchId;e.div=document.createElement("div");document.body.appendChild(e.div);e.div.innerHTML="<iframe src='javascript:void(0)' frameborder='0' style='width:0px;height:0px;border:0;' id='"+f+"' name='"+f+"' onload='dwr.engine._iframeLoadingComplete ("+e.map.batchId+");'></iframe>";e.document=document;e.iframe=e.document.getElementById(f);e.iframe.batch=e;e.mode=e.isPoll?dwr.engine._ModeHtmlPoll:dwr.engine._ModeHtmlCall;if(e.isPoll){dwr.engine._outstandingIFrames.push(e.iframe)}c=dwr.engine._constructRequest(e);if(e.httpMethod=="GET"){e.iframe.setAttribute("src",c.url)}else{e.form=e.document.createElement("form");e.form.setAttribute("id","dwr-form");e.form.setAttribute("action",c.url);e.form.setAttribute("style","display:none;");e.form.setAttribute("target",f);e.form.target=f;e.form.setAttribute("method",e.httpMethod);for(a in e.map){var j=e.map[a];if(typeof j!="function"){var k=e.document.createElement("input");k.setAttribute("type","hidden");k.setAttribute("name",a);k.setAttribute("value",j);e.form.appendChild(k)}}e.document.body.appendChild(e.form);e.form.submit()}}else{e.httpMethod="GET";e.mode=e.isPoll?dwr.engine._ModePlainPoll:dwr.engine._ModePlainCall;c=dwr.engine._constructRequest(e);e.script=document.createElement("script");e.script.id="dwr-st-"+e.map["c0-id"];e.script.src=c.url;document.body.appendChild(e.script)}}};dwr.engine._ModePlainCall="/call/plaincall/";dwr.engine._ModeHtmlCall="/call/htmlcall/";dwr.engine._ModePlainPoll="/call/plainpoll/";dwr.engine._ModeHtmlPoll="/call/htmlpoll/";dwr.engine._constructRequest=function(b){var c={url:b.path+b.mode,body:null};if(b.isPoll==true){c.url+="ReverseAjax.dwr"}else{if(b.map.callCount==1){c.url+=b.map["c0-scriptName"]+"."+b.map["c0-methodName"]+".dwr"}else{c.url+="Multiple."+b.map.callCount+".dwr"}}var e=location.href.match(/jsessionid=([^?]+)/);if(e!=null){c.url+=";jsessionid="+e[1]}var d;if(b.httpMethod=="GET"){b.map.callCount=""+b.map.callCount;c.url+="?";for(d in b.map){if(typeof b.map[d]!="function"){c.url+=encodeURIComponent(d)+"="+encodeURIComponent(b.map[d])+"&"}}c.url=c.url.substring(0,c.url.length-1)}else{c.body="";if(document.all&&!window.opera){var a=[];for(d in b.map){if(typeof b.map[d]!="function"){a.push(d+"="+b.map[d]+dwr.engine._postSeperator)}}c.body=a.join("")}else{for(d in b.map){if(typeof b.map[d]!="function"){c.body+=d+"="+b.map[d]+dwr.engine._postSeperator}}}c.body=dwr.engine._contentRewriteHandler(c.body)}c.url=dwr.engine._urlRewriteHandler(c.url);return c};dwr.engine._stateChange=function(c){var b;if(c.completed){dwr.engine._debug("Error: _stateChange() with batch.completed");return}var f=c.req;try{if(f.readyState!=4){return}}catch(d){dwr.engine._handleWarning(c,d);dwr.engine._clearUp(c);return}if(dwr.engine._unloading){dwr.engine._debug("Ignoring reply from server as page is unloading.");return}try{var e=f.responseText;e=dwr.engine._replyRewriteHandler(e);var a=f.status;if(e==null||e==""){dwr.engine._handleWarning(c,{name:"dwr.engine.missingData",message:"No data received from server"})}else{if(a!=200){dwr.engine._handleError(c,{name:"dwr.engine.http."+a,message:f.statusText})}else{var g=f.getResponseHeader("Content-Type");if(!g.match(/^text\/plain/)&&!g.match(/^text\/javascript/)){if(g.match(/^text\/html/)&&typeof c.textHtmlHandler=="function"){c.textHtmlHandler({status:a,responseText:e,contentType:g})}else{dwr.engine._handleWarning(c,{name:"dwr.engine.invalidMimeType",message:"Invalid content type: '"+g+"'"})}}else{if(c.isPoll&&c.map.partialResponse==dwr.engine._partialResponseYes){dwr.engine._processCometResponse(e,c)}else{if(e.search("//#DWR")==-1){dwr.engine._handleWarning(c,{name:"dwr.engine.invalidReply",message:"Invalid reply from server"})}else{b=e}}}}}}catch(d){dwr.engine._handleWarning(c,d)}dwr.engine._callPostHooks(c);dwr.engine._receivedBatch=c;if(b!=null){b=b.replace(dwr.engine._scriptTagProtection,"")}dwr.engine._eval(b);dwr.engine._receivedBatch=null;dwr.engine._validateBatch(c);if(!c.completed){dwr.engine._clearUp(c)}};dwr.engine._validateBatch=function(a){if(!a.completed){for(var b=0;b<a.map.callCount;b++){if(a.handlers[b]!=null){dwr.engine._handleWarning(a,{name:"dwr.engine.incompleteReply",message:"Incomplete reply from server"});break}}}};dwr.engine._iframeLoadingComplete=function(a){var b=dwr.engine._batches[a];if(b){dwr.engine._validateBatch(b)}};dwr.engine._remoteHandleCallback=function(a,f,e){var c=dwr.engine._batches[a];if(c==null){dwr.engine._debug("Warning: batch == null in remoteHandleCallback for batchId="+a,true);return}try{var b=c.handlers[f];c.handlers[f]=null;if(!b){dwr.engine._debug("Warning: Missing handlers. callId="+f,true)}else{if(typeof b.callback=="function"){b.callback(e)}}}catch(d){dwr.engine._handleError(c,d)}};dwr.engine._remoteHandleException=function(a,e,d){var c=dwr.engine._batches[a];if(c==null){dwr.engine._debug("Warning: null batch in remoteHandleException",true);return}var b=c.handlers[e];c.handlers[e]=null;if(b==null){dwr.engine._debug("Warning: null handlers in remoteHandleException",true);return}if(d.message==undefined){d.message=""}if(typeof b.exceptionHandler=="function"){b.exceptionHandler(d.message,d)}else{if(typeof c.errorHandler=="function"){c.errorHandler(d.message,d)}}};dwr.engine._remoteHandleBatchException=function(c,a){var b=(dwr.engine._receivedBatch==null&&a!=null);if(b){dwr.engine._receivedBatch=dwr.engine._batches[a]}if(c.message==undefined){c.message=""}dwr.engine._handleError(dwr.engine._receivedBatch,c);if(b){dwr.engine._receivedBatch=null;dwr.engine._clearUp(dwr.engine._batches[a])}};dwr.engine._remotePollCometDisabled=function(c,a){dwr.engine.setActiveReverseAjax(false);var b=(dwr.engine._receivedBatch==null&&a!=null);if(b){dwr.engine._receivedBatch=dwr.engine._batches[a]}if(c.message==undefined){c.message=""}dwr.engine._handleError(dwr.engine._receivedBatch,c);if(b){dwr.engine._receivedBatch=null;dwr.engine._clearUp(dwr.engine._batches[a])}};dwr.engine._remoteBeginIFrameResponse=function(b,a){if(b!=null){dwr.engine._receivedBatch=b.batch}dwr.engine._callPostHooks(dwr.engine._receivedBatch)};dwr.engine._remoteEndIFrameResponse=function(a){dwr.engine._clearUp(dwr.engine._receivedBatch);dwr.engine._receivedBatch=null};dwr.engine._eval=function(script){if(script==null){return null}if(script==""){dwr.engine._debug("Warning: blank script",true);return null}return eval(script)};dwr.engine._abortRequest=function(a){if(a&&!a.completed){dwr.engine._clearUp(a);if(a.req){a.req.abort()}dwr.engine._handleError(a,{name:"dwr.engine.timeout",message:"Timeout"})}};dwr.engine._callPostHooks=function(a){if(a.postHooks){for(var b=0;b<a.postHooks.length;b++){a.postHooks[b]()}a.postHooks=null}};dwr.engine._clearUp=function(b){if(!b){dwr.engine._debug("Warning: null batch in dwr.engine._clearUp()",true);return}if(b.completed){dwr.engine._debug("Warning: Double complete",true);return}if(b.div){b.div.parentNode.removeChild(b.div)}if(b.iframe){for(var c=0;c<dwr.engine._outstandingIFrames.length;c++){if(dwr.engine._outstandingIFrames[c]==b.iframe){dwr.engine._outstandingIFrames.splice(c,1)}}b.iframe.parentNode.removeChild(b.iframe)}if(b.form){b.form.parentNode.removeChild(b.form)}if(b.req){if(b.req==dwr.engine._pollReq){dwr.engine._pollReq=null}delete b.req}if(b.timeoutId){clearTimeout(b.timeoutId);delete b.timeoutId}if(b.map&&(b.map.batchId||b.map.batchId==0)){delete dwr.engine._batches[b.map.batchId];dwr.engine._batchesLength--}b.completed=true;if(dwr.engine._batchQueue.length!=0){var a=dwr.engine._batchQueue.shift();dwr.engine._sendData(a)}};dwr.engine._unloader=function(){dwr.engine._unloading=true;dwr.engine._batchQueue.length=0;for(var a in dwr.engine._batches){var b=dwr.engine._batches[a];if(b&&b.map){if(b.req){b.req.abort()}dwr.engine._clearUp(b)}}};if(window.addEventListener){window.addEventListener("unload",dwr.engine._unloader,false)}else{if(window.attachEvent){window.attachEvent("onunload",dwr.engine._unloader)}}dwr.engine._handleError=function(a,b){if(typeof b=="string"){b={name:"unknown",message:b}}if(b.message==null){b.message=""}if(b.name==null){b.name="unknown"}if(a&&typeof a.errorHandler=="function"){a.errorHandler(b.message,b)}else{if(dwr.engine._errorHandler){dwr.engine._errorHandler(b.message,b)}}if(a){dwr.engine._clearUp(a)}};dwr.engine._handleWarning=function(a,b){if(typeof b=="string"){b={name:"unknown",message:b}}if(b.message==null){b.message=""}if(b.name==null){b.name="unknown"}if(a&&typeof a.warningHandler=="function"){a.warningHandler(b.message,b)}else{if(dwr.engine._warningHandler){dwr.engine._warningHandler(b.message,b)}}if(a){dwr.engine._clearUp(a)}};dwr.engine._serializeAll=function(b,d,c,a){if(c==null){b.map[a]="null:null";return}switch(typeof c){case"boolean":b.map[a]="boolean:"+c;break;case"number":b.map[a]="number:"+c;break;case"string":b.map[a]="string:"+encodeURIComponent(c);break;case"object":if(c instanceof String){b.map[a]="String:"+encodeURIComponent(c)}else{if(c instanceof Boolean){b.map[a]="Boolean:"+c}else{if(c instanceof Number){b.map[a]="Number:"+c}else{if(c instanceof Date){b.map[a]="Date:"+c.getTime()}else{if(c&&c.join){b.map[a]=dwr.engine._serializeArray(b,d,c,a)}else{b.map[a]=dwr.engine._serializeObject(b,d,c,a)}}}}}break;case"function":break;default:dwr.engine._handleWarning(null,{name:"dwr.engine.unexpectedType",message:"Unexpected type: "+typeof c+", attempting default converter."});b.map[a]="default:"+c;break}};dwr.engine._lookup=function(e,c,a){var d;for(var b=0;b<e.length;b++){if(e[b].data==c){d=e[b];break}}if(d){return"reference:"+d.name}e.push({data:c,name:a});return null};dwr.engine._serializeObject=function(c,h,g,b){var f=dwr.engine._lookup(h,g,b);if(f){return f}if(g.nodeName&&g.nodeType){return dwr.engine._serializeXml(c,h,g,b)}var e="Object_"+dwr.engine._getObjectClassName(g)+":{";var d;for(d in g){if(typeof g[d]!="function"){c.paramCount++;var a="c"+dwr.engine._batch.map.callCount+"-e"+c.paramCount;dwr.engine._serializeAll(c,h,g[d],a);e+=encodeURIComponent(d)+":reference:"+a+", "}}if(e.substring(e.length-2)==", "){e=e.substring(0,e.length-2)}e+="}";return e};dwr.engine._errorClasses={Error:Error,EvalError:EvalError,RangeError:RangeError,ReferenceError:ReferenceError,SyntaxError:SyntaxError,TypeError:TypeError,URIError:URIError};dwr.engine._getObjectClassName=function(c){if(c&&c.constructor&&c.constructor.toString){var d=c.constructor.toString();var a=d.match(/function\s+(\w+)/);if(a&&a.length==2){return a[1]}}if(c&&c.constructor){for(var b in dwr.engine._errorClasses){if(c.constructor==dwr.engine._errorClasses[b]){return b}}}if(c){var d=Object.prototype.toString.call(c);var a=d.match(/\[object\s+(\w+)/);if(a&&a.length==2){return a[1]}}return"Object"};dwr.engine._serializeXml=function(c,f,e,b){var d=dwr.engine._lookup(f,e,b);if(d){return d}var a;if(window.XMLSerializer){a=new XMLSerializer().serializeToString(e)}else{if(e.toXml){a=e.toXml}else{a=e.innerHTML}}return"XML:"+encodeURIComponent(a)};dwr.engine._serializeArray=function(h,c,f,a){var d=dwr.engine._lookup(c,f,a);if(d){return d}if(document.all&&!window.opera){var b=["Array:["];for(var g=0;g<f.length;g++){if(g!=0){b.push(",")}h.paramCount++;var j="c"+dwr.engine._batch.map.callCount+"-e"+h.paramCount;dwr.engine._serializeAll(h,c,f[g],j);b.push("reference:");b.push(j)}b.push("]");e=b.join("")}else{var e="Array:[";for(var g=0;g<f.length;g++){if(g!=0){e+=","}h.paramCount++;var j="c"+dwr.engine._batch.map.callCount+"-e"+h.paramCount;dwr.engine._serializeAll(h,c,f[g],j);e+="reference:";e+=j}e+="]"}return e};dwr.engine._unserializeDocument=function(a){var c;if(window.DOMParser){var e=new DOMParser();c=e.parseFromString(a,"text/xml");if(!c.documentElement||c.documentElement.tagName=="parsererror"){var b=c.documentElement.firstChild.data;b+="\n"+c.documentElement.firstChild.nextSibling.firstChild.data;throw b}return c}else{if(window.ActiveXObject){c=dwr.engine._newActiveXObject(dwr.engine._DOMDocument);c.loadXML(a);return c}else{var d=document.createElement("div");d.innerHTML=a;return d}}};dwr.engine._newActiveXObject=function(a){var d;for(var c=0;c<a.length;c++){try{d=new ActiveXObject(a[c]);break}catch(b){}}return d};dwr.engine._debug=function(f,d){var a=false;try{if(window.console){if(d&&window.console.trace){window.console.trace()}window.console.log(f);a=true}else{if(window.opera&&window.opera.postError){window.opera.postError(f);a=true}}}catch(c){}if(!a){var b=document.getElementById("dwr-debug");if(b){var e=f+"<br/>"+b.innerHTML;if(e.length>2048){e=e.substring(0,2048)}b.innerHTML=e}}};

jive.Follow=function(b){var a=this;var b=b;this.startFollowingCommunity=function(c){FollowingActionBean.followCommunity(c,true,{callback:function(){$("jive-link-community-startFollowing").hide();$("jive-link-community-stopFollowing").show();$("jive-follow-error").hide();var d=jiveControl.getPlacesCache();d.reloadPlaces("FOLLOWED_ALL")},errorHandler:function(f,d){$("jive-follow-error").update(b);$("jive-follow-error").show()}})};this.stopFollowingCommunity=function(c){FollowingActionBean.followCommunity(c,false,{callback:function(){$("jive-link-community-startFollowing").show();$("jive-link-community-stopFollowing").hide();$("jive-follow-error").hide();var d=jiveControl.getPlacesCache();d.reloadPlaces("FOLLOWED_ALL")},errorHandler:function(f,d){$("jive-follow-error").update(b);$("jive-follow-error").show()}})};this.startFollowingProject=function(c){FollowingActionBean.followProject(c,true,{callback:function(){$("jive-link-project-startFollowing").hide();$("jive-link-project-stopFollowing").show();$("jive-follow-error").hide();var d=jiveControl.getPlacesCache();d.reloadPlaces("FOLLOWED_ALL")},errorHandler:function(f,d){$("jive-follow-error").update(b);$("jive-follow-error").show()}})};this.stopFollowingProject=function(c){FollowingActionBean.followProject(c,false,{callback:function(){$("jive-link-project-startFollowing").show();$("jive-link-project-stopFollowing").hide();$("jive-follow-error").hide();var d=jiveControl.getPlacesCache();d.reloadPlaces("FOLLOWED_ALL")},errorHandler:function(f,d){$("jive-follow-error").update(b);$("jive-follow-error").show()}})};this.enableFollowedPlaces=function(){$j("#choose-community-radio").attr("disabled",true);$j("#widget-edit-choose-group").attr("disabled",true);$j("#choose-project-radio").attr("disabled",true);$j("#widget-edit-choose-comm").attr("disabled",true);$j("#choose-group-radio").attr("disabled",true);$j("#widget-edit-choose-proj").attr("disabled",true);$j("#rb-recursive-1").attr("disabled",true);$j("#rb-recursive-2").attr("disabled",true)};this.disableFollowedPlaces=function(){$j("#choose-community-radio").removeAttr("disabled");$j("#choose-project-radio").removeAttr("disabled");$j("#choose-group-radio").removeAttr("disabled");if($j("#choose-community-radio").is(":checked")){$j("#widget-edit-choose-comm").removeAttr("disabled")}else{if($j("#choose-project-radio").is(":checked")){$j("#widget-edit-choose-proj").removeAttr("disabled")}else{if($j("#choose-group-radio").is(":checked")){$j("#widget-edit-choose-group").removeAttr("disabled")}}}$j("#rb-recursive-1").removeAttr("disabled");$j("#rb-recursive-2").removeAttr("disabled")}};

function addAsFriendTT(a,d,c,b){if(c||b){Effect.toggle("jive-add-friend-hover","appear");if(c){$("friendReqMsgDiv").show()}$("jive-adding-friend-link-hover").toggle();$("jive-add-friend-link-hover").toggle()}else{submitFriendRequestTT(a,"")}}function submitFriendRequestTT(b,c,d){var a=[];$$("input.relListCB").each(function(e){if($(e).checked){a[a.length]=$(e).value}});FriendListAction.addFriend(b,c,a,{callback:function(e){$("friend-add-form-hover").hide();if(!e){new Effect.Appear("friend-pending-hover")}else{new Effect.Appear("friend-approved-hover");d=d+1;if($("friend-count")){$("friend-count").update(d)}if($("jive-remove-rel-hover")){$("jive-remove-rel-hover").show()}}},errorHandler:function(e){$("jive-error-box").show();$("jive-error-box").update(e);new Effect.Fade("jive-error-box",{delay:5})}})}function removeAsFriendTT(a,b){FriendListAction.removeFriend(a,{callback:function(){$("friend-pending-hover").hide();$("friend-approved-hover").hide();$("friend-add-form-hover").show();$("jive-add-friend-link-hover").show();$("jive-adding-friend-link-hover").hide();$("jive-add-friend-hover").hide();$("jive-confirm-relationship-removal-hover").hide();b=b-1;if($("friend-count")){$("friend-count").update(b)}}})};

jive.model.WidgetLoader=function(){var b=this;var a=new Array();this.addWidget=function(c){a.push(c)};this.renderAll=function(){a.each(function(c){$j("#jive-widgetframe-body_"+c.frameID).load(c.renderWidgetAction,{frameID:c.frameID,containerSize:c.containerSize,widgetType:c.widgetType,container:c.container,containerType:c.containerType},function(){$("jive-widgetframe-loading_"+c.frameID).hide();$("jive-widgetframe-body_"+c.frameID).show();$("jive-widgetframe-refresh_"+c.frameID).show();b.refreshLink(c);$j("#jive-widgetframe_"+c.frameID).trigger("frameLoaded")})})};this.refreshLink=function(c){$("jive-widgetframe-refresh-link_"+c.frameID).observe("click",function(){$("jive-widgetframe-loading_"+c.frameID).show();$("jive-widgetframe-body_"+c.frameID).hide();b.refresh(c)})};this.refresh=function(c){$j("#jive-widgetframe-body_"+c.frameID).load(c.renderWidgetAction,{frameID:c.frameID,containerSize:c.containerSize,widgetType:c.widgetType,container:c.container,containerType:c.containerType},function(){$("jive-widgetframe-loading_"+c.frameID).hide();$("jive-widgetframe-body_"+c.frameID).show();$j("#jive-widgetframe_"+c.frameID).trigger("frameLoaded")})}};var widgetLoader=new jive.model.WidgetLoader();Event.observe(window,"load",function(){widgetLoader.renderAll()});


// Provide a default path to dwr.engine
if (dwr == null) var dwr = {};
if (dwr.engine == null) dwr.engine = {};
if (DWREngine == null) var DWREngine = dwr.engine;

if (FollowingActionBean == null) var FollowingActionBean = {};
FollowingActionBean._path = '/dwr';
FollowingActionBean.followCommunity = function(p0, p1, callback) {
  dwr.engine._execute(FollowingActionBean._path, 'FollowingActionBean', 'followCommunity', p0, p1, callback);
}
FollowingActionBean.followProject = function(p0, p1, callback) {
  dwr.engine._execute(FollowingActionBean._path, 'FollowingActionBean', 'followProject', p0, p1, callback);
}



// Provide a default path to dwr.engine
if (dwr == null) var dwr = {};
if (dwr.engine == null) dwr.engine = {};
if (DWREngine == null) var DWREngine = dwr.engine;

if (FriendListAction == null) var FriendListAction = {};
FriendListAction._path = '/dwr';
FriendListAction.getFriends = function(callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'getFriends', callback);
}
FriendListAction.getFriends = function(p0, p1, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'getFriends', p0, p1, callback);
}
FriendListAction.createList = function(p0, p1, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'createList', p0, p1, callback);
}
FriendListAction.updateList = function(p0, p1, p2, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'updateList', p0, p1, p2, callback);
}
FriendListAction.deleteList = function(p0, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'deleteList', p0, callback);
}
FriendListAction.getListsForUser = function(p0, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'getListsForUser', p0, callback);
}
FriendListAction.addRelationshipsToList = function(p0, p1, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'addRelationshipsToList', p0, p1, callback);
}
FriendListAction.removeRelationshipsFromList = function(p0, p1, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'removeRelationshipsFromList', p0, p1, callback);
}
FriendListAction.emailFriends = function(p0, p1, p2, p3, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'emailFriends', p0, p1, p2, p3, callback);
}
FriendListAction.watchFriends = function(p0, p1, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'watchFriends', p0, p1, callback);
}
FriendListAction.removeFriend = function(p0, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'removeFriend', p0, callback);
}
FriendListAction.removeFriends = function(p0, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'removeFriends', p0, callback);
}
FriendListAction.addFriend = function(p0, p1, p2, callback) {
  dwr.engine._execute(FriendListAction._path, 'FriendListAction', 'addFriend', p0, p1, p2, callback);
}


