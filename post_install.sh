#!/bin/sh

./usr/local/migration/remove_lets_encrypt_ca.sh

# Need to make jackett user own /usr/local/share/jackett folder
# this is needed for update to work properly
chown -R jackett /usr/local/share/jackett

# Enable and start service
sysrc jackett_enable=YES
service jackett start
