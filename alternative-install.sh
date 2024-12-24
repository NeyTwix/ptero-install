sudo apt update -y && apt full-upgrade -y
sudo apt install nodejs curl npm yarn -y
curl -o pterodactyl-installer.sh https://pterodactyl-installer.se
chmod +x pterodactyl-installer.sh
sudo bash pterodactyl-installer.sh
sudo systemctl restart wings
sudo systemctl restart pteroq
