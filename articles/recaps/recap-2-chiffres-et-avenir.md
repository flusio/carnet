---
title: Récap #2 : chiffres et avenir
date: 2020-01-27 12:07
description: Je lançais Flus le 28 novembre dernier. Pour rendre compte de l’évolution du service, j’ai décidé de faire des points d’avancement à intervalle régulier. Six semaines ont passé et il est temps du second récap’ !
---

Je lançais Flus le 28 novembre dernier, [mon service de suivi de l’actualité](https://flus.io).
Pour rendre compte de son évolution, j’ai décidé de faire des points
d’avancement à intervalle régulier. Le [premier récap’](recap-1.html)
retranscrivait le lancement de mon activité. Six semaines ont passé et il est
temps du second récap’ !

Cette fois-ci je n’ai pas pu utiliser ma sixième semaine de cycle pour
travailler un sujet particulier (j’avais creusé le protocole [WebSub](https://www.w3.org/TR/websub/)
la dernière fois), je remets ça à une prochaine.

## Flus en quelques chiffres

J’expliquais lors du premier récap’ être un peu mitigé sur le nombre
d’utilisateurs et utilisatrices du service : 75 comptes avaient été créés en
l’espace de 2 semaines et demie, et 8 personnes avaient commencé à payer. Six
semaines plus tard les chiffres ont augmenté lentement :

- 34 comptes créés ;
- 7 abonnements annuels + 2 abonnements mensuels pris ;
- 216 € de chiffre d’affaires au total ;

Cette faible hausse n’est pas vraiment dramatique pour moi, je m’y attendais.
La première raison est que ma visibilité est mécaniquement plus restreinte une
fois l’annonce passée : j’ai encore besoin de me faire connaître. La deuxième
est liée au fait que **le domaine des agrégateurs de flux <abbr>RSS</abbr>
représente un marché de niche** déjà grandement occupé par de
l’auto-hébergement et en expansion nulle (voire négative). Ce n’est pas une
surprise, c’est d’ailleurs ce que j’avais identifié quand j’ai étudié la
viabilité de mon projet. Je savais que je ne pourrai pas vivre d’un simple
service d’agrégation et c’est pourquoi je suis en train de travailler à
préparer la « suite ». Je ne vous en parle pas immédiatement, ça prendra
quelques mois à se mettre sur pied.

_Mais j’ai hâte._

## Les améliorations du service

J’ai décrit [mon infrastructure dans un billet](stack-technique-decembre-2019.html)
le 20 décembre dernier. Le principal changement étant survenu depuis est
l’exécution des sauvegardes automatiques à l’aide de [Borg](https://www.borgbackup.org/).
Elles sont maintenant journalières, chiffrées et exportées chez un hébergeur
différent ([rsync.net](https://rsync.net)). Je suis bien plus serein désormais,
il me sera plus facile de récupérer l’état de la base de données ou d’un
fichier comme cela. Autre ajout : [pgBadger](https://github.com/darold/pgbadger)
qui me permet de surveiller les performances de la base de données. Pas très
utile pour l’instant puisque [FreshRSS](https://freshrss.org) est déjà très
bien optimisé.

Pour les utilisateur·ices de Flus, j’ai amélioré les pages d’inscription et de
connexion pour leur donner plus d’espace et les rendre plus informatives. On ne
savait notamment pas qu’il s’agissait d’un service payant si on tombait
directement sur la page d’inscription ; embêtant. J’ai également installé une
extension FreshRSS [pour améliorer la gestion des flux Youtube](comment-suivre-des-chaines-youtube-depuis-flus.html),
puis développé [une fonctionnalité de rappel pour les abonnements arrivant à
échéance](activer-les-rappels-des-echeances-de-paiement.html).

Au niveau de la communauté, j’ai plutôt agi en mode sous-marin en travaillant
sur les processus d’équipe. J’ai notamment :

- configuré une seule branche (`master`) de développement au lieu de deux
  (`master` et `dev`) ([voir le ticket](https://github.com/FreshRSS/FreshRSS/pull/2705)) ;
- reconfiguré correctement les tests automatiques ([ticket](https://github.com/FreshRSS/FreshRSS/pull/2721/files)) ;
- ajouté une liste de tâches à vérifier à l’ouverture d’une <em lang="en">pull
  request</em> ([ticket](https://github.com/FreshRSS/FreshRSS/pull/2751)) ;
- relu un petit paquet de code.

Ce qui est agréable dans tout ça c’est que je commence à prendre mes aises dans
mon travail quotidien et j’arrive à être de plus en plus efficace dans ce que
je fais.

## Le récap’

Malgré des chiffres un peu décevants (mais prévus), je suis pressé de vous
présenter ce que je prépare pour la suite. Je suis content de voir ce projet
qu’est FreshRSS avancer et j’ai hâte de présenter à la communauté le·s futur·s
que j’envisage. Il faudra pour cela encore quelques heures de travail à
décortiquer et trier mes idées, mais j’ai bon espoir de proposer **quelque
chose d’aussi bien utile que différent par rapport à ce qu’on a l’habitude de
voir.**

Évidemment pendant ce temps je continue de maintenir et améliorer le service :
ça, ça ne change pas !
