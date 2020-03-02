---
title: "git: filter out a file from a branch"
date: 2017-06-02 06:32:54 +0000 UTC
draft: false
---
If you want to completely remove a file from the history of a branch in git, do this:

&nbsp;

<pre>
git filter-branch --index-filter 
'git rm --cached --ignore-unmatch &lt;file&gt;'
</pre>