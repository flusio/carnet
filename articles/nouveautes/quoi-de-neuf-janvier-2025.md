---
title: Quoi de neuf en janvier ?
date: 2025-01-30 08:30
description: Ce mois-ci : de la gestion de projet, un peu de développement et la préparation de la migration du serveur de mails.
---

Tous les mois je publie un article pour résumer mon activité mensuelle. Ce mois-ci : de la gestion de projet, un peu de développement et la préparation de la migration du serveur de mails.

Pour rappel, Flus est un outil de veille en ligne permettant de collecter, ranger, commenter et partager des liens. Il vous accompagne dans l’éditorialisation de votre veille.

## Gestion de projet et retours utilisateurices

Le début du mois a été dédié à la mise en place du plan de communication pour les premiers mois de l’année, et plus spécifiquement les choses à publier en janvier.
Comme je travaille à mi-temps, il est parfois compliqué de prendre le temps de publier sur les réseaux sociaux.
C’est pourquoi j’essaye désormais de préparer un maximum de choses à l’avance.

Le début de l’année, c’est aussi le moment où je fais un point sur les chiffres :

- D’un point de vue financier, j’ai mis à jour l’article [Bilan 2024](bilan-2024.html) avec les chiffres finalisés.
  **Le mois de décembre a rapporté légèrement plus que prévu, et c’est une bonne nouvelle.**
- Du point de vue des métriques de visites, la hausse est très notable avec notamment **une hausse de 44 % des visites uniques sur la page d’accueil par rapport aux 6 premiers mois de l’année.**

Enfin, j’ai commencé à améliorer ma façon de gérer les retours utilisateurices en me créant un espace dédié dans lesquels je peux lister tous les retours que l’on me fait de manière thématique.
C’est les balbutiements de ce nouveau système, donc il y a fort à parier qu’il évolue encore.
L’objectif est d’être capable de proposer des fonctionnalités en meilleure adéquation avec vos besoins.

## Un peu de développement

J’ai fait relativement peu de développement ce mois-ci.
Cela a constitué principalement à mettre à jour les dépendances logicielles et à corriger quelques bugs ; rien qui ne nécessite que je rentre dans les détails ici.
Une nouvelle version devrait bientôt être publiée pour mettre en ligne ces correctifs.

Mais avant cela, je souhaite terminer un travail technique pour améliorer la synchronisation des flux.
L’objectif final est d’être un service plus respectueux de ses voisins en diminuant le nombre de requêtes externes faites vers les flux Web.
_In fine,_ Flus devrait se faire potentiellement moins bloquer par les autres sites (phénomène qui a eu tendance à s’amplifier ces dernières semaines).

Il sera temps ensuite de commencer le travail sur la refonte de l’extension navigateur 👀

## Planification de la migration du serveur de mails

Je l’ai évoqué au détour de mon bilan 2024 : l’un des objectifs techniques de cette année va être de ne plus héberger moi-même mes mails.
Cela fait plus de 10 ans que j’héberge mon propre serveur de mails.
Mais après tout ce temps, et malgré de bonnes pratiques mises en place, mes mails continuent de tomber dans les spams de manière régulière.

Comme je suis amené à envoyer de plus en plus de mails au fur et à mesure que le service grandit, je ne me sens plus les épaules de gérer ça moi-même.
Il y a aussi un peu de fatigue qui s’accumule, et l’envie de me consacrer à d’autres choses plus stimulantes.
C’est pourquoi j’ai mis un début de plan sur pied pour passer chez un (ou plusieurs) prestataire qui gèrera ça mieux que moi.

En principe, l’envoi des mails transactionnels (notamment les mails vous avertissant de la fin de votre abonnement) devraient assez rapidement migrer.

## Le saviez-vous ?

_Chaque mois, je partage désormais sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr)) une petite astuce pour utiliser Flus. Je profite de ces articles mensuels pour les repartager sur le blog._

Le saviez-vous ? Flus vous permet de stocker facilement des contenus à lire plus tard.

Pour cela, rendez-vous dans l’onglet « Lecture », puis « Signets », et « Ajouter un lien ». Il ne vous reste plus qu’à copier-coller l’adresse <abbr>HTTP</abbr> du contenu que vous voulez consulter plus tard.

Vous pouvez également installer l’extension navigateur pour ajouter une page Web en 2 clics ! ([pour Firefox](https://addons.mozilla.org/fr/firefox/addon/flus/) et [Chrome](https://chromewebstore.google.com/detail/flus/gikjpohbbimicecbndkefebbpjobokjd)).

## Un très bon démarrage

Ce début d’année a été très encourageant.
En effet, il y a eu 16 renouvellements d’abonnements pour un chiffre d’affaires de 610 € (objectif mensuel quasiment atteint !)
Par rapport à janvier 2024, c’est une hausse de 37 %.

Il y a par ailleurs eu de nombreux renouvellements au tarif soutien (à plus de 60 € !), **ce qui est très encourageant vis-à-vis du modèle du [prix libre](https://flus.fr/tarifs) que je propose.**
La démarche semble comprise et même encouragée !

Enfin, il y a eu un beau pic de visites sur un lien partagé sur Flus.
Conséquence : il y a eu plus de 1 600 visites uniques sur l’application en janvier, alors qu’on tourne généralement plutôt autour des 600 ou 700 visites uniques.

Bref, de beaux chiffres qui me motivent à continuer les efforts de communication.
**Un très grand merci au passage à toutes les personnes qui parlent de Flus autour d’elles et eux, ça fait une nette différence !**

## Les évènements à venir

Pour terminer, c’est le retour de la section des évènements auxquels je compte me rendre.

Le 20 février, je serai à [AlpOSS](https://alposs.fr/) à Échirolles, près de Grenoble.
J’y donnerai une conférence non pas sur Flus, mais sur un autre projet sur lequel je travaille pendant mon second mi-temps : [Bileto](https://github.com/Probesys/bileto), une application de ticketing pour gérer votre support ([lien vers la présentation](https://pretalx.com/alposs-2025/talk/SDC9R7/)).

Enfin, c’est dans bien plus longtemps, mais je devrais me rendre à Lyon :

- le 15 mai pour les [<abbr>RPLL</abbr>](https://www.rpll.fr/) ;
- les 24 et 25 mai pour les [<abbr>JdLL</abbr>](https://jdll.org/).

**N’hésitez pas à faire coucou si vous êtes dans les parages de l’un ou l’autre de ces évènements, je porterai un sweat Flus.**
