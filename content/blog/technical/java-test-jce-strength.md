---
title: "Java: test JCE strength"
date: 2017-11-01 15:35:03 +0000 UTC
draft: false
---
To quickly test if JCE with unlimited strength is activated on your java installation, run this:
<pre>import javax.crypto.Cipher;

class JceTest {
  public static void main(String[] args) {
    try {
      int maxKeyLen = Cipher.getMaxAllowedKeyLength("AES");
      System.out.printf("maxKeyLen=%d%n", maxKeyLen);
      if(maxKeyLen == 2147483647) {
        System.out.println("JCE with unlimited strength activated.");
      } else {
        System.out.println("JCE with unlimited strength NOT activated!");
      }
    } catch (Exception e){
      System.out.println("Sad world :(");
    }
  }
}
</pre>
&nbsp;