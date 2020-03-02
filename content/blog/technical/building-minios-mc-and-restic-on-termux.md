---
title: "Building minio's mc and restic on termux"
date: 2017-09-07 13:50:11 +0000 UTC
draft: false
---
If you use the binaries provided by minio and restic to run the 'mc' and 'restic' commands on android's termux, it won't work, due to restriction on DNS resolution, you need to build them yourself.

This is how to do it:
<h1>MC</h1>
<pre>$ go get -d github.com/minio/mc
$ cd $HOME/go/src/github.com/minio/mc
$ GOPATH=$HOME/go make
</pre>
<h1>RESTIC</h1>
<pre>$ git clone https://github.com/restic/restic
$ cd restic
$ go run build.go -v --enable-cgo
</pre>