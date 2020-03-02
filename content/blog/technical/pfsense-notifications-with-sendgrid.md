---
title: "pfSense notifications with Sendgrid"
date: 2016-04-08 16:23:47 +0000 UTC
draft: false
---
To have your pfSense device send you email notifications, you can configure it like so:
<h4>1. Create yourself a Sendgrid account on <a href="https://sendgrid.com/">sendgrid.com</a></h4>
<h4>2. In pfSense (I currently use version 2.2.6), go to:</h4>
<pre><code>System &gt; Advanced &gt; Notifications (tab)
</code></pre>
<h4>3. Set up the 'SMTP E-Mail' section as follows:</h4>
<ul>
 	<li>E-Mail server: smtp.sendgrid.net</li>
 	<li>SMTP Port of E-Mail server: 465</li>
 	<li>Secure SMTP Connection: check the box entitled: 'Enable SMTP over SSL/TLS'</li>
 	<li>Put whatever you want and need in the field 'From e-mail address'</li>
 	<li>Notification E-Mail address: This is the address the notifications emails should be sent to</li>
 	<li>Your Sendgrid credentials are to go to the fields: 'Notification E-Mail auth username (optional)' and 'Notification E-Mail auth password'</li>
 	<li>Notification E-Mail auth mechanism: PLAIN</li>
</ul>
You can test by pressing the button 'Test SMTP' (duh!) and you can see the completion in the logs (Status &gt; System Logs).