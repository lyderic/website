---
title: "git from source on Centos 7"
date: 2016-11-12 13:21:48 +0000 UTC
draft: false
---
<img class=" aligncenter" src="https://rajivpandit.files.wordpress.com/2013/09/git-logo.png?w=614" alt="" width="324" height="135" />

As for many packages, git is fairly old on CentOS 7. The version they provide lacks a feature that I rely on, namely the <em>-C</em> switch, to be able to call git anywhere, without having to <em>cd</em> to the git directory first.

These are the steps I took to build git on CentOS 7:
<pre>yum -y install gcc make gettext-devel openssl-devel perl-devel curl-devel expat-devel
curl https://www.kernel.org/pub/software/scm/git/git-2.10.2.tar.gz | tar xzf -
cd git-2.10.2
make prefix=/usr/local -j $(nproc)
make install prefix=/usr/local
git --version
</pre>