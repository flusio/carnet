---
title: Infrastructure technique de Flus (octobre 2025)
date: 2025-10-22 12:00
description: Un état des lieux de l’infrastructure technique derrière Flus.
---

Toute plateforme sur Internet repose sur un ensemble de briques et pratiques techniques permettant de la faire fonctionner.
Pour Flus, je souhaite que cette infrastructure soit aussi transparente que possible.
C’est pourquoi je publie régulièrement à ce sujet.

**Cet article s’adresse à un public technique et qui s’intéresse à l’administration de serveurs.**
C’est le troisième d’une série débutée en 2019 :

- [Stack technique (décembre 2019)](stack-technique-decembre-2019.html)
- [Infrastructure de Flus (avril 2022)](infrastructure-avril-2022.html)

Pour rappel, Flus est une plateforme de veille en ligne conçue pour collecter, organiser, annoter et partager vos liens favoris de manière simple et rapide. Elle s’intègre à votre écosystème d’outils existants pour compléter et éditorialiser votre veille.

## Serveurs

Les serveurs hébergeant les services de Flus sont au nombre de trois et n’ont (presque) pas changé depuis 2022.
Ils sont tous loués chez [Hetzner](https://www.hetzner.com/) et sont situés en Allemagne.

Rufus est un <abbr>CX</abbr>21 (2 <abbr>CPU</abbr>, 4 <abbr>Go</abbr> de <abbr>RAM</abbr>, 40 <abbr>Go</abbr> de <abbr>SSD</abbr>).
Ce n’est pas le plus puissant des trois, mais il me sert à héberger la majorité des sites et serveurs.
Il a légèrement évolué depuis le dernier article puisqu’il possède 2 <abbr>Go</abbr> de <abbr>RAM</abbr> en plus.

Faremis est un <abbr>CPX</abbr>31 (4 <abbr>CPU</abbr>, 8 <abbr>Go</abbr> de <abbr>RAM</abbr>, 160 <abbr>Go</abbr> de <abbr>SSD</abbr> + un volume supplémentaire de 800 <abbr>Go</abbr>).
Celui-ci fait tourner la plateforme principale.
Il est désormais un peu sur-dimensionné par rapport à la charge qui lui pèse dessus.
En effet, malgré le fait qu’il héberge plus de monde et plus de données, les optimisations que j’ai effectuées dans le code de Flus au fil du temps font que je n’ai plus besoin d’une machine aussi puissante.

Mikado est lui aussi un <abbr>CX</abbr>21 (même dimensionnement que Rufus).
Il hébergeait mon serveur mail, jusqu’à ce que je décide de ne plus héberger mes mails cette année.
Il continue de tourner pour quelques adresses techniques personnelles, mais j’envisage de rapatrier cela sur un autre serveur.

Tous les serveurs sont sous Debian 12 (Bookworm).
Je gère leur déploiement et leurs mises à jour grâce à [Ansible](https://www.ansible.com/).

## Services hébergés

Les services que j’héberge reposent quasiment exclusivement sur les mêmes technologies :

- nginx en serveur Web ;
- le langage <abbr>PHP</abbr> ;
- une base de données PostgreSQL (ou parfois SQLite).

Voici les services et sites que j’héberge :

- Flus ([app.flus.fr](https://app.flus.fr)) et sa démo ([demo.flus.fr](https://demo.flus.fr)) ;
- le site [flus.fr](https://flus.fr) (sur une base <abbr>PHP</abbr>) ainsi que ce blog (lui, généré grâce à [Boop!](https://framagit.org/marien.fressinaud/boop)) ;
- [FreshRSS](https://freshrss.org) (ancien service toujours hébergé sur [rss.flus.fr](https://rss.flus.fr)) ;
- [taust](https://github.com/flusio/taust) (supervision de mes serveurs et [page de statut de la plateforme](https://status.flus.fr)) ;
- [Bileto](https://github.com/Probesys/bileto) (gestion des demandes de support) ;
- [listmonk](https://listmonk.app/) (gestion de campagne de mails quand je dois communiquer largement aux abonné·es du service) ;
- [Webubbub](https://github.com/flusio/Webubbub) (un hub Websub que j’utilise pour la distribution temps réel des articles du blog auprès des agrégateurs compatibles) ;
- [Mailu](https://mailu.io/) (la stack mail que j’utilisais mais que je vais donc être amené à enlever).

## Emails

Depuis cette année, j’ai délégué la gestion de mes emails à deux intermédiaires :

- [Infomaniak](https://www.infomaniak.com/) pour ce qui est des emails « de tous les jours » ;
- [Scaleway](https://www.scaleway.com/) pour l’envoi des emails transactionnels (ceux vous confirmant votre inscription à Flus par exemple).

## Sauvegardes

Mes sauvegardes sont faites de manière journalière et sont chiffrées grâce à [BorgBackup](https://www.borgbackup.org/) et [borgmatic](https://torsion.org/borgmatic/).
Elles sont hébergées chez [rsync.net](https://rsync.net/).

## Supervision

La supervision de mes serveurs est assurée par deux outils.

[taust](https://github.com/flusio/taust), mentionné un peu plus haut, est un logiciel que j’ai développé pour surveiller les métriques de mes serveurs ainsi que le bon fonctionnement de mes sites.
Il est capable de me notifier par email et SMS en cas d’alerte ou d’incident.
Il permet également de générer des pages de statut avec un système d’annonces (comme vous pouvez le voir sur [status.flus.fr](https://status.flus.fr)).

Le second outil est [reaction](https://reaction.ppom.me/).
Je l’ai ajouté suite à [un incident en début d’année dernière](2024-01-22-perte-de-comptes-de-paiement.html).
Il me permet de réaliser deux choses :

- bannir automatiquement certaines adresses IP qui ont un comportement suspect ;
- me notifier par email les erreurs issues des fichiers de logs.

C’est devenu un outil très précieux pour moi et je suis ravi de l’avoir adopté.

## Conclusion

Si l’on compare l’infrastructure de Flus telle que je vous l’ai présentée ici, à celle de 2022, vous pourrez noter une certaine évolution.

Le changement principal est évidemment le passage à des intermédiaires pour gérer mes mails.
Ce changement m’a bien allégé l’esprit vis-à-vis de la délivrabilité de mes emails.
Le sujet n’est toutefois pas entièrement clôt puisque je dois encore décommander le serveur qui gère quelques adresses résiduelles.

Je suis heureux de mon infrastructure actuelle, **qui tourne très bien tout en restant sous contrôle.**
Le travail de maintenance et de mise à jour me demande d’ailleurs à peine qu’une poignée de jours par mois.

Pour terminer, je prévois deux chantiers importants pour les mois à venir :

- La mise à jour des serveurs vers Debian 13 (Trixie), qui va demander un peu de préparation en amont pour tester que tout fonctionne bien.
- Le stockage des images stockées dans Flus vers un serveur S3, très probablement toujours chez Hetzner. Ce travail devrait me permettre ensuite d’envisager plus sereinement quelques fonctionnalités très intéressantes pour Flus 👀
