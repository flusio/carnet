---
title: Quoi de neuf en octobre ?
date: 2025-10-30 10:00
description: Ce mois-ci : quelques améliorations de la plateforme, la mise à jour de l’extension avance, et plusieurs publications autour de l’infrastructure de Flus ainsi que de sa tarification.
---

Je publie chaque mois un article pour résumer mon activité mensuelle.
Ce mois-ci : quelques améliorations de la plateforme, la mise à jour de l’extension avance, et plusieurs publications autour de l’infrastructure de Flus ainsi que de sa tarification.

Pour rappel, Flus est une plateforme de veille en ligne conçue pour collecter, organiser, annoter et partager vos liens favoris de manière simple et rapide.
Elle s’intègre à votre écosystème d’outils existants pour compléter et éditorialiser votre veille.

## Les améliorations de la plateforme

J’ai apporté quelques changements dans Flus à travers deux versions correctives.

Tout d’abord, j’ai grandement **amélioré le temps de chargement des pages des collections et des flux suivis.**
Cela devrait rendre la navigation dans Flus beaucoup plus fluide !

Côté développeurs et développeuses, l’<abbr>API</abbr> se voit dotée de deux nouvelles fonctionnalités permettant de :

- suivre des collections et flux ;
- récupérer la liste des flux lors de la recherche d’un lien.

Tous les changements sont indiqués dans [la documentation de l’<abbr>API</abbr>](https://github.com/flusio/Flus/blob/main/docs/api/README.md).

Enfin, **le travail sur l’extension navigateur se poursuit,** notamment pour pouvoir suivre des flux directement depuis celle-ci.
Il ne reste plus qu’à finaliser quelques détails.

## Les micro-publications du mois

En plus de ce blog, je publie également sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr), n’hésitez pas à m’y suivre).
Je repartage ici les publications notables du mois que vous auriez pu rater.

### 💡 Connaissez-vous [status.flus.fr](https://status.flus.fr) ?

Grace à ce site, vous pouvez rapidement savoir si Flus est en panne ou en phase de maintenance.
D’ailleurs, en vous inscrivant sur Flus, vous suivez automatiquement son flux Web afin de vous tenir au courant des éventuels incidents et taches de maintenance.

Et si pour l’instant 2025 a été une année très calme de ce point de vue là, la mise à jour des serveurs vers Debian 13 se profile doucement (et donc quelques coupures de service !)

Derrière tout ça, c’est taust, un petit logiciel maison, qui tourne pour surveiller la bonne santé des serveurs : [github.com/flusio/taust](https://github.com/flusio/taust)

### 🏗️ À quoi ça ressemble une infrastructure technique ?

Des serveurs, des logiciels, des pratiques… tout ça est parfois compliqué et un peu flou, voire totalement invisible.
Pour Flus, je détaille l’infrastructure technique de manière régulière pour rendre compte des évolutions et être aussi transparent que possible sur comment ça se passe.

Un maitre-mot : contrôle.
Pas de fioriture, la maintenance ne doit pas prendre plus de quelques jours par mois !

Découvrez le détail de l’infrastructure ici : [flus.fr/carnet/infrastructure-octobre-2025.html](infrastructure-octobre-2025.html)

### 📉 Le tarif « soutien » est en baisse !

Au cours de l’année, le prix du tarif « soutien » de Flus est passé de 64 € à 45 €.
C’est une baisse, et c’est une bonne nouvelle !

Ce tarif représente le prix que chaque abonné·e aurait eu à payer pour que j’atteigne mon objectif financier.
S’il a baissé, c’est donc qu’il y a eu une augmentation du nombre d’abonnements tout au long de l’année ! (environ +50 % en l’occurrence)

Pour rappel, Flus est à prix libre (= vous déterminez le prix de votre abonnement entre 0 et 120 €).
Quelques tarifs cibles sont toutefois suggérés pour vous aider à déterminer le « juste » prix qui vous correspond.

Pour plus de détails : [flus.fr/tarifs](https://flus.fr/tarifs)
