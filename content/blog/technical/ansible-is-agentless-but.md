---
title: "Ansible is agentless, but..."
date: 2016-06-23 16:15:02 +0000 UTC
draft: false
---
Ansible is supposed to be agentless. This is great and this is certainly a killer feature.

However, that doesn't mean that there is no requirements on the client side, as I have just found out. I wanted to simply ping a client, like so :
<pre><code>$ ansible remotehost -m ping
remotehost | FAILED! =&gt; {
    "changed": false, 
    "failed": true, 
    "module_stderr": "", 
    "module_stdout": "sh: /usr/bin/python: not foundrn", 
    "msg": "MODULE FAILURE", 
    "parsed": false
}
</code></pre>
Problem: the remotehost machine is a very light Alpine Linux container. <em><strong>Very</strong></em> light. So light that it doesn't have any interpreter : no perl, no php, no ruby... not even python !

So to manage your clients, you have to be prepared to have a big chunk of some interpreter, being ruby (for puppet, for example), or python.

I am not a huge fan of interpreted languages. But if I <em>have</em> to install one, I guess python is not the worst choice. Moreover, it is installed by default on CentOS, Debian, etc. And also, did I mention that Ansible is agentless? ;—)