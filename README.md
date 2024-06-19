# StellarCat Services

Ce repository Github contient une liste des services de stellarcat utilisant des 
fichiers de configuration Docker.

## Pré-requis

- Docker
- Docker Compose
- Nom de domaine
- +2Go Ram

## Configuration

Afin de pouvoir executer les instances de chaque service, il est nécessaire de modifier les
variables d'environnements du site web présente dans le fichier **services/wordpress-docker/.env-example**.

L'infrastructure docker nécessite un réseau commun à tout les service, pour ce faire nous allons le créer
à l'aide du shell :
```sh
$ docker network create proxy-main
```

Le repo contient également un script à sa racine permettant de lancer tout les services à la fois :
```sh
$ ./start-all-dockers.sh
```

Dans les fichiers **docker-compose.yml** vous pouvez remplacer les variables d'environnements brut par les votre
dans le cadre de la production dans cette section :
```yml
environment:
      MYSQL_DATABASE: ${STELLARCAT_MYSQL_DATABASE}
      MYSQL_ROOT_PASSWORD: ${STELLARCAT_MYSQL_ROOT_PASSWORD}
```
Les variable d'environnement seront celles que vous aurait renseigné lors de l'éxécution de la commande :
```sh
$ STELLARCAT_MYSQL_ROOT_PASSWORD=root STELLARCAT_MYSQL_DATABASE=test ./start-all-dockers.sh
```
