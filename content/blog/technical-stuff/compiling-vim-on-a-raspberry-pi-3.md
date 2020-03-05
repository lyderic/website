---
title: "Compiling vim on a Raspberry Pi 3"
summary: " "
date: 2016-03-02 16:46:07 +0000 UTC
draft: false
---
Just for the fun of it and in order to test my newly acquired Raspberry Pi 3, I ran the compilation of vim on it to see how its quad-core arm 64-bit processor compares to my main PC Core i5.

For reference, this is the set of commands I ran on both machines :
<pre><code>$ git clone https://github.com/vim/vim
$ cd vim/src
$ ./configure --prefix=/opt/vim --with-compiledby=lyderic --with-features=huge
$ time make -j 4
</code></pre>
On the Intel Core i5 PC, this took 33 ½ seconds. It is not a super fast CPU but a low-power i5-5250U that runs at 1.60GHz (my desktop is an Intel NUC).

On the Raspberry Pi, the compilation was achieved in a little more than 2 minutes.

That said, I found that running the Raspberry Pi as a desktop computer, although not as smooth as a current desktop PC, is convincing. It was not really usable until the last iteration (Model B 2), but now, it seems to be there.
