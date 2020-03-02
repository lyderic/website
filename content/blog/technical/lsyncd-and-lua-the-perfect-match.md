---
title: "lsyncd and lua, the perfect match"
date: <nil>
draft: false
---
lsync allows to keep one or more slave directories in sync with a master directory. Well it is its primary goal indeed.

However, with the power of lua, one can turn this tools into a very powerful and easy to set up directory monitor.

Here a very basic example. With this config, we monitor "/path/to/dir" and we log to a file (/file/report) any creation of file into /path/to/dir or one of its subdirectories.