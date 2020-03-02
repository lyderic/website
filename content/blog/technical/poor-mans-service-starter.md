---
title: "Poor Man's Service Starter"
date: 2016-03-07 16:45:34 +0000 UTC
draft: false
---
There are situations where there is no easy init system on a box. Most of the time, it is because we are dealing with cheap VPSes which don't even have enough memory to run systemd. However, you want to do a simple and straightforward thing : start a light service.

sysvinit is a very good service starter, but not really suitable as far as user services are concerned. You wouldn't start your HTTPD by putting an entry in /etc/inittab. You could write rc scripts, which time consuming if you want to do things right. Or, you could install so-called <a href="http://en.wikipedia.org/wiki/Process_supervision">service managers a.k.a. process supervisors</a>. But there is a simpler solution : use plain old cron.

In a crontab, instead of the "5-star" field, use "@reboot" and you're done. For example :
<pre><code>$ crontab -l
@reboot /path/to/service
</code></pre>
Please note that it works very well on Red Hat and associated distros (CentOS...) But it seems not to be the case in other environments. Anyway, give it a try!