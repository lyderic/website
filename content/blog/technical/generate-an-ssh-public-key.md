---
title: "Generate an SSH public key"
date: 2017-08-06 06:03:17 +0000 UTC
draft: false
---
If all you have is an SSH private key and you need to generate a public key out of it, you can run the following:

<pre>
ssh-keygen -y -f yoursshkey
</pre>

It will spit out the public key on the standard output.