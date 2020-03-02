---
title: "Simplified getopt for lua"
summary: " "
date: 2016-11-17 18:34:42 +0000 UTC
draft: false
---
<a href="https://www.lua.org/" target="_blank"><img class="alignleft" src="https://www.lua.org/images/lua.gif" alt="" width="91" height="91" /></a>Lua doesn't include getopt. I have written this very simple implementation. It is actually a simplified version of <a href="http://lua-users.org/wiki/AlternativeGetOpt" target="_blank">AlternativeGetOpt</a>. It is usable but <em>absolutely not user-proof</em>! Good enough for your own scripts though.
<pre>function getopt(o)
  local p = {}
  for k,v in ipairs(arg) do
    if v:byte(1) == 45 then
      local l = v:sub(2,2)
      if o:match(l) then
        p[l] = arg[k+1]
      else
        p[l] = true
      end
    end
  end
  return p
end
</pre>
You can test for example with the following <em>main</em> function:
<pre>function main()
   local opts = getopt("up")
   local user = opts.u and opts.u or "default"
   local pass = opts.p and opts.p or "secret"
   local root = opts.a and true or false
   print(user, pass, root)
end
</pre>
Usage examples:
<pre>$ getopt
default	secret	false
$ getopt -u lyderic
lyderic	secret	false
$ getopt -u lyderic -p password
lyderic	password	false
$ getopt -a -u lyderic -p password
lyderic	password	true
$ getopt -a -u lyderic -w
lyderic	secret	true
</pre>
The full code is on github: <a href="https://github.com/lyderic/scripts/blob/master/getopt.lua" target="_blank">https://github.com/lyderic/scripts/blob/master/getopt.lua</a>
