---
layout: post
title: "Git clone specific branch only"
date: 2014-07-03 22:52
category: programming
---

It's this simple:

```bash
git clone -b <branch> <repository> [<target>]
```

`<target>` is optional. If you don't specify a target folder the branch will be cloned into a new folder.

## Read more

Git-SCM manual:  
http://git-scm.com/docs/git-clone

_.. or run this in your terminal:_

```bash
git clone --help
```
