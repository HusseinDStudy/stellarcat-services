# Services
## Introduction 
Le Projet StellarCat DevSecOps vise à déployer des services applicatifs complets et autonomes, accessibles via un site web sécurisé par un reverse proxy Traefik. Ces services, destinés à des entités comme les écoles Ynov, sont disponibles soit gratuitement soit via un modèle commercial.

## Services Déployés

### Reverse Proxy (Traefik)
Traefik est un projet open source utilisé comme reverse proxy pour diriger les requêtes vers les services internes de manière sécurisée, offrant un point d'accès unique à travers une URL simplifiée et gérant les certificats SSL automatiquement.
Il offre plusieurs avantages :
***Simplicité d'accès*** : Un seul point d'entrée pour tous les services, accessible via une URL unique.
***Sécurité accrue*** : Le reverse proxy masque les adresses IP des services internes, réduisant les risques d'attaques.
***Gestion des certificats SSL*** : Traefik centralise la gestion des certificats SSL pour tous les services, garantissant une connexion sécurisée.
#### Configuration de Traefik pour Pydio Cells
...

#### Accès au Service

Pour accéder:
- à Pydio Cells, utilisez l'URL suiv
- .
- .
- 

### Site Vitrine (WordPress)
WordPress est configuré pour présenter les activités et services offerts, accessible via `http://wordpress.example.com`. Traefik simplifie l'accès et améliore la sécurité via SSL/TLS.

### Documentation (WikiJs)
WikiJs sert de plateforme de documentation centralisée pour partager des guides et des informations techniques internes ou externes.

### Partage des Ressources (Pydio Cells)
Pydio Cells fournit une solution de partage de fichiers avancée, accessible via `http://cells.example.com`. Configuré pour fonctionner sous HTTP avec une redirection et gestion par Traefik pour une accessibilité facilitée et sécurisée.


### Édition de Fichiers (OnlyOffice)
OnlyOffice est déployé pour permettre l'édition de documents en ligne via `http://onlyoffice.example.com`, avec une intégration complète sous Traefik pour garantir la sécurité et l'accessibilité.

## Conclusion
Le Projet StellarCat propose une solution flexible et évolutive pour le déploiement de services applicatifs. Cette appro
*** /(-)\ ***

