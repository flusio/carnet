---
title: Quoi de neuf en février ?
date: 2025-02-27 13:00
description: Ce mois-ci : une mise à jour, le début de la migration du serveur de mails, et l’évènement AlpOSS.
---

Tous les mois je publie un article pour résumer mon activité mensuelle. Ce mois-ci : une mise à jour, le début de la migration du serveur de mails, et l’évènement AlpOSS.

Pour rappel, Flus est un outil de veille en ligne permettant de collecter, ranger, commenter et partager des liens.
Il vous accompagne dans l’éditorialisation de votre veille.

## Mise à jour vers Flus 1.2

Flus a reçu une nouvelle mise à jour.

Outre l’apparition de la fréquence de publication déjà mentionnée dans [un article précédent](frequence-de-publication.html), un autre changement important fait son apparition : **les comptes seront désormais supprimés automatiquement au bout d’un an d’inactivité.**
C’est l’occasion de faire du ménage dans les données que je stocke, notamment les données personnelles.

Autre changement, plus technique : j’ai grandement amélioré le code qui synchronise les flux.
La synchronisation s’adapte maintenant à la fréquence de publication de chaque flux.
Ainsi, un flux qui publie beaucoup sera synchronisé toutes les heures, tandis qu’un flux qui publie très peu sera synchronisé toutes les 24 heures.
Ce changement a permis de réduire de 25 % le nombre de requêtes vers des serveurs externes : une amélioration non négligeable !

Pour les plus curieux et curieuses, je vous invite à lire les notes pour les versions [1.2.0](https://github.com/flusio/Flus/releases/tag/v1.2.0) et [1.2.1](https://github.com/flusio/Flus/releases/tag/v1.2.1).

## Début des opérations de migration du serveur de mails

Comme je l’ai précisé dans plusieurs articles précédents : l’objectif technique de 2025 va être de ne plus héberger mon serveur de mails afin de m’éviter cette charge de travail non négligeable (et le stress qui va avec !)

Les opérations ont commencé : **les mails transactionnels — par exemple les mails vous avertissant de la fin de votre abonnement — sont désormais envoyés grâce à un nouveau prestataire : [Scaleway](https://www.scaleway.com/fr/).**

Ces mails sont un peu particuliers car ils peuvent être envoyés en grand nombre et nécessitent une bonne délivrabilité. Le suivi de la réputation de ces emails est donc important pour éviter de tomber dans les spams des destinataires.

La suite, notamment la migration de l’adresse email de support, se fera dans plusieurs semaines, à priori chez [Infomaniak](https://www.infomaniak.com/) (Scaleway ne proposant pas d’offre pour ce genre d’emails plus « standards »).

## Présence à AlpOSS

J’étais présent à [AlpOSS](https://alposs.fr/) le jeudi 20 février.
C’était l’occasion de discuter avec quelques utilisateurs et utilisatrices et de présenter Flus aux personnes qui ne connaissaient pas.

L’évènement était très chouette, j’espère avoir l’occasion d’y donner une présentation officielle l’année prochaine !

## Le saviez-vous ?

_Chaque mois, je partage sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr)) une astuce pour utiliser Flus.
Je profite de ces articles mensuels pour les repartager sur le blog._

Le saviez-vous ? Les collections de Flus vous permettent de stocker et organiser thématiquement vos liens vers des ressources Web.

Pour démarrer avec les collections, rendez-vous dans « Mes liens » et « Créer une collection ».
Ajoutez-y ensuite un lien en cliquant sur « Ajouter un lien » (facile non ?)

Besoin d’une idée de collection ? Et si vous regroupiez les liens vers tous ces outils en ligne pour lesquels vous vous dites « ça a l’air pratique, il faudrait que je l’essaye un de ces jours ! »

## Les évènements à venir

Ces évènements se dérouleront en mai, donc ma venue reste à confirmer, mais je devrais me rendre à Lyon :

- le 15 mai pour les [RPLL](https://www.rpll.fr/) ;
- les 24 et 25 mai pour les [JdLL](https://jdll.org/).
