#!/usr/bin/env bash

set -e 

echo "starting oauth2_proxy..."
oauth2_proxy  \
--http-address=http://:$PORT \
--cookie-secure=false \
--cookie-domain=${COOKIE_DOMAIN} \
--provider="${PROVIDER}" \
--email-domain="*" \
--redirect-url=${APP}/oauth2/callback \
--set-xauthrequest=true \
--upstream=http://127.0.0.1:8080 & 

