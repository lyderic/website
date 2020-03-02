---
title: "base64 images in HTML pages"
date: 2016-02-12 16:47:03 +0000 UTC
draft: false
---
I have found out that it is possible to embed images in a HTML page as base64 strings! I like the idea of having everything as text. I use it to display the <em>favicon</em> on the front page of my web site.

This is very easy:

Convert your favicon to base64:
<pre><code>$ base64 -w 0 favicon.ico
</code></pre>
The <em>-w</em> switch is to have the whole string as a single line.

Include this entry in the <em>&lt;head&gt;</em> section of your HTML page:
<pre><code>&lt;link href="data:image/x-icon;base64,AAABAAE...fAAD//wAA" rel="icon" type="image/x-icon" /&gt;
</code></pre>
I cut the base64 string a little for better visibility.

Another cool use of base64.