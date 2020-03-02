---
title: "Veracrypt on ARM"
date: 2017-11-02 14:52:27 +0000 UTC
draft: false
---
These are the steps I took to compile veracrypt on a Scaleway C1 (ARM) machine running Debian Stretch:
<ol>
	<li>Dowloaded and extracted wxWidgets veracrypt's GitHub repository:
<pre>wget https://github.com/veracrypt/VeraCrypt/archive/VeraCrypt_1.21.tar.gz
tar xzvf VeraCrypt_1.21.tar.gz</pre>
</li>
	<li>Dowloaded and extracted wxWidgets from https://www.wxwidgets.org/downloads:
<pre>wget https://github.com/wxWidgets/wxWidgets/releases/download/v3.1.0/wxWidgets-3.1.0.tar.bz2
tar xjvfv3.1.0/wxWidgets-3.1.0.tar.bz2</pre>
</li>
	<li>Installed a couple of dependencies:
<pre> sudo apt install build-essential libfuse-dev pkg-config</pre>
</li>
	<li>Compiled wxWidget (console only):
<pre>cd /path/to/VeraCrypt-VeraCrypt_1.21/src
make -j 4 NOGUI=1 WXSTATIC=1 WX_ROOT=/path/to/wxWidgets-3.1.0 wxbuild
make -j 4 NOGUI=1 WXSTATIC=1</pre>
</li>
	<li>The executable is built in the directory called 'Main'</li>
</ol>