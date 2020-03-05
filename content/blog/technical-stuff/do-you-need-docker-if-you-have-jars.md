---
title: "Do you need Docker if you have JARs?"
summary: " "
date: 2016-02-12 16:47:34 +0000 UTC
draft: false
---
I am currently playing a lot with Docker and I really like it, weird as it is for a seasoned sysadmin like me. Once you have solved the init PID1 problem (which is easily done with Alpine and Busybox's init), then Docker is a convincing technology for many use cases.

But I still fail to really appreciate the need for it if all you use are single, fat, executable JARs.

I build all my application as single JARs. The only dependency I have is the JVM and really, it is not too difficult to keep it current accross all your machines, being metal, KVM or OpenVZ, especially with the help of puppet. So... what are the benefits of encapsulating an executable JAR into a Docker container?

If things are carefully designed using technologies like Spring Boot, your micro service fits altogether in one JAR and an appropriate application.properties should suffice to run the beast.

On the other hand, Docker is very well suited for some scenarios. For example if you use python 3 and all the host offers is a python 2 interpreter, if you have separate dependencies and so on.

But as far as JARs are concerned, I will stick to no Docker for the moment.
