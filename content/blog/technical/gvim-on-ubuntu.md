---
title: "gvim on Ubuntu"
date: 2016-11-12 18:39:25 +0000 UTC
draft: false
---
<img class="aligncenter" src="https://avatars3.githubusercontent.com/u/11452312?v=3&amp;s=400" alt="" width="85" height="85" />I set up this script to build gvim on Ubuntu. It presuppose that you <em>git cloned</em> the vim sources in /opt/src/vim.
<pre>#!/bin/sh

sudo apt-get update &amp;&amp; sudo apt-get upgrade

sudo apt-get install libncurses5-dev libgnome2-dev  
  libgnomeui-dev libgtk2.0-dev libatk1.0-dev 
  libbonoboui2-dev libcairo2-dev libx11-dev 
  libxpm-dev libxt-dev

cd /opt/src/vim
make distclean
sudo make uninstall
git pull

./configure --with-compiledby=lyderic
  --with-features=huge --enable-luainterp 
  --with-lua-prefix=/usr/local 
  --enable-fail-if-missing --enable-gui=gnome2

make -j $(nproc)
sudo make install
</pre>