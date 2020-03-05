---
title: "Raspberry Pi: attach a serial console"
summary: " "
date: 2017-06-02 20:09:02 +0000 UTC
draft: false
---
<h1>For a Raspberry Pi with GPIO pins (B, B+, 2, 3):</h1>
<ol>
 	<li>Connect as follows:<img class="alignnone " src="https://cdn-learn.adafruit.com/assets/assets/000/035/695/medium800/learn_raspberry_pi_piconsole_bb.png?1473736644" width="370" height="247" /></li>
 	<li>Append this line at the end of <strong>/boot/config.txt</strong>:
<pre>enable_uart=1</pre>
</li>
 	<li>Access the console from your workstation like this:
<pre>sudo screen /dev/ttyUSB0 115200</pre>
</li>
</ol>
<h4>Sources:</h4>
<ul>
 	<li><a href="https://learn.adafruit.com/adafruits-raspberry-pi-lesson-5-using-a-console-cable?view=all" target="_blank" rel="noopener noreferrer">https://learn.adafruit.com/adafruits-raspberry-pi-lesson-5-using-a-console-cable</a></li>
 	<li><a href="https://elinux.org/RPi_Serial_Connection" target="_blank" rel="noopener noreferrer">https://elinux.org/RPi_Serial_Connection</a></li>
</ul>
<h1>For Raspberry Pi without pins (Pi Zero, Pi Zero W):</h1>
<ol>
 	<li>Add the following line at the end of <strong>/boot/config.txt</strong>:
<pre>dtoverlay=dwc2</pre>
</li>
 	<li>Insert the following between '<strong>rootwait</strong>' and '<strong>quiet</strong>' in <strong>/boot/cmdline.txt</strong>:
<pre>modules-load=dwc2,g_serial</pre>
</li>
 	<li>Mount the linux part of the Pi SD card and add the following lines at the end of <strong>/etc/rc.local, before 'exit 0'</strong>:
<pre>usbconsole="getty@ttyGS0.service"
if [ ! $(systemctl is-enabled "${usbconsole}") ]
then
echo "Enabling and starting ttyGS0 console..."
systemctl enable "${usbconsole}"
systemctl start "${usbconsole}"
fi</pre>
</li>
 	<li><span style="font-size:1rem;">Connect a micro usb cable into the socket market '</span><strong style="font-size:1rem;">USB</strong><span style="font-size:1rem;">' on the Pi, </span><del style="font-size:1rem;">not the one marked 'PWR'</del><span style="font-size:1rem;">.</span></li>
 	<li>On your workstation, console can be accessed as:
sudo screen /dev/ttyACM0 115200</li>
</ol>
<strong>Sources:</strong>
<ul>
 	<li><a href="https://learn.adafruit.com/turning-your-raspberry-pi-zero-into-a-usb-gadget/serial-gadget" target="_blank" rel="noopener">https://learn.adafruit.com/turning-your-raspberry-pi-zero-into-a-usb-gadget/serial-gadget</a></li>
 	<li><a href="https://0pointer.de/blog/projects/serial-console.html" target="_blank" rel="noopener">https://0pointer.de/blog/projects/serial-console.html</a></li>
</ul>
