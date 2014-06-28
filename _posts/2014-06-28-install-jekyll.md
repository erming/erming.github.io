---
layout: post
title: "How to install Jekyll"
date: 2014-06-28 19:56
category: programming
---

Jekyll is a static site generator, powered by Ruby. And to get started, we need to install Ruby:

```bash
sudo apt-get -y install ruby ruby-dev
```

And as a bonus, this also installed [RubyGems](https://rubygems.org/), the Ruby package manager, known as `gem`.

## Installing Jekyll 

Now lets install [Jekyll](http://jekyllrb.com/):

```bash
sudo gem install jekyll
```

## Running Jekyll

Step into your Jekyll website directory and run:

```bash
jekyll serve --watch
```

## More information

Check out the [Jekyll docs](http://jekyllrb.com/docs/home/) for more information.
