---
title: Quoi de neuf en novembre
date: 2021-11-25 15:57
description: Résumé du mois de novembre pour Flus : performances, des réglages pour les flux et un journal qui passe mieux sur mobile.
illustration: images/flusio-time-filters.png
---

_Le début de mois a été un peu compliqué niveau travail, je me suis donc permis une pause d’une semaine afin de me reposer. Je me suis rattrapé durant la deuxième quinzaine avec de chouettes ajouts à Flus._

## Du travail de fond (bis)

Je vous le disais déjà le mois dernier, j’ai passé du temps pour améliorer les performances de Flus. Rebelote ce mois-ci : quelques index par-ci, du nettoyage de données par-là, et du bichonnage de base de données tout du long. 30 secondes pour supprimer un lien, c’était un peu trop :)

Si vous aviez créé un compte sur Flus il y a plus de 6 mois **sans le valider**, celui-ci aura été supprimé automatiquement (conformément à mes <abbr>CGU</abbr> ; vous [les avez lues](https://app.flus.fr/terms) n’est-ce pas ?) Dans l’idéal j’aimerais encore améliorer le système afin de supprimer les comptes inactifs, mais cela demandera en revanche de notifier les personnes au préalable. C’est donc plus de travail et je ne suis pas prêt à m’y atteler dans l’immédiat.

## Des réglages plus fins pour les flux

Jusqu’à maintenant, le journal ne remontait que 3 jours en arrière pour récupérer les liens de vos flux suivis. En général, cela fonctionne bien, mais les flux publiant beaucoup pouvaient encore être pénibles, tandis que vous pouviez manquer des publications que vous ne vouliez pas rater.

Vous avez désormais la possibilité de configurer, pour chaque flux suivi, le niveau de filtre parmi : strict (max 24h), normal (max 3 jours, par défaut) et tout (vous recevrez toutes les nouvelles publications).

Je compte écrire un article dédié pour vous présenter la fonctionnalité, restez dans le coin !

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-time-filters.png" alt="Capture d'écran d'un menu permettant de modifier le filtre de réception (strict, normal ou tout recevoir) des liens d’un flux">
    </div>

    <figcaption>
        Ce menu est accessible pour chaque flux que vous suivez en cliquant sur « Actions → Régler pour le journal ».
    </figcaption>
</figure>

## Un journal mieux adapté aux mobiles

Sur mobile, les trois boutons pour remplir le journal pouvaient prendre beaucoup de place. D’ailleurs, vous ne voyiez probablement que le premier bouton sans scroller. C’était un problème pour les nouveaux et nouvelles venues puisqu’elles n’étaient pas forcément au courant de la présence des différents boutons.

J’ai donc revu la présentation de ces boutons pour qu’ils prennent moins de place (150 pixels en moins par bouton, c’est pas rien !) Le journal devrait ainsi être plus accueillant.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-news-7.png" alt="Capture d'écran du journal affichant les boutons « dernières publications » et « 3 liens de moins de 10 minutes », avec leur illustration sur la gauche.">
    </div>

    <figcaption>
        Les illustrations ont été réduites et placées sur la gauche des boutons pour afficher plus de choses à l’écran.
    </figcaption>
</figure>

## Du très très chouette en approche

Au mois de septembre, avec [Maiwann](https://maiwann.net), nous avons mené des interviews avec quelques personnes rencontrant des problèmes lors de l’ajout de flux. On a maquetté des idées pour rendre l’interface plus claire et on a validé tout ça lundi. Il ne me reste plus qu’à développer ces changements relativement importants. Avec un peu de chance, ce sera prêt pour décembre, mais nous prendrons tout de même le temps de valider que la nouvelle interface fonctionne mieux que la précédente :).
