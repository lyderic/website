---
title: "Easy way to activate unlimited JCE in java"
summary: " "
date: 2017-11-01 15:42:44 +0000 UTC
draft: false
---
Since java 1.8.0_152, it has become very easy to activate JCE with unlimited strength. Simply uncomment the following line in <strong>/path/to/jdk/jre/lib/security/java.security</strong>:
<pre>crypto.policy=unlimited</pre>
