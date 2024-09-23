#!/bin/bash
   
   service mysql start
   
   mysql --execute="CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}; \
   CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'localhost' IDENTIFIED WITH mysql_native_password BY '${MYSQL_PASSWORD}'; \
   GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'localhost'; \
   FLUSH PRIVILEGES;"
   
   su - hexvault -c "/opt/hexvault/vault_server -f /opt/hexvault/hexvault.conf -d /opt/hexvault/files --recreate-schema"
   su - hexvault -c "/opt/hexvault/vault_server -f /opt/hexvault/hexvault.conf -d /opt/hexvault/files -c /opt/hexvault/hexvault.crt -k /opt/hexvault/hexvault.key" &
   
   su - lumina -c "/opt/lumina/lumina_server_teams -f /opt/lumina/lumina.conf --recreate-schema"
   su - lumina -c "/opt/lumina/lumina_server_teams -f /opt/lumina/lumina.conf -c /opt/lumina/lumina.crt -k /opt/lumina/lumina.key -p 65432"