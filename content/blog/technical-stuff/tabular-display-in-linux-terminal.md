---
title: "Tabular display in Linux terminal"
summary: " "
date: 2016-03-15 16:46:36 +0000 UTC
draft: false
---
A command I like in Linux is 'column'. It allows the display of ordered data (typically CSV) in a tabular way in the Linux terminal.

For example, assume you have the following file:
<pre><code>$ cat data
server|location|usage
mars.example.com|New York|web
saturn.example.com|Beijing|database
mercury.example.com|Sidney|nosql
</code></pre>
You can display this file nicely as follows:
<pre><code>$ column -t -s '|' data
server               location  usage
mars.example.com     New York  web
saturn.example.com   Beijing   database
mercury.example.com  Sidney    nosql
</code></pre>
<em>-t</em> indicates that we want tabular display and <em>-s</em> specifies the separator we use. I like to use the pipe ('|') as data separator, but usually the semi colon (';') is used for CSV data.
