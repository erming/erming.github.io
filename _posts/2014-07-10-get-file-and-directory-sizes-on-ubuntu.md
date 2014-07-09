---
layout: post
title: "Get file and directory sizes on Ubuntu"
date: 2014-07-10 01:40
category: programming
---

When `ls -lh` or `du -hs *` isn't enough for you, you should go ahead and try [ncdu](http://dev.yorhel.nl/ncdu).

## What is it?

ncdu is an interactive disk usage analyser.
It's based on the `du` command-line utility and provides a fast way to see what directories are using your disk space.

## Install

Install with apt-get:

```
apt-get install ncdu
```

## How to use it

Run with:

```
ncdu
```

This will load the interactive disk analyzer.
You should now see something like this:

```
  150.2MiB [##########] /build
   54.8MiB [###       ] /node_modules
    4.7MiB [          ] /.git
    1.1MiB [          ] /client
  156.0KiB [          ] /lib
    4.0KiB [          ]  package.json
    4.0KiB [          ]  Gruntfile.js
    4.0KiB [          ]  index.js
    4.0KiB [          ]  config.js
    4.0KiB [          ]  .gitignore
    0.0  B [          ]  README.md
```
