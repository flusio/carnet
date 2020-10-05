---
title: Nouvelle version et futur proche – Weeknotes #12
date: 2020-09-07 11:00
description: La semaine dernière, j’ai sorti une nouvelle version de flusio avec beaucoup de nouveautés et améliorations.
illustration: images/flusio-news-2.png
---

## Ce que j’ai fait

En plus de fêter la première année du carnet (voir [l’article](comment-je-nai-pas-encore-fait-fortune-en-1-an.html)
et [la FAQ](la-faq-du-un-an.html)), j’ai sorti la semaine dernière [la version
0.8 de flusio](https://github.com/flusio/flusio/releases/tag/v0.8) (le logiciel derrière le
futur service).

J’ai réussi à inclure tout ce que je souhaitais pour cette version, ce qui a
consisté à améliorer l’accessibilité des fenêtres modales, changer le sélecteur
de collections pour gérer plus facilement les longues listes et terminer le
mécanisme principal du journal. Vous pouvez voir tout ça en action dans la
vidéo suivante :

<video controls class="illustration illustration--bordered">
    <source src="videos/flusio-workflow-2.webm" type="video/webm">
    <source src="videos/flusio-workflow-2.mp4" type="video/mp4">
</video>

On voit dans celle-ci que je demande des suggestions de lecture issues de mes
signets (des liens que j’ai déjà mis de côté moi-même), ou de collections
suivies (créées par d’autres utilisateur‧ices). J’ai ensuite 3 options pour
retirer ces liens de mon journal :

1. le lien semble intéressant, je le lis puis l’ajoute à mes collections ;
2. le lien semble intéressant, mais je n’ai pas le temps de le consulter
   immédiatement, je le (re)place dans mes signets ;
3. le lien ne semble pas intéressant (ou ne l’était pas après lecture), je
   demande à simplement le retirer du journal (il ne me sera plus proposé
   par la suite).

Le plus compliqué dans tout ça a été de poser les bases de l’algorithme du
journal. L’ajout du suivi des collections était l’occasion d’imaginer quelques
principes et je pense en reparler dans un futur article quand ce sera un peu
plus avancé.

Cette version fut également l’occasion de corriger plein de détails pour rendre
la navigation plus fluide et l’interface plus cohérente.

Comme toujours, tout est testable à l’adresse suivante : [demo.flus.fr](https://demo.flus.fr/).

## Ce qui se trame pour les prochaines semaines

En plus d’écrire des articles, j’ai également pris le temps d’une rando ce
weekend pour prévoir la suite.

Mon objectif maintenant est de pouvoir faire des tests utilisateurs le plus
rapidement possible, mais je veux d’abord corriger les choses que je sais poser
problèmes. Cela va passer par deux points :

1. améliorer la découvrabilité en permettant d’explorer les collections
   publiques et obtenir des suggestions de lecture plus larges ;
2. ajouter un mécanisme d’« <em lang="en">onboarding</em> » qui devrait
   consister en quelques écrans pour présenter les mécanismes principaux.

J’aimerais également pouvoir paramétrer rapidement les critères de sélection
du journal (j’en ai un peu parlé dans [la FAQ](la-faq-du-un-an.html)).

Tout ça devrait bien m’occuper jusqu’à la fin du mois, et il sera ensuite temps
de penser aux aspects essentiels lorsqu’on gère une clientèle : espace pour le
support, facturation, etc. S’il me reste ensuite assez de temps, je commencerai
à songer à ajouter des fonctions plus sociales, notamment pour pouvoir
commenter chez d’autres utilisateur‧ices.

Le mois de décembre ne sera alors plus très loin et je pourrai alors ouvrir les
portes de ce nouveau service 😊
