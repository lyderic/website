---
title: "C in sh"
date: 2016-04-14 16:22:02 +0000 UTC
draft: false
---
I am currently reading the best book about the C language since the K&amp;R. It's called <em>21st Century C</em>, was written by Ben Klemens and published by <a href="http://shop.oreilly.com/product/0636920033677.do" target="_blank">O'Reilly</a>.

There is one gem per page in this book. From big-picture tips to nice little hacks. My favority so far can be found on page 29. It explains how one can embed a small C proram into a shell script.

In a nutshell, this is how you do it:
<pre><code>#!/bin/sh

gcc -xc - &lt;&lt; END_OF_C_SECTION
#include &lt;stdio.h&gt;
int main() {
   printf("C inside a shell script!n");
}
END_OF_C_SECTION
./a.out
</code></pre>
'-xc' indicates to cc that what follows in C code. Also notice the dash ('-') that tells gcc to accept standard input instead of a file.

In a footnote, Klemens points to a complete implementation of this idea by RhysU, who <a href="https://github.com/RhysU/c99sh">has put his work on github</a>.