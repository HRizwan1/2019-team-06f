#!/bin/bash 
set -e
set -v


# http://superuser.com/questions/196848/how-do-i-create-an-administrator-user-on-ubuntu
# http://unix.stackexchange.com/questions/1416/redirecting-stdout-to-a-file-you-dont-have-write-permission-on
# This line assumes the user you created in the preseed directory is vagrant
echo "%admin  ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers.d/init-users
sudo groupadd admin
sudo usermod -a -G admin vagrant


# Installing vagrant keys
wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub'
#sudo mkdir -p /home/vagrant/.ssh
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
cat ./vagrant.pub >> /home/vagrant/.ssh/authorized_keys
sudo chown -R vagrant:vagrant /home/vagrant/.ssh/authorized_keys
echo "All Done!"

#http://www.fail2ban.org/wiki/index.php/MANUAL_0_8#Jails
sudo sed -i "s/bantime = 600/bantime = -1/g" /etc/fail2ban/jail.conf
sudo systemctl enable fail2ban
sudo service fail2ban restart

# set the /etc/hosts file to match hostname
echo "$WEBSERVERIP     ws  ws.sat.iit.edu" | sudo tee -a /etc/hosts

# enable and allow ports in firewall
# https://serverfault.com/questions/790143/ufw-enable-requires-y-prompt-how-to-automate-with-bash-script
ufw --force enable
ufw allow proto tcp to 0.0.0.0/0 port 22
ufw allow proto tcp to 0.0.0.0/0 port 80
ufw allow proto tcp to 0.0.0.0/0 port 443
ufw allow proto tcp to 0.0.0.0/0 port 3000
ufw allow proto tcp to 0.0.0.0/0 port 9090
ufw allow proto tcp to 0.0.0.0/0 port 9100


#Install apache2 webserver
sudo apt-get update
sudo apt-get install -y apache2 mariadb-client php7.0 libapache2-mod-php7.0 php7.0-mysql

