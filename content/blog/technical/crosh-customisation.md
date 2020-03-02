---
title: "crosh customisation"
summary: " "
date: 2017-01-20 15:13:57 +0000 UTC
draft: false
---
On a chromebook, one can customise the terminal as follows. This is very handy used in conjunction with CLI crouton, to have a nice command line.
<ul>
 	<li>Open the command line: <strong>Ctrl</strong>-<strong>Alt</strong>-<strong>T</strong></li>
 	<li>Open the Javascript console: <strong>Ctrl</strong>-<strong>Shift</strong>-<b>J</b></li>
 	<li>Enter a setting by typing: <em>term_.prefs_.set('key', 'value');</em>
<h3>Possible keys with examples:</h3>
</li>
 	<li>Disable audible bell:
&gt; <strong>term_.prefs_.set('audible-bell-sound', '');</strong></li>
 	<li>Hide scrollbar:
&gt; <strong>term_.prefs_.set('scrollbar-visible', false);</strong></li>
 	<li>Set background to solarized dark:
&gt; <strong>term_.prefs_.set('background-color', "white");</strong></li>
 	<li>Set foreground to solarized dark:
&gt; <strong>term_.prefs_.set('foreground-color', "black");</strong></li>
 	<li>Change font size permanently for all terminals:
&gt; <strong>term_.prefs_.set('font-size', 20);</strong></li>
 	<li>Change font size as one-off for current terminal:
<strong>Ctrl</strong>-<strong>+</strong> or <strong>Ctrl</strong>-<strong>-</strong></li>
 	<li>If you screw up and you want to start again:
&gt; <strong>term_.prefs_.resetAll();</strong></li>
</ul>
<h3>Useful snippets ready to copy/paste:</h3>
<h4>Solarized Light colors:</h4>
<pre>console.log("Solarized Light");
term_.prefs_.set('background-color', "#fdf6e3");
term_.prefs_.set('foreground-color', '#586e75');
</pre>
<h4>Solarized Dark colors:</h4>
<pre>console.log("Solarized Dark");
term_.prefs_.set('background-color', "#002b36");
term_.prefs_.set('foreground-color', '#93a1a1');
</pre>
<h4>No scrollbar, no bell, decent font size:</h4>
<pre>console.log("Lyderic's defaults");
term_.prefs_.set('audible-bell-sound', '');
term_.prefs_.set('scrollbar-visible', false);
term_.prefs_.set('font-size', 20);
</pre>

You can find additional information <a href="https://github.com/davidben/mosh-chrome/blob/master/chromeapps/hterm/doc/faq.txt" target="_blank">on the crosh FAQ page</a>.
