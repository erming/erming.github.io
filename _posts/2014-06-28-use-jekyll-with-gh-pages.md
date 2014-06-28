---
layout: post
title: "Use Jekyll with gh-pages"
date: 2014-06-28 21:13
category: programming
---

GitHub lets you host stuff on their servers via the `gh-pages` branch in your repositories.
And GitHub uses Jekyll to serve these pages.

This post will help you install a version of Jekyll that is compatible with GitHub Pages.

## Install

Assuming you have already [installed Jekyll]({% post_url 2014-06-28-how-to-install-jekyll-on-ubuntu %}),
lets go ahead and install [Bundler](http://bundler.io/).

```bash
sudo gem install bundler
```

Bundler will look for a file in your directory called `Gemfile`. This file contains information about dependencies for your Ruby project — in this case: your Jekyll website.

Now go to your project directory.
If you don't already have a `Gemfile` in your directory, __create it__ and add this:

```
source "http://rubygems.org"
gem "github-pages"
```

If you successfully installed Bundler earlier, go ahead and run:

```bash
bundle
```

This should install your dependencies.

## Run Jekyll

To run Jekyll (and watch for file changes), use this:

```bash
bundle exec jekyll server --watch
```

You're now running the same version of Jekyll as GitHub.
And to publish your website, all you have to do is `git push` to the `gh-pages` branch.
