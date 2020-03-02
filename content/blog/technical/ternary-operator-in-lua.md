---
title: "Ternary operator in lua"
summary: " "
date: 2016-11-10 12:23:50 +0000 UTC
draft: false
---
In Java, I very often have to do the following, to mark the plural when needed:
<pre>System.out.printf("Delivered: %d item%s", n, n &gt; 1 ? "s", "");
</pre>
In Lua, there is no ternary operator, so this kind of elegant syntax might be compromised in this situation. Fortunately, there is an as nice workaround:
<pre>print(string.format("Delivered: %d item%s", n &gt; 1 and "s" or ""))</pre>
Thanks to <a href="http://hisham.hm/2011/05/04/luas-and-or-as-a-ternary-operator/">hisham.hm</a>
