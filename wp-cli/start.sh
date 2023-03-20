#!/bin/sh
# when database is ready
until wp db check >/dev/null; do echo 'error checking database.. retry..' && sleep 2; done
# if WEB_PORT isn't specified, don't add colon and just replace to URL.
wp search-replace "$(wp option get siteurl)" "${NEW_SITE_NAME}${WEB_PORT:+:}${WEB_PORT}"
tail -f /dev/null
