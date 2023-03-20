# Instructions

### Setting up Environment Variables

To get started, create a `.env` file in the project directory with the following parameters:

- `DB_ROOT_PASSWORD`: Password for the root user of the MySQL database.
- `DB_NAME`: Name of the WordPress database.
- `DB_USER`: Username for the WordPress database.
- `DB_PASSWORD`: Password for the WordPress database user.
- `SITE`: Prefix for the container naming.

Additionally, you can set the following optional variables:

- `NEW_SITE_NAME`: A name for the WordPress site that will be used in the `./wp-cli/start.sh` script to replace URIs in the database. The `wp-cli` service will run this script on container startup.
- `WEB_PORT`: The port number where WordPress site URL can be accessed during local development. This is useful when running multiple sites on the same machine. This is not necessary in production environments where WordPress should expect 80/443 ports as usual. However, if you are running the nginx container behind a reverse proxy on a different port, use the NGINX_PORT parameter.
- `NGINX_PORT`: The port number where we will map the `web` service (nginx). This is useful when running behind a reverse proxy.

### Adding a Database Backup

If you have a database backup, you can add it to the `./db-init` folder. The backup will be used to initialize the database.

### Setting up Production

If you're setting up for production, create and populate the `./src/uploads` folder with the appropriate permissions.