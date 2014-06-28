#!/bin/bash
pwd=`dirname $0`

read -p "Link? " link
read -p "Title? " title
read -p "Category? (optional) " category

if [ -z "$link" ] || [ -z "$title" ]; then
	echo "Empty link or title."
	exit 0
fi

date=`date +"%Y-%m-%d"`
time=`date +"%H:%M"`
file="$pwd/_posts/$date-$link.md"

if [ -f "$file" ]; then
	echo "$file already exist."
	exit 0
else
	touch $file
	echo "---
layout: post
title: \"$title\"
date: $date $time
category: $category
---
" >> "$file"
fi

echo "$file created."
