---
title: "First glitch with musl"
summary: " "
date: 2017-03-31 09:53:07 +0000 UTC
draft: false
---
I have been using alpine linux images on docker for some time and until today, I have never encountered any problem.

What I am facing today is due to musl, the excellent glibc alternative used by alpine to keep the system very compact.

I have started to use sqlite as backend for simple lua applications and I liked it so much that I am now using it for my java/spring project as well.

To talk to it, I use the following JDBC driver: <a href="https://github.com/xerial/sqlite-jdbc" target="_blank">https://github.com/xerial/sqlite-jdbc </a>

This driver is very efficient because it embeds a compiled version of the sqlite C library into its jar. So far so good, they provide shared libs for all operating systems and processors: from Windows 32bit to Linux ARMv7, MacOSX etc.

Even though the Linux libs cover all major processor architectures (Inter 32bit or 64bit and different ARM variants), they have something in common: they are compiled against glibc!

So this driver doesn't work by default on alpine linux.

I have at least two solutions:
<ol>
 	<li>Build it by hand (so I cannot draw it automatically from maven central)</li>
 	<li>Use its pure java implementation (but then I sacrifice the nice performance offered by the compiled lib)</li>
</ol>
Anyway, this is not a showstopper for me using sqlite in Java, but it makes things a little bit more complicated.
