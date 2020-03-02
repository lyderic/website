---
title: "vim with lua"
date: 2016-11-07 17:15:47 +0000 UTC
draft: false
---
This is a log of the steps I took to compile vim with lua support. I wrapped everything up in a script that I called 'luavim'. I have tested it on CentOS/RedHat, Debian/Ubuntu and Alpine Linux.

Dependencies are:
- <strong>Libraries</strong>: libreadline, libcurses, glibc/musl
- <strong>Packages</strong>: git, gcc, make

To install the dependencies for <strong>Alpine Linux</strong>, you can run:
<pre># apk add musl-dev git gcc make readline-dev ncurses-dev
</pre>
To install the dependencies for <strong>Debian/Ubuntu</strong>, you can run:
<pre># apt install gcc make libreadline-dev libncurses-dev
</pre>
To install the dependencies for <strong>CentOS/RedHat</strong>, you can run:
<pre># yum install git gcc make readline-devel ncurses-devel
</pre>
Everything gets installed into /usr/local. The user running this script must have sudo.

This is the script:
<pre>#!/bin/sh

operator=$(whoami)
srcdir=/opt/src

main() {

   if [ -z $1 ]
   then
      usage
   fi

   init

   case "$1" in
      a) buildlua; buildvim ;;
      l) buildlua ;;
      v) buildvim ;;
      r) reset ;;
      *) echo "invalid"; usage ;;
   esac
}

init() {
   if [ ! -d ${srcdir} ]
   then
      sudo mkdir -pv ${srcdir}
   fi
   sudo chown -R ${operator} ${srcdir}
}

buildlua() {

   cd ${srcdir}
   if [ ! -d lua ]
   then
      echo "Cloning github lua repository..."
      git clone https://github.com/lua/lua.git
   fi

   cd ${srcdir}/lua
   make clean
   git pull
   sudo make uninstall

   make linux -j 4
   sudo make install

   lua -v

}

buildvim() {

   cd ${srcdir}
   if [ ! -d vim ]
   then
      echo "Cloning github lua repository..."
      git clone https://github.com/vim/vim.git
   fi
   
   cd ${srcdir}/vim
   make clean
   git pull

   ./configure 
   --with-compiledby=lyderic 
   --with-features=huge 
   --enable-luainterp 
   --with-lua-prefix=/usr/local 
   --enable-fail-if-missing

   sudo make uninstall
   make -j 4
   sudo make install

}

reset() {
   cd ${srcdir}/lua
   sudo make uninstall
   cd ${srcdir}/vim
   sudo make uninstall
   sudo rm -rfv ${srcdir}
}

usage() {
   echo "Usage: $(basename $0) "
   echo "Actions:"
   echo " a  build lua and vim"
   echo " l  build lua only"
   echo " v  build vim only"
   echo " r  wipes everything"
   exit 2
}

main $@
</pre>