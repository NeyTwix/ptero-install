apt update -y && apt full-upgrade -y
apt install nodejs curl npm yarn
bash <(curl -s https://pterodactyl-installer.se)
systemctl restart wings