# chown the cloned github repo files so the user owns it 
sudo chown -R vagrant:vagrant ~/jhajek
# copying the php code to the /var/www/html directory to serve php files
sudo cp ./jhajek/itmt-430/db-samples/*.php /var/www/html

# include statement to place values into an include file for the connection string in test-select.php
# https://unix.stackexchange.com/questions/4335/how-to-insert-text-into-a-root-owned-file-using-sudo
echo "<?php" | sudo tee -a /var/www/html/connection-info.php
echo "\$endpoint=\"$DATABASEIP\";  // this is the public IP of the database server" | sudo tee -a /var/www/html/connection-info.php
echo "\$user=\"$DATABASEUSERNAME\"; //this is the same username that you created in the create-user-with-grants.sql file, change this from root as root is not allowed to make remote connections at all in mysql anymore" | sudo tee -a /var/www/html/connection-info.php
echo "\$password=\"$USERPASS\";  //this is the password that you entered in the create-user-with-grants.sql file after the IDENTIFIED BY string" | sudo tee -a /var/www/html/connection-info.php
echo "\$dbname=\"$DATABASENAME\"; //this is the name of the database you created in create.sql -- store if you keep the default setting" | sudo tee -a /var/www/html/connection-info.php 
echo "?>" | sudo tee -a /var/www/html/connection-info.php

# Create Ubuntu 16.04 Self-Signed Cert for Apache2
# https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-16-04

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt -subj "/C=US/ST=Illinois/L=Chicago/O=Illinois Institute of Technology/OU=Team True/CN=$WEBSERVERIP"
# While we are using OpenSSL, we should also create a strong Diffie-Hellman group, which is used in negotiating Perfect Forward Secrecy with clients.
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
# To set up Apache SSL securely, we will be using the recommendations by Remy van Elst on the Cipherli.st site
sudo mv ssl-params.conf /etc/apache2/conf-available/ssl-params.conf
# Backup the original SSL Virtual Host File
sudo mv /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf.bak
# Modify the Default Apache SSL Virtual Host File
sudo mv default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
sudo sed -i -e 's/server_domain_or_IP/'$WEBSERVERIP'/g' /etc/apache2/sites-available/default-ssl.conf
sudo sed -i -e 's/your_email@example.com/hrizwan1@hawk.iit.edu/g' /etc/apache2/sites-available/default-ssl.conf
# Modify the Unencrypted Virtual Host File to Redirect to HTTPS
sudo sed -i '/DocumentRoot/aRedirect permanent "/" "https://'$WEBSERVERIP'/"' /etc/apache2/sites-available/000-default.conf
# Allow the "Apache Full" profile
sudo ufw allow 'Apache Full'
# We can enable mod_ssl, the Apache SSL module, and mod_headers, needed by some of the settings in our SSL snippet, with the a2enmod command:
sudo a2enmod ssl
sudo a2enmod headers
# We can enable our SSL Virtual Host with the a2ensite command:
sudo a2ensite default-ssl
# We will also need to enable our ssl-params.conf file, to read in the values we set:
sudo a2enconf ssl-params

# Enable the service and start the service
sudo systemctl enable apache2
sudo systemctl restart apache2

# Change permissions of /var/www/html
sudo chmod 777 -R /var/www/html

# Remove all old files from /var/www/html
rm -rf /var/www/html/*

# Copy team repo files to /var/www/html
cp -r 2019-team-06f/code/* /var/www/html

# Database information passed from variables file into server.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/server.php
sudo sed -i -e 's/$DATABASESLAVEIP/'$DATABASESLAVEIP'/g' /var/www/html/server.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/server.php

# Salt passed from the variables file into server.php
sudo sed -i -e 's/insertsalthere/'$SALT'/g' /var/www/html/server.php

# Database information passed from variables file into db.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/db.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/db.php

# Database information passed from variables file into user/listImages.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/user/listImages.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/user/listImages.php

# Database information passed from variables file into user/recentphotos.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/user/recentphotos.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/user/recentphotos.php

# Database information passed from variables file into admin/searchresults.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/admin/searchresults.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/admin/searchresults.php

# Database information passed from variables file into user/searchresults.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/user/searchresults.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/user/searchresults.php

# Database information passed from variables file into user/upload.php
sudo sed -i -e 's/$DATABASEIP/'$DATABASEIP'/g' /var/www/html/user/upload.php
sudo sed -i -e 's/$USERPASS/'$USERPASS'/g' /var/www/html/user/upload.php

# Create these two users, and use the --no-create-home and --shell /bin/false options so that these users can't log into the server.
sudo useradd --no-create-home --shell /bin/false prometheus
sudo useradd --no-create-home --shell /bin/false node_exporter

# Following standard Linux conventions, we'll create a directory in /etc for Prometheus' configuration files and a directory in /var/lib for its data.
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus

# Now, set the user and group ownership on the new directories to the prometheus user.
sudo chown prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus

# First, download and unpack the current stable version of Prometheus into your home directory.
(cd ~; curl -LO https://github.com/prometheus/prometheus/releases/download/v2.0.0/prometheus-2.0.0.linux-amd64.tar.gz)

# Next, use the sha256sum command to generate a checksum of the downloaded file
sha256sum prometheus-2.0.0.linux-amd64.tar.gz
# Compare the output from this command with the checksum on the Prometheus download page to ensure that your file is both genuine and not corrupted.
# Output e12917b25b32980daee0e9cf879d9ec197e2893924bd1574604eb0f550034d46  prometheus-2.0.0.linux-amd64.tar.gz

# Now, unpack the downloaded archive.
tar xvf prometheus-2.0.0.linux-amd64.tar.gz

# Copy the two binaries to the /usr/local/bin directory.
sudo cp prometheus-2.0.0.linux-amd64/prometheus /usr/local/bin/
sudo cp prometheus-2.0.0.linux-amd64/promtool /usr/local/bin/

# Set the user and group ownership on the binaries to the prometheus user created in Step 1.
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool

# Copy the consoles and console_libraries directories to /etc/prometheus.
sudo cp -r prometheus-2.0.0.linux-amd64/consoles /etc/prometheus
sudo cp -r prometheus-2.0.0.linux-amd64/console_libraries /etc/prometheus

# Set the user and group ownership on the directories to the prometheus user. Using the -R flag will ensure that ownership is set on the files inside the directory as well.
sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries

# Lastly, remove the leftover files from your home directory as they are no longer needed.
rm -rf prometheus-2.0.0.linux-amd64.tar.gz prometheus-2.0.0.linux-amd64

# Move prometheus.yml and change permissions
sudo mv prometheus.yml /etc/prometheus/prometheus.yml
sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml
sudo chmod 644 /etc/prometheus/prometheus.yml

# Move prometheus.service and change permissions
sudo mv prometheus.service /etc/systemd/system/prometheus.service
sudo chown root:root /etc/systemd/system/prometheus.service
sudo chmod 644 /etc/systemd/system/prometheus.service

# To use the newly created service, reload systemd.
sudo systemctl daemon-reload

# You can now start Prometheus using the following command:
sudo systemctl start prometheus

# Lastly, enable the service to start on boot.
sudo systemctl enable prometheus

# First, download the current stable version of Node Exporter into your home directory.
(cd ~; curl -LO https://github.com/prometheus/node_exporter/releases/download/v0.15.1/node_exporter-0.15.1.linux-amd64.tar.gz)
 
# Use the sha256sum command to generate a checksum of the downloaded file:
sha256sum node_exporter-0.15.1.linux-amd64.tar.gz
# Verify the downloaded file's integrity by comparing its checksum with the one on the download page.
# Output 7ffb3773abb71dd2b2119c5f6a7a0dbca0cff34b24b2ced9e01d9897df61a127  node_exporter-0.15.1.linux-amd64.tar.gz

# tar xvf node_exporter-0.15.1.linux-amd64.tar.gz
tar xvf node_exporter-0.15.1.linux-amd64.tar.gz

# Copy the binary to the /usr/local/bin directory and set the user and group ownership to the node_exporter user that you created in Step 1.
sudo cp node_exporter-0.15.1.linux-amd64/node_exporter /usr/local/bin
sudo chown node_exporter:node_exporter /usr/local/bin/node_exporter

# Lastly, remove the leftover files from your home directory as they are no longer needed.
rm -rf node_exporter-0.15.1.linux-amd64.tar.gz node_exporter-0.15.1.linux-amd64

# Move node_exporter.service and change permissions
sudo mv node_exporter.service /etc/systemd/system/node_exporter.service
sudo chown root:root /etc/systemd/system/node_exporter.service
sudo chmod 644 /etc/systemd/system/node_exporter.service

# Finally, reload systemd to use the newly created service.
sudo systemctl daemon-reload

# You can now run Node Exporter using the following command:
sudo systemctl start node_exporter

# Lastly, enable Node Exporter to start on boot.
sudo systemctl enable node_exporter

# Download the packagecloud GPG key with curl, then pipe the output to apt-key.
curl https://packagecloud.io/gpg.key | sudo apt-key add -

# Next, add the packagecloud repository to your APT sources.
sudo add-apt-repository "deb https://packagecloud.io/grafana/stable/debian/ stretch main"

# Refresh your APT cache to update your package lists.
sudo apt-get update

# And, make sure Grafana will be installed from the packagecloud repository.
apt-cache policy grafana

# You can now proceed with the installation.
sudo apt-get --allow-unauthenticated install -y grafana

# Once Grafana's installed, you're ready to start it.
sudo systemctl start grafana-server

# Lastly, enable the service to automatically start Grafana on boot.
sudo systemctl enable grafana-server