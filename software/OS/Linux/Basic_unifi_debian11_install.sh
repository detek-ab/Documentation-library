# Java 8
curl -fsSL "https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public" | sudo gpg --dearmor --yes -o /usr/share/keyrings/adoptopenjdk-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/adoptopenjdk-archive-keyring.gpg] https://adoptopenjdk.jfrog.io/adoptopenjdk/deb bullseye main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list
sudo apt-get update && sudo apt-get install -y adoptopenjdk-8-hotspot

# MongoDB 3.6
wget -qO - https://www.mongodb.org/static/pgp/server-3.6.asc | sudo apt-key add -
echo "deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/3.6 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

# Unifi
sudo apt-get update && sudo apt-get install -y ca-certificates apt-transport-https
echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg
sudo apt-get update && sudo apt-get install unifi -y



# Another installer
# https://dchan.tech/books/unifi-controller/page/installing-unifi-controller-on-debian-11-bulleyes
