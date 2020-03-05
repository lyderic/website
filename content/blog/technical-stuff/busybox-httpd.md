---
title: "Busybox HTTPD"
summary: " "
date: 2016-02-11 16:48:11 +0000 UTC
draft: false
---
<div id="wrap">
<div class="container">

I love busybox. It is super simple to compile, fully customizable. It even includes a web server! These are the steps I took to make it work, from source.

Make sure you have the following packages installed on your machine: git, gcc, make

Clone the repo:
<pre><code>$ git clone git://busybox.net/busybox.git
</code></pre>
Compile the source:
<pre><code>$ cd busybox
$ make defconfig
$ make
</code></pre>
If you have multicore, you can speed up compilation by running (for example if you have 4 cores):
<pre><code>$ make -j 4
</code></pre>
Once done, you have an executable called 'busybox'. Run it and you will see all the commands included. You run a command as follows, for example to open a vi text editor:
<pre><code>$ ./busybox vi
</code></pre>
Now, to run a web server, the command is called <em>httpd</em>. Each command has a short help, called with the --help switch. For httpd:
<pre><code>$ ./busybox httpd --help
BusyBox v1.25.0.git (2016-02-11 12:45:41 GMT) multi-call binary.

Usage: httpd [-ifv[v]] [-c CONFFILE] [-p [IP:]PORT] [-u USER[:GRP]] [-r REALM] [-h HOME]
or httpd -d/-e/-m STRING

Listen for incoming HTTP requests

        -i              Inetd mode
        -f              Don't daemonize
        -v[v]           Verbose
        -p [IP:]PORT    Bind to IP:PORT (default *:80)
        -u USER[:GRP]   Set uid/gid after binding to port
        -r REALM        Authentication Realm for Basic Authentication
        -h HOME         Home directory (default .)
        -c FILE         Configuration file (default {/etc,HOME}/httpd.conf)
        -m STRING       MD5 crypt STRING
        -e STRING       HTML encode STRING
        -d STRING       URL decode STRING
</code></pre>
So, you can launch a web server for example like this:
<pre><code>$ ./busybox httpd -p 8000 -h /path/to/www/pages
</code></pre>
There are many more possibilities, including setting up mime types, running CGI scripts etc. <a href="https://wiki.openwrt.org/doc/howto/http.httpd">More information can be found on the OpenWrt wiki site</a> where the configuration file is explained in details.

<hr />

</div>
</div>
<div></div>
