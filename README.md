
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

A simple little web app to echo request headers.

## Usage
```
git clone https://github.com/pallavkothari/node-headers.git
cd node-headers

heroku create 
heroku buildpacks:add https://github.com/pallavkothari/heroku-buildpack-oauth2-proxy

# install oauth2_proxy locally
brew install go
go get github.com/pallavkothari/oauth2_proxy


# NOTE : replace "..." everywhere below with real values!

# set up local env 
echo "PORT=4180" >> .env
echo "OAUTH2_PROXY_CLIENT_ID=..." >> .env
echo "OAUTH2_PROXY_CLIENT_SECRET=..." >> .env
echo "OAUTH2_PROXY_COOKIE_SECRET=..." >> .env

# tell heroku about them too
heroku config:set OAUTH2_PROXY_CLIENT_ID=...
heroku config:set OAUTH2_PROXY_CLIENT_SECRET=...
heroku config:set OAUTH2_PROXY_COOKIE_SECRET=...

# start it up locally as it would on heroku 
heroku local 
```
