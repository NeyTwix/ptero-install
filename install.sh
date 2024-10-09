sudo apt update -y && apt full-upgrade -y
sudo apt install nodejs curl npm yarn
sudo bash <(curl -s https://pterodactyl-installer.se)
sudo systemctl restart wings
sudo systemctl restart pteroq
