---
title: "Busybox httpd with basic auth"
date: 2018-11-09 11:21:37 +0000 UTC
draft: false
---
For very simple websites, nothing beats running 'busybox httpd'.

To build it, download the latest source from: <a href="https://busybox.net/downloads/" target="_blank" rel="noopener">https://busybox.net/downloads/</a>

To compile:
<pre>make defconfig
make</pre>
To run with basic authentication:
<ol>
	<li>Find out the hash of the password you want to use, for example, if
you want to use the password 'secret':
<pre>$ busybox httpd -m secret
$1$gDqyrCR.$6MSG2JC9CBWRNypWVfuC81</pre>
</li>
	<li>Add the login information to your httpd.conf file. For example, to use user 'fred':
<pre>echo '/:fred:$1$gDqyrCR.$6MSG2JC9CBWRNypWVfuC81' &gt; httpd.conf</pre>
</li>
	<li>Start busybox httpd as follows:
<pre>busybox httpd -v -f -p 5005 -r "Identify yourself:" -c httpd.conf</pre>
Options used:
-v: be verbose
-f: stay in foreground (don't daemonize)
-p: port number
-r: authentication realm (i.e. string you want to show the users)
-c: configuration file</li>
</ol>