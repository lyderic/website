---
title: "Compile lastpass-cli (lpass) for termux"
date: 2017-09-23 16:29:51 +0000 UTC
draft: false
---
<ol>
 	<li>Make sure you have git and some dependencies installed:
<pre>$ pkg install git
$ pkg install libllvm make cmake
$ pkg install pkg-config openssl-dev libcurl-dev libxml2-dev</pre>
</li>
 	<li>Get the lastpass-cli source code from github:
<pre>$ git clone https://github.com/lastpass/lastpass-cli</pre>
</li>
 	<li>Compile:
<pre>$ cd lastpass-cli
$ make</pre>
</li>
 	<li>The executable is located in <strong>./build/lpass</strong></li>
</ol>