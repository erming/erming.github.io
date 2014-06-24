---
layout: post
title: "Jekyll code highlighting with Redcarpet"
date: 2014-06-24 15:10
---

Jekyll is great.
And it comes with the [Redcarpet](https://github.com/vmg/redcarpet) Markdown parser — the same as GitHub is using.

This means you can quickly highlight your code.  
Like this:

```php
<?php
class Foo {
	function Bar() {
		// This is a comment.
	}
};
?>
```

### Configuration

To enable redcarpet, put this in your _config.yml:

```yaml
markdown: redcarpet
```

### Usage

To highlight your code, you have to use "code fences".
Wrap your code inside the fence and redcarpet will highlight it for you. Like this:

	```javascript
	function Example() {
		// This is a comment.
	}
	```

### Themes

Find your theme here:  
[github.com/richleland/pygments-css](http://richleland.github.io/pygments-css/)
