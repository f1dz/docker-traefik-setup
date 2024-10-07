Setup
============

### Automatic
Run this command to create required files at once (Linux & MacOS only):
```sh
make init
```

### Manual
Copy `.env-example` to `.env` and change the parameters as you wish. To generate the password hash you can use online file generator [here](https://bcrypt-generator.com).

Create logs file
```sh
touch ./data/logs/access.log ./data/logs/traefik.log
```
Copy `.env`
```sh
cp ./.env-example ./.env;
```
Create network on Docker if you don't have one
```sh
docker network create proxy
```

Certificates
============
Enable certificates for trusted local development

Linux/MacOS
------------
```sh
mkcert -cert-file certs/local-cert.pem -key-file certs/local-key.pem "traefik.local" "petshop.local"
```

Windows
------------
Please read the instruction [here](https://github.com/FiloSottile/mkcert)

To add more domain, simply put another domains at the end of the line then restart the Traefik container. If restarting teh service doesn't work to initiate the new certificates, try to stop then start the service again.

Run/Stop
=============
Run the service suing this command
```sh
docker compose up -d
```
And to stop the service run this command
```sh
docker compose down
```