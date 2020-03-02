---
title: "Git encryption that works"
summary: " "
summary: " "
date: 2018-06-05 11:09:47 +0000 UTC
draft: false
---
Intructions on git encryption are to found around the web, some don't work, some are too difficult. The following works for me. Make sure you understand what you're doing if you decide to use it. All thanks, kudos, merit and attribution <a href="https://gist.github.com/shadowhand/873637" target="_blank" rel="noopener">to this excellent post</a>.
<ol>
	<li>Make sure git and openssl are installed and working on your system</li>
	<li>Create a directory in $HOME:
<pre>mkdir ~/.gitencrypt</pre>
</li>
	<li>Make it accessible only to user
<pre>chmod 0700 ~/.gitencrypt</pre>
</li>
	<li>Create the 3 following files in this directory:
<pre>cat &gt; ~/.gitencrypt/clean_filter_openssl &lt;&lt;EOF
#!/bin/sh
SALT=
PASSWORD=
openssl enc -base64 -aes-256-ecb -S $SALT -k $PASSWORD
EOF
cat &gt; ~/.gitencrypt/diff_filter_openssl &lt;&lt;EOF
#!/bin/sh
PASSWORD=
openssl enc -d -base64 -aes-256-ecb -k $PASSWORD -in "" 2&gt; /dev/null || cat ""
EOF
cat &gt; ~/.gitencrypt/smudge_filter_openssl &lt;&lt;EOF
#!/bin/sh
PASSWORD=
openssl enc -d -base64 -aes-256-ecb -k $PASSWORD 2&gt; /dev/null || cat
EOF</pre>
</li>
	<li>Make these 3 files executable:
<pre>chmod +x ~/.gitencrypt/*</pre>
</li>
	<li>Generate a random, 24-hex characters salt and a random password, and set them in the files created above:
<pre>RANDOM_SALT=$(tr -dc 'A-F0-9' &lt; /dev/urandom | head -c16)
RANDOM_PASSWORD=$(tr -dc 'A-Za-z0-9' &lt; /dev/urandom | head -c18)
sed -i -e "s/SALT=/SALT=${RANDOM_SALT}/" ~/.gitencrypt/*
sed -i -e "s/PASSWORD=/PASSWORD=${RANDOM_PASSWORD}/" ~/.gitencrypt/*</pre>
</li>
	<li>Create a git repository:
<pre>mkdir repos
cd repos
git init</pre>
</li>
	<li>Append lines to .git/config:
<pre>cat &gt;&gt; .git/config &lt;&lt;EOF

[filter "openssl"]
    smudge = ~/.gitencrypt/smudge_filter_openssl
    clean = ~/.gitencrypt/clean_filter_openssl
[diff "openssl"]
    textconv = ~/.gitencrypt/diff_filter_openssl
EOF</pre>
</li>
	<li>Add a .gitattributes file
<pre>cat &gt; .gitattributes &lt;&lt;EOF
* filter=openssl diff=openssl
[merge]
renormalize=true
EOF</pre>
</li>
	<li>Now all commits will be encrypted.</li>
</ol>
