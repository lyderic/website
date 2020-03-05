---
title: "Why no busybox for Android"
summary: " "
date: 2016-03-10 16:45:04 +0000 UTC
draft: false
---
I found out why there is no busybox by default on Android. It looks like it is for licensing reasons. On the Android command line, the all-in-one executable used is <a href="https://www.landley.net/toybox/about.html">toybox</a> as it is under the BSD license whereas busybox use GPL v2.

The little drawback of this situation is that toybox is not as feature complete as busybox. For example, it is lacking the vi editor. There is not even <em>ed</em> to quickly edit a file.

In the end this is not the biggest issue as there are so many busybox installers around. But I also find it a shame that for non technical reasons we have less functionalities. That's not what open source is supposed to be about.
