---
title: "Debloat docker"
date: 2016-02-11 16:48:44 +0000 UTC
draft: false
---
I recently read about docker wanting to move all their official images from the likes of Debian/Ubuntu/CentOS to Alpine Linux. This is a fantastic idea!

Alpine is very small, it is similar to the busybox image, but it includes a package manager (apk, similar to apt-get and yum) and the distribution provides about 6,000 packages, including openjdk (a must for a Spring developer like me).

The micro images are very easy to use, we go back to the roots of Linux, before systemd, even before sysv ;-) Alpine is now my base image for everything except when I <em>need</em> to have glibc, that is to say when I need to run binaries compiled against it, and it would be too much hassle to recompile against musl (the libc used by Alpine).