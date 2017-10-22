# 2fa
Simple 2FA API service built on node-red

![Screenshot](/screenshot.png "node-red flow")

Assumes that secret is a base32 encoded string. Compatible with most 2FA providers as of today. Uses similar algorithm to what is in Google Authenticator or Authy apps.

## API
* GET /auth - fetches stored auths
* POST /auth - creates auth. Accepts payload params:
  - secret - Your Authentication Key
  - key - Alias name for the Auth
  - desc - Some Description Text
* GET /auth/:key - retrieves auth token by alias name

## Docker Info
`docker run -p 1880:1880  aleksminaiev/2fa`

Navigate: http://127.0.0.1:1880/


