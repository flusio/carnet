---
title: Facturation et jobs asynchrones (Weeknotes #24)
date: 2021-02-05 19:05
description: Cette semaine mon travail a porté sur des aspects de facturation, puis sur un système de jobs asynchrones fait maison.
---

J’ai passé la semaine à sauter du coq à l’âne. Je ressens une petite fatigue en
cette fin de semaine, mais je suis content d’avoir fait tout ça.

**J’ai commencé par ajouter un mécanisme pour pouvoir rembourser les clients
qui le demandent.** Une personne avait fait un paiement en double, il fallait
que je puisse faire une facture d’avoir pour annuler le doublon. Du côté de
Stripe c’est très simple : il suffit de cliquer sur le bouton « Rembourser ».
Ce nouveau système a bougé pas mal de petites choses, je sens que je commence à
accumuler de la dette technique qu’il va me falloir traiter tôt ou tard.

**J’ai profité de bosser sur cette partie pour améliorer quelques petites
choses dans l’administration pour me faciliter la vie.** C’est chouette de
prendre soin de ces aspects, même si c’est juste pour moi. J’ai notamment
ajouté un système pour générer mon livre de recettes (la seule obligation
comptable pour un micro-entrepreneur) automatiquement. Jusque-là, je notais
chaque vente à la main sur papier : ce n’était pas gênant avant décembre, mais
ça le devenait ces temps-ci.

**Mercredi, j’ai publié le bilan de ma première année avec Flus [sur LinuxFr](https://linuxfr.org/users/fargo/journaux/flus-bilan-d-un-an-d-activite).**
J’ai galéré à trouver un angle qui me satisfasse. J’ai fini par reprendre un
article déjà publié ici, légèrement allégé et avec un retour d’expérience
supplémentaire en guise de conclusion. Je suis heureux des retours positifs !

**Enfin, jeudi et aujourd’hui, j’ai commencé à travailler sur le futur système
d’importation.** Je commence par un aspect technique qui sera utile pour
d’autres fonctionnalités : les « jobs asynchrones ». Cela permettra notamment
d’envoyer des courriels et d’importer les données (des tâches qui peuvent
prendre du temps) sans bloquer les utilisateur‧ices. Il existe des logiciels
tout fait qui font ça très bien, mais je pense que ça ne vaut pas encore le
coup de complexifier la stack technique. Je pars donc sur un mécanisme beaucoup
plus simple, fait maison, qui stocke les jobs en base de données et un script
<abbr>PHP</abbr> qui les traite. Je me suis largement inspiré de [la gem Ruby
`delayed_job`](https://github.com/collectiveidea/delayed_job). Je termine ce
soir avec une version très concluante. J’aimerais continuer, mais il faut
savoir s’arrêter 🙂
