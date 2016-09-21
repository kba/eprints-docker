#!/bin/bash
# useradd eprints
# chown -R eprints:eprints /opt/eprints3
cd /opt/eprints3
sudo -u eprints expect install.expect
echo 'Include /opt/eprints3/cfg/apache.conf' >> /etc/apache2/sites-enabled/000-default.conf
service apache2 start
