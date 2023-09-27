apt update -y && apt full-upgrade -y
apt install nodejs && apt install npm
apt install curl && apt install yarn
bash <(curl -s https://pterodactyl-installer.se)
systemctl restart wings
