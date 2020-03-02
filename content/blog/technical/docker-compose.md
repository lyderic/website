---
title: "docker-compose"
summary: " "
date: 2016-11-03 15:37:19 +0000 UTC
draft: false
---
I have started to use docker-compose and I really like it.

Some notes :
<ol>
 	<li>It is easy to install. I used this (on CentOS 7):
<pre>$ sudo -i
# curl -L https://github.com/docker/compose/releases/download/1.9.0-rc2/docker-compose-`uname -s`-`uname -m` &gt; /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose</pre>
</li>
 	<li>selinux
I have to disable it on CentOS otherwise haproxy doesn't forward to containers listening on ports TCP/8000+. I run:
<pre>$ sudo -i
# sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux
# cat /etc/sysconfig/selinux</pre>
</li>
</ol>
Next up, I will document how to automate this with ansible.
