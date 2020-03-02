---
title: "Busybox, compile one applet only"
summary: " "
date: 2016-04-12 16:22:46 +0000 UTC
draft: false
---
It might be handy to compile busybox with only one applet, or a very minimal set of applets to minimise the binary size. This could be achieved by running "make menuconfig" and selecting / deselecting what is or is not wished, but if all you want is one or two applets, as so much is preselected by default, this is very tedious to do.

It would be great if there was a way to start clean, on a config file where <em>nothing</em> is preselected.

Well the way to that is to run:
<pre><code>make allnoconfig
</code></pre>
Then run:
<pre><code>make menuconfig
</code></pre>
and choose what you want. After the usual:
<pre><code>make -j 4
</code></pre>
if you run the busybox binary, you will see listed only the applets you selected. If you selected only <em>one</em> applet though, it will be launch directly.

Neat!
