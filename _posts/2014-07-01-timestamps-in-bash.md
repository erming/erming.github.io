---
layout: post
title: "Timestamps in Bash"
date: 2014-07-01 00:14
category: programming
---

## Usage

To create a timestamp in bash, use the `date` command:

```bash
date +"%Y-%m-%d %H:%M" # 2014-01-01 00:00
```

_Surround the format in quotes when it contains a space._

### Strings

You can also use it directly inside strings:

```bash
echo "time is `date +%T`" # time is 00:00:00
```

## Formats

List of useful formats:

| Format | Description                    |
|-------:|:-------------------------------|
|   %d   | day of month (01-31)           |
|   %F   | full date, same as %Y-%m-%d    |
|   %H   | hour (00-23)                   |
|   %m   | month (01-12)                  |
|   %M   | minute (00-59)                 |
|   %R   | hour and minute, same as %H:%M |
|   %S   | seconds (00-59)                |
|   %T   | time, same as %H:%M:%S         |

### Read more

Manual:  
http://ss64.com/bash/date.html
