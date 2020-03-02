---
title: "lua: print in colour"
summary: " "
date: 2017-02-22 15:31:07 +0000 UTC
draft: false
---
<img class="alignnone" src="http://wxlua.sourceforge.net/images/wxlualogo.png" width="86" height="86" />

This a short memo on how to print in colour in lua.
<h4>Codes:</h4>
<ul>
 	<li><span style="color:#ff0000;"><strong>Red</strong>: 31</span></li>
 	<li><span style="color:#339966;"><strong>Green</strong>: 32</span></li>
 	<li><span style="color:#ff9900;"><strong>Yellow</strong>: 33</span></li>
 	<li><span style="color:#0000ff;"><strong>Blue</strong>: 34</span></li>
</ul>
<h4>Example, print "hello" in red:</h4>
<pre>lua -e 'print(string.format("27[%dm%s27[0m", 31, "hello"))'</pre>
