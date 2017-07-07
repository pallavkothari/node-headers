#!/usr/bin/env bash

set -e 

echo "grabbing oauth2_proxy..."

go get github.com/pallavkothari/oauth2_proxy 

echo "got it"

echo "starting oauth2_proxy..."
/app/go/bin/oauth2_proxy  \
--cookie-secure=true \
--provider="github" \
--email-domain="*" \
--http-address=127.0.0.1:8080 \
--upstream=http://localhost:8081
