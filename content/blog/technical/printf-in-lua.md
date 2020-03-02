---
title: "printf in lua"
date: 2016-11-08 15:43:23 +0000 UTC
draft: false
---
<a href="https://www.lua.org/">Lua</a> doesn't have a C-like <em>printf</em> function. However, it has a Java-like <em>string.format</em> function and it allows variable-length arguments, so rolling you own printf is very easy indeed:
<pre>function printf(...)
 io.write(string.format(...))
end</pre>