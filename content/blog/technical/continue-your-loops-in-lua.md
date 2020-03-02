---
title: "Continue your loops in lua"
date: 2016-11-10 15:06:27 +0000 UTC
draft: false
---
I am so used to the <em>continue</em> word in Java and C that I was surprised to see it absent in lua.

It is however relatively easy to implement it with a good ol' <em>goto.</em>

Here is a (rather stupid) example. We get a directory listing and we filter out the hidden files (starting with a dot):
<pre>local h = io.popen("ls -a")
for line in h:lines() do
   if string.match(line, "^%.") then goto continue end
   print(line)
   ::continue::
end
h:close()
</pre>
&nbsp;