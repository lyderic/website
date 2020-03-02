---
title: "How to build Xerial's sqlite JDBC driver on Alpine Linux"
summary: " "
date: 2017-03-31 15:48:50 +0000 UTC
draft: false
---
These are the steps I took to build the sqlite JDBC driver so that it works on a musl-based Linux distro, namely Alpine Linux.
<ol>
 	<li>Install a couple of dependencies:
<pre># apk update &amp;&amp; apk upgrade
# apk add git gcc make openjdk8 maven
# apk add perl curl unzip bash musl-dev</pre>
</li>
 	<li>Set up JAVA_HOME:
<pre># export JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk</pre>
</li>
 	<li>Clone sqlite-jdbc repository:
<pre># git clone https://github.com/xerial/sqlite-jdbc.git</pre>
</li>
 	<li>Build the shared object library and the JNI bindings:
<pre># cd sqlite-jdbc
# make jni-header native</pre>
</li>
 	<li>Build the JAR (some tests don't pass, you have to skip them):
<pre># mvn -Dmaven.test.skip=true package</pre>
</li>
 	<li>The jar that is produced is in the target directory:
<pre># ls target/sqlite-jdbc*
target/sqlite-jdbc-3.16.2-SNAPSHOT.jar</pre>
</li>
 	<li>To use it in a gradle build, mkdir a <strong>lib</strong> directory in your gradle project, copy into it the jar that was built as above and add the following compile line to <strong>build.gradle</strong>:
<pre>compile fileTree(dir: 'lib', include: '**/*.jar')</pre>
</li>
</ol>
