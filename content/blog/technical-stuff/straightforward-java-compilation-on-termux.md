---
title: "Straightforward java compilation on termux"
summary: " "
date: 2017-09-04 13:07:21 +0000 UTC
draft: false
---
To run java apps on your android device, install <a href="https://termux.com/" target="_blank" rel="noopener">termux</a>, and run the following:
<pre>$ pkg install ecj dx
$ cat &gt; Hello.java &lt;&lt;EOF
public class Hello {
  public static void main(String[] args) {
    System.out.println("Hello world, on termux!");
  }
}
EOF
$ ecj Hello.java
$ dx --dex --output=Hello.dex Hello.class
$ dalvikvm -cp Hello.dex Hello
Hello world, on termux!
</pre>
