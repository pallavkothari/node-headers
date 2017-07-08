#!/usr/bin/env bash

set -e 

echo "starting oauth2_proxy..."
/app/go/bin/oauth2_proxy  \
--http-address=http://:$PORT \
--cookie-secure=false \
--cookie-domain=peaceful-river-83867.herokuapp.com \
--provider="github" \
--email-domain="*" \
--redirect-url=https://peaceful-river-83867.herokuapp.com/oauth2/callback \
--set-xauthrequest=true \
--upstream=http://127.0.0.1:8080 & 

