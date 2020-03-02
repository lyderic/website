---
title: "git: list all files in a commit"
summary: " "
date: 2017-06-02 06:40:07 +0000 UTC
draft: false
---
To list all the files tracked a commit, run this:

<pre>
git ls-tree --full-tree -r &lt;hash&gt;
</pre>

If you're only interested in the names:

<pre>
git ls-tree --full-tree -r --name-only &lt;hash&gt;
</pre>
