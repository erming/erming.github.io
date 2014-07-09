---
layout: post
title: "Install and use Grunt"
date: 2014-07-07 13:14
category: programming
---

Grunt can help you perform repetitive tasks like minification, compilation, unit testing, linting, etc.

## Requirements

Grunt requires [npm](https://www.npmjs.org/).  
If you don't have it already, lets install it:

```bash
npm install nodejs-legacy
```

## Install Grunt

First we need to install Grunt's command line interface. Open your terminal and type:

```bash
npm install -g grunt-cli
```

_This installs the `grunt` command._

## Local Grunt install

Your projects also need a local install.
This means you'll have to install Grunt (and [plugins](http://gruntjs.com/plugins)) per project.

Step into your project folder and type:

```bash
npm install --save-dev grunt
```

## The Gruntfile

After installing Grunt locally, the last thing you need to do is add a `Gruntfile.js` to your project folder.

```js
module.exports = function(grunt) {
	grunt.initConfig({
		// Grunt configuration here
	});
	grunt.registerTask(
		"default",
		function() {
			// Do nothing
		}
	);
};
```

You can now run `grunt` while standing in the project folder.
But it doesn't do anything yet..

## Grunt tasks

Lets setup the default task:

```js
module.exports = function(grunt) {
	grunt.initConfig({
		file: "example.txt"
	});
	grunt.registerTask(
		"default",
		function() {
			var file = grunt.config.get("file");
			grunt.util.spawn({
				cmd: "touch",
				args: [file]
			});
		}
	);
};
```

Calling `grunt` will now invoke the default task, which will create a new file for you.

Aaaand you're done!

This was only a minor example but it should be enough to get you started using Grunt.
Good luck!

## Read more

Documentation:

- [grunt](http://gruntjs.com/api/grunt)
- [grunt.config](http://gruntjs.com/api/grunt.config)
- [grund.util](http://gruntjs.com/api/grunt.util)
