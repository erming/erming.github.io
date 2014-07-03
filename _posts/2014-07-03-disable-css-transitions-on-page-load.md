---
layout: post
title: "Disable CSS transitions on page load"
date: 2014-07-03 22:24
category: programming
---

Sometimes when you're using CSS transitions on your elements, the animations might trigger when you load your website.
And you don't want that.

## Turn off transitions

First we're going to add a class to the body element:

```html
<body class="preload">
```

And then this CSS rule:

```css
.preload * {
	transition: none !important;
}
```

_If you want cross-browser compatability, you might want to vendor prefix the `transition` property._

## Turning it on again

But we want the transitions, just not when the page loads!
Lets remove the CSS class from the body element, but with a slight delay, using JavaScript:

_I'm using jQuery in this example, but vanilla JavaScript works too._

```js
setTimeout(function() {
	// Turn on transitions.
	$("body").removeClass("preload");
}, 500);
```

__And you're done.__
Transitions will now be enabled 0.5s after page load, preventing unwanted animations.
