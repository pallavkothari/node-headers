#!/usr/bin/env bash

set -e 

#echo " starting nginx... "
#./bin/start-nginx & 

echo "starting oauth2_proxy..."
/app/go/bin/oauth2_proxy  \
--cookie-secure=true \
--provider="github" \
--email-domain="*" \
--redirect-url=https://protected-reef-24329.herokuapp.com/oauth2/callback \
--http-address=http://:$PORT \
--set-xauthrequest=true \
--upstream=http://127.0.0.1:8080 & 

