# Documentation de l'Équipe et du Travail Fourni

[stellarcat-services Github](https://github.com/HusseinDStudy/stellarcat-services/tree/main)

## Contexte du Projet

L'objectif de notre association est de fournir une suite de services en ligne pour faciliter la collaboration et la gestion des documents de manière sécurisée et efficace. Les services principaux incluent :

- **Serveur Web Traefik** : Un Reverse Proxy comme Apache qui permet de diriger les requêtes vers les services internes de manière sécurisée et sert à resoudre les sous nom de domaine pour acceder aux services
- **Traitement de texte via OnlyOffice** : Un éditeur de texte en ligne permettant la création, la modification, et le partage de documents textuels.
- **Wiki via WikiJS** : Une plateforme de wiki pour la documentation et le partage de connaissances en interne.
- **Envoi de fichiers via Pydio Cells** : Un système de gestion de fichiers permettant le stockage, l'envoi et la synchronisation de fichiers.
- **Site vitrine via WordPress** : Un site web conçu pour présenter l'association et ses activités au public, facilitant ainsi la communication et l'engagement externe.

Ces services sont déployés sur une nouvelle infrastructure composée de serveurs décomissionnés réutilisés pour installer ces logiciels web. Une équipe dédiée est responsable de l'écriture des fichiers Docker Compose pour orchestrer cette installation.

## Équipe Impliquée

L'équipe chargée de ce projet est spécialisée dans l'infrastructure IT et le développement DevOps. Leurs responsabilités incluent :

- **Écriture des fichiers Docker Compose** : Création et maintenance des fichiers nécessaires pour déployer les applications en containers Docker.
- **Configuration des serveurs** : Préparation et configuration des serveurs pour accueillir les différents services.
- **Maintenance et mise à jour** : Suivi des services pour garantir leur bon fonctionnement et leur mise à jour régulière.

## Travail Fourni

Le travail soumis comprend plusieurs fichiers `docker-compose.yml` et un script `start_all_dockers.sh`. Ces fichiers configurent et lancent les services mentionnés ci-dessus.

### Fichiers `docker-compose.yml`

Ces fichiers contiennent toutes les directives nécessaires pour déployer les services via Docker Compose. Chaque fichier configure un des services suivants :

1. **OnlyOffice**
2. **WikiJS**
3. **Pydio Cells**
4. **WordPress (Site vitrine)**

Les configurations typiques incluent :

- Base de Donnes pour chaque service afin de persister les donnes.
- Services, volumes, et réseaux requis.
- Paramètres environnementaux.
- Dépendances entre les services.
- Exposition des ports.

### Script `start_all_dockers.sh`

Ce script est utilisé pour lancer tous les services définis dans les fichiers Docker Compose en une seule commande. Ce script simplifie le processus de démarrage et assure que tous les services démarrent dans l'ordre correct et fonctionnent comme prévu.

#### Commande d'Exécution

Pour démarrer tous les services, le script `start_all_dockers.sh` peut être exécuté avec la commande suivante :

```bash
./start_all_dockers.sh
```

# Résumé
L'équipe a effectué un travail crucial en préparant une infrastructure modulaire et scalable grâce à l'utilisation de Docker. Cette approche non seulement optimise l'utilisation des ressources, mais assure également une haute disponibilité et facilité de maintenance des services essentiels pour l'association.

