---
title: Quoi de neuf en juillet ?
date: 2022-08-09 13:10
description: Résumé du mois de juillet pour Flus : partage de collections, améliorations et nettoyage de vieilles données.
---

Voici l’habituel article — presque — mensuel concernant mon travail du mois passé.

Pour rappel, il n’y a pas eu d’article en juin car j’ai désormais un travail salarié à mi-temps (voir [le quoi de neuf de mai](quoi-de-neuf-mai-2022.html)). Le mois de juin a toutefois été à temps plein là-bas afin de faire connaissance avec mes nouveaux et nouvelles collègues. J’ai désormais débuté mon rythme normal, à savoir que je travaillerai sur Flus une semaine sur deux.

## Partage des collections

Il est désormais possible de partager vos collections avec d’autres utilisateurices de Flus. Vous pouvez leur donner un accès en lecture seule — particulièrement utile concernant les collections privées —, **ou carrément en lecture et écriture afin de partager votre veille à plusieurs.**

Vous pouvez en apprendre davantage [dans mon précédent article](publiez-votre-veille-a-plusieurs.html).

<div class="screenshot">
    <img class="illustration screenshot__image" src="images/flusio-collection-share.png" alt="Une fenêtre modale affichant un champ pour saisir l’identifiant d’un‧e utilisateur‧ice ainsi que pour choisir le niveau d’accès. L’URL de la collection peut être copiée-collée en bas.">
</div>

## Les petites améliorations…

### … des performances

Celles et ceux qui l’utilisent régulièrement auront peut-être noté que **Flus va globalement plus vite.** Cela est dû à un travail de fond concernant aussi bien l’utilisation de requêtes <abbr>SQL</abbr> plus optimisées, qu’au passage à un disque plus rapide pour la base de données. J’ai l’impression que ça fait un an que j’évoque de meilleures performances à chaque « quoi de neuf », mais il faut dire que j’ai toujours plus de données à gérer !

### … dans la gestion des collections

Deux petites améliorations concernant la gestion des collections des liens :

1. il est désormais possible de **retirer toutes les collections d’un lien** (auparavant, il fallait supprimer le lien) ;
2. **la visibilité des liens se modifie maintenant au même endroit que les collections** (si vous aviez déjà ajouté un lien en « masqué », vous pouvez donc le rendre visible au moment où vous l’ajoutez à nouveau à une collection publique).

<div class="screenshot">
    <img class="illustration screenshot__image" src="images/flusio-link-collections.png" alt="Une liste de collections associées à un lien, et une case à cocher en-dessous pour modifier la visibilité du lien.">
</div>

### … de l’affichage des commentaires

Du côté des commentaires, j’ai stylé les blocs de citation et de code afin de les rendre plus agréables visuellement. J’y suis allé un peu fort sur le turquoise des citations, donc prévoyez qu’il se fasse plus discret dès la fin du mois !

### … du formatage des nombres

Enfin, si vous êtes du genre maniaque de la typographie, vous apprécierez d’apprendre que les grands nombres sont désormais formatés correctement (ex. 1 000 au lieu de 1000).

## Nettoyage des données anciennes

Je l’ai évoqué un peu plus haut, j’ai de plus en plus de données à gérer. On en est aujourd’hui à plus de 2 500 collections, 12 500 flux et presque 9,5 millions de liens en base de données.

Il faut savoir également que chaque enregistrement de ce type peut être associé à une image d’illustration générée en trois formats. Ça commençait à faire du monde sur le disque !

J’ai agi sur ces deux points :

- au sein des flux, les liens datant de plus d’un an sont désormais supprimés (cela a supprimé environ 400 millions de liens) ;
- je dispose maintenant d’une commande pour supprimer du disque les images qui ne sont plus utilisées (j’ai libéré une grosse centaine de gigaoctets ainsi).

**Ces deux ajouts permettent de limiter l’impact de Flus en termes d’espace disque.**

L’impact négatif est que certains flux peu actifs (i.e. aucune publication sur l’année passée) sont désormais vides : j’ajouterai prochainement un nombre minimum de liens à conserver.

## L’essentiel travail d’administration système

Le morceau important du mois a été **le déplacement de la base de données vers un disque plus performant.** Je l’ai fait un peu au pied levé — [annoncé](https://status.flus.fr/a/1739675117324572492) le matin pour l’après-midi —, mais tout s’est très bien passé. La bonne nouvelle est que ça a grandement amélioré les performances de Flus !

D’autres travaux d’adminsys ont porté sur le nettoyage et la réduction de la taille des logs, notamment ceux de Nginx (le serveur Web) afin de ne plus loguer toutes les requêtes de bots.

Enfin, le serveur stockant mes backups ayant été totalement rempli, j’ai travaillé à en réduire leur nombre et leur taille. J’ai pu économiser 90 Go ainsi, mais je crains que la prochaine fois il ne me faille augmenter la taille du disque.

## À venir

Mon passage à mi-temps m’a <del>forcé à</del> donné l’occasion de revoir l’organisation de mon travail. J’ai notamment remis sur pied ma liste de fonctionnalités et améliorations à venir, puis j’ai pris le temps de l’organiser. Je devrais désormais pouvoir annoncer mon travail à venir de manière plus précise… en excluant les aléas ;)

En août, j’aimerais notamment :

- permettre de modifier les commentaires ;
- permettre de réparer les liens cassés ;
- permettre de corriger les durées de lecture ;
- prévenir lorsque les liens contiennent des paramètres de tracking (ex. `utm_medium`, `utm_source`, etc.)
