# Pterodactyl Installer Scripts

Ce dépôt contient deux scripts pour installer Pterodactyl facilement sur un serveur Debian ou Ubuntu. Ces scripts automatisent l'installation des dépendances nécessaires et de Pterodactyl Panel avec ses services associés.

## Scripts Disponibles

### 1. **install.sh**

Ce script installe Pterodactyl avec la méthode standard. Il utilise une commande bash directe pour exécuter l'installation.

#### Utilisation :
```bash
sudo bash install.sh
```

### 2. **alternative-install.sh**

Ce script fournit une alternative légèrement différente pour l'installation, tout en utilisant les mêmes étapes fondamentales.

#### Utilisation :
```bash
sudo bash alternative-install.sh
```

## Contenu des Scripts

### `install.sh`
```bash
sudo apt update -y && apt full-upgrade -y
sudo apt install nodejs curl npm yarn -y
sudo bash <(curl -s https://pterodactyl-installer.se)
sudo systemctl restart wings
sudo systemctl restart pteroq
```

### `alternative-install.sh`
```bash
sudo apt update -y && apt full-upgrade -y
sudo apt install nodejs curl npm yarn -y
curl -o pterodactyl-installer.sh https://pterodactyl-installer.se
chmod +x pterodactyl-installer.sh
sudo bash pterodactyl-installer.sh
sudo systemctl restart wings
sudo systemctl restart pteroq
```

## Prérequis

- Un serveur Debian ou Ubuntu.
- Accès root ou utilisateur avec privilèges sudo.

## Étapes d'Installation

1. Clonez le dépôt :
   ```bash
   git clone https://github.com/NeyTwix/ptero-install
   cd ptero-install
   ```

2. Exécutez l'un des scripts :
   ```bash
   sudo bash install.sh
   ```
   ou
   ```bash
   sudo bash alternative-install.sh
   ```

## Notes
- Ces scripts sont conçus pour des installations simples et rapides. Vérifiez la configuration de votre serveur avant de les utiliser.
- Consultez la documentation officielle de Pterodactyl pour plus de détails : [Pterodactyl Documentation](https://pterodactyl.io/).

## Contributions
Les contributions sont les bienvenues ! Si vous trouvez un problème ou avez une amélioration, ouvrez une issue ou soumettez une pull request.

## Licence
Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus d'informations.
