A simple little web app to echo request headers.

## Usage
```
git clone https://github.com/pallavkothari/node-headers.git
cd node-headers

# set up secret configs into a .env file (for example from an already deployed heroku app)

echo "PORT=4180" >> .env
heroku config:get OAUTH2_PROXY_CLIENT_ID -s  >> .env
heroku config:get OAUTH2_PROXY_CLIENT_SECRET -s  >> .env
heroku config:get OAUTH2_PROXY_COOKIE_SECRET -s  >> .env

# start it up locally as it would on heroku 
heroku local 
```
