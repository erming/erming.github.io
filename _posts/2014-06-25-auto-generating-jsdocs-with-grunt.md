---
layout: post
title: "Auto-generating JSDoc with Grunt"
date: 2014-06-25 18:31
category: programming
---

I recently started using JSDoc.
And to save some time, I wanted the docs to re-generate on file changes.
Here, I'll walk you through it:

### What you need

- [Grunt CLI](http://gruntjs.com/)
- [JSDoc](http://usejsdoc.org/)

They can both be installed via [npm](https://www.npmjs.org/):

```bash
npm install -g grunt-cli jsdoc
```

Done? Good.
From now on, if you want to use JSDoc from the command line, all you need to do is this:

```bash
jsdoc <target> -d docs/
```

You can read more about the JSDoc command-line [here](http://usejsdoc.org/about-commandline.html).

Lets move on.

### Setting up Grunt

So far, we've installed the Grunt CLI.
But Grunt also requires a local install inside your project folder.
Plus, we need the [grunt-contrib-watch](https://github.com/gruntjs/grunt-contrib-watch) plugin.

Step into your project folder and run:

```bash
npm install --save-dev grunt grunt-contrib-watch
```

_Note: If you don't have a package.json, run `npm init`._

### The Gruntfile

When running the `grunt` command, Grunt will try to locate a Gruntfile in your current folder.

Lets create `Gruntfile.js`:

```js
module.exports = function(grunt) {
	// This is where the magic happens..
};
```

Now, lets enable `grunt-contrib-watch` using this code:

```js
module.exports = function(grunt) {
	grunt.initConfig({
		watch: {
			scripts: {
				files: ["src/*.js"],
				tasks: ["default"]
			}
		}
	});
	grunt.loadNpmTasks("grunt-contrib-watch");
	grunt.registerTask(
		"default",
		[]
	);
};
```

From now on, if you run `grunt watch`, Grunt will automatically watch files matching `src/*.js` and then run the `default` task when they change.

_But the `default` task is currently empty!_

__.. we need more tasks:__

```js
grunt.registerTask(
	"clean", function () {
		grunt.util.spawn({
			cmd: "rm",
			args: ["-rf", "docs/"]
		});
	}
);
grunt.registerTask(
	"jsdoc", function () {
		grunt.util.spawn({
			cmd: "jsdoc",
			args: ["src/", "-d", "docs/"]
		});
	}
);
```

Now update the `default` task to look like this:

```js
grunt.registerTask(
	"default",
	["clean", "jsdoc"]
);
```

[Your file should now look like this.](https://gist.github.com/erming/033ead1482343ddc7a1e)

There. It's all done.
If everything is working as it should, all you have to do is run:

```bash
grunt watch
```
