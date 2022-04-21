---
title: Infrastructure de Flus (avril 2022)
date: 2022-04-21 18:22
description: Un état des lieux de l’infrastructure technique derrière Flus.
---

J’avais prévu de vous tenir au courant des changements qui surviendraient sur l’infrastructure de Flus tous les ans. J’ai eu l’occasion de vous en parler occasionnellement (ex. lors de [la suppression de Docker](weeknotes-22.html), ou lors de [l’incendie chez <abbr>OVH</abbr>](2021-03-10-serveur-courriels-hs.html)), mais il est temps de faire un nouvel état des lieux. Je ne reviendrai pas ici sur tous les choix que j’ai pu détailler dans [le premier article de 2019](stack-technique-decembre-2019.html), je vous invite donc à le lire en complément.

## Les serveurs

Flus tourne principalement grâce à trois serveurs loués chez [Hetzner](https://www.hetzner.com/).

Rufus, le petit dernier, est un <abbr>CPX</abbr>11 (2 <abbr>CPU</abbr>, 2 <abbr>GB</abbr> de <abbr>RAM</abbr>, 40 <abbr>GB</abbr> de <abbr>SSD</abbr>). C’est le plus petit de mes serveurs, mais il fait tourner la majorité des sites et services, à savoir [flus.fr](https://flus.fr), [flus.io](https://flus.io), [demo.flus.fr](https://demo.flus.fr) et [websub.flus.io](https://websub.flus.io). Il est possible que je le fasse évoluer vers un serveur un peu plus puissant, mais ça n’est pas du tout nécessaire pour l’instant.

Mikado est un <abbr>CX</abbr>21 (2 <abbr>CPU</abbr>, 4 <abbr>GB</abbr> de <abbr>RAM</abbr>, 40 <abbr>GB</abbr> de <abbr>SSD</abbr>). C’est mon serveur personnel de courriels que je fais tourner grâce à [Mailu](https://mailu.io) (parce que oui, j’aime me faire mal en hébergeant ce genre de choses).

Faremis, le plus ancien, est légèrement plus puissant : c’est un <abbr>CPX</abbr>31 (4 <abbr>CPU</abbr>, 8 <abbr>GB</abbr> de <abbr>RAM</abbr>, 40 <abbr>GB</abbr> de <abbr>SSD</abbr> + un volume supplémentaire de 500 <abbr>GB</abbr>). Il est désormais dédié à [app.flus.fr](https://app.flus.fr). Je pense que je pourrai le repasser en <abbr>CX</abbr>31 comme avant (2 <abbr>CPU</abbr> en moins), mais je suis plus tranquille ainsi face à de potentielles arrivées massives d’utilisateur⋅ices.

Tous les serveurs sont gérés grâce à [Ansible](https://www.ansible.com/). L’arrivée de Rufus m’a d’ailleurs permis d’améliorer mes scripts de déploiement ainsi que la documentation. Au passage, le dépôt contenant mes scripts Ansible est le seul que je garde privé car contenant des données sensibles (bien que chiffrées).

## Les services

Tous les services que je propose reposent sur une stack simple :

- un serveur web (nginx) ;
- le langage <abbr>PHP</abbr> ;
- une base de données PostgreSQL (ou SQLite).

Si j’utilisais Docker pendant un temps, [je l’ai viré en grande partie en janvier 2021](weeknotes-22.html). Il reste toutefois utilisé sur Mikado pour faire tourner Mailu.

Il y a donc eu très peu de changements à ce niveau-là, malgré l’arrivée du
second service (app.flus.fr).

## La supervision

Après quelques aventures, je me suis créé en 2020 un outil minimaliste de supervision : [taust](https://github.com/flusio/taust) (j’en avais parlé [dans ma 4<sup>e</sup> weeknote](weeknotes-4.html)).

Le principe est d’avoir un outil pour surveiller mes sites et mes serveurs, et de recevoir des alertes par SMS et courriel en cas de problème. À la fin de l’année dernière, je lui ai ajouté la possibilité de générer des pages de statut avec système d’annonces (c’est ce qui est derrière [status.flus.fr](https://status.flus.fr)). Je suis extrêmement satisfait du résultat final.

Je ne prévois plus de gros ajouts à taust, seulement du fignolage et l’écriture de la documentation. Avec un peu de chance, le projet sera totalement fini cette année !

À noter que taust tourne sur un serveur personnel hébergé chez <abbr>OVH</abbr> : ça réduit les risques de passer à côté d’une panne si l’ensemble de l’infrastructure de Hetzner tombe en panne (le principe de ne pas mettre tous ses œufs dans le même panier quoi).

## La sauvegarde des données

En janvier 2020, j’ai passé l’ensemble de mon système de sauvegardes sur [Borg](https://www.borgbackup.org/) et [borgmatic](https://torsion.org/borgmatic/). Les sauvegardes sont journalières et chiffrées de manière plus efficace qu’avec mon script manuel précédent. Elles sont exportées chez [rsync.net](https://rsync.net/).

J’ai eu l’occasion de remettre en place des sauvegardes à plusieurs reprises, je suis donc globalement serein là-dessus (même si je ne reste pas à l’abri d’une corruption de données).

## Conclusion

L’infrastructure de Flus a pas mal évolué en 2 ans et demi sans pour autant changer fondamentalement (je fais toujours tourner de simples applications en <abbr>PHP</abbr>). Les changements se sont faits au fur et à mesure que les choses me démangeaient. Je ressens une grosse progression de mes compétences en administration système, ça fait plaisir 🙂

Les prochains grands changements que je prévois sont :

- la centralisation des logs des trois serveurs ;
- la migration de Flus 1 sur (uniquement) rss.flus.fr, flus.io deviendrait alors un nom de domaine disponible pour le logiciel [flusio](https://github.com/flusio/flusio) (celui derrière Flus 2).

Ces deux changements n’étant pas urgents, je ne suis pas sûr de m’en occuper cette année. J’espère pouvoir me concentrer sur du développement désormais !
