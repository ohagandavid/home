#!/bin/sh
curl -o /tmp/magicredirect.html http://www.google.com
redirect_MAGIC=`sed -n '/href/s/.*href="\([^"]\+\).*/\1/p' /tmp/magicredirect.html`
curl -o /tmp/magicform.html $redirect_MAGIC
MAGIC=`echo $redirect_MAGIC | sed -n '/fgtauth/s/.*fgtauth?\([^"]\+\).*/\1/p'`
redirect=`echo $redirect_MAGIC | sed -n '/http/s/http:\/\/\([^/]\+\).*/\1/p'`
firewall_USERNAME=`sed -n '/username/s/username=\(.*\+\).*/\1/p' /home/david/.smbcredentials`
firewall_PASSWORD=`sed -n '/password/s/password=\(.*\+\).*/\1/p' /home/david/.smbcredentials`

curl -d username=$firewall_USERNAME -d password=$firewall_PASSWORD -d magic=$MAGIC $redirect

rm /tmp/magicredirect.html
rm /tmp/magicform.html
