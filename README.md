
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

A simple little web app to echo request headers.



## Local setup 

```
git clone https://github.com/pallavkothari/node-headers.git
cd node-headers

# install oauth2_proxy locally
brew install go
go get github.com/pallavkothari/oauth2_proxy


# NOTE : replace placeholder values below with real values!

# set up local env 
echo "PORT=4180" >> .env
echo "OAUTH2_PROXY_CLIENT_ID=..." >> .env
echo "OAUTH2_PROXY_CLIENT_SECRET=..." >> .env
echo "OAUTH2_PROXY_COOKIE_SECRET=..." >> .env
echo "PROVIDER=..." >> .env ######## e.g. facebook, github, etc. 
echo "APP=..." >> .env ############# e.g. peaceful-river-83867.herokuapp.com


# start it up locally as it would on heroku 
heroku local 
```

