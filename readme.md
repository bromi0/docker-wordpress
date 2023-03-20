1. Create .env file with following parameters:

DB_ROOT_PASSWORD=
DB_NAME=wordpress
DB_USER=wordpress
DB_PASSWORD=
SITE= prefix for the container naming

NEW_SITE_NAME = for the /wp-cli/start.sh script, to replace URIs in database.
The service 'wp-cli' will run script on the start of the container.

WEB_PORT= where to we change wordpress site_URL.
This is mostly for the local develpoment, when you want to start multiple sites.
In production, probably wordpress itself should expect 80/443 port as usual, so leave this out.
But if you have reverse proxy, and nginx container is behind it on some other port,
use [NGINX_PORT] parameter

NGINX_PORT= port where docker will map nginx container. Useful for running behind reverse proxy.

2. Add database backup to the ./db-init folder if you want. It will initialize database with it.

3. In Production, create/populate ./src/uploads folder with appropriate permissions.