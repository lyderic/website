---
title: "How to find out compiler version of a go binary"
date: 2017-09-04 12:45:45 +0000 UTC
draft: false
---
If you have a binary that was produced by a golang compiler, and you want to find out which version of the compiler was used, you can use use the C debugger <em>gdb</em> as follows:
<pre>$ gdb /path/to/binary
[...]
(gdb) p 'runtime.buildVersion'
$1 = 0x5e1d83 "go1.9"
</pre>