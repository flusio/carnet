---
title: Les nouveautés de janvier 2021
date: 2021-01-27 15:10
description: Petit tour des améliorations apportées à Flus en janvier.
illustration: images/flusio-structure.png
---

**J’ai travaillé ces derniers jours sur un lot de correctifs pour Flus : ils
sont en production depuis ce matin. Je vous explique ici les principales
améliorations.**

Le changement qui pourrait perturber vos habitudes concernent le paradigme
autour des liens. Auparavant, lorsque vous vous trouviez dans une collection et
que vous vouliez vous rendre sur le site pointé par un lien, il fallait passer
par une page intermédiaire. Ce comportement était très perturbant et incohérent
avec celui du journal. **Désormais, les comportements sont homogènes : en
cliquant sur le titre ou sur « lire », le lien s’ouvre directement vers le
site.** Les actions (modification du titre ou des collections) ont été
déplacées, tandis que les commentaires ont désormais leur page dédiée.

<div class="screenshot">
    <img class="illustration screenshot__image" src="images/flusio-link.png" alt="Capture d’écran de la carte d’un lien avec les nouvelles actions.">
</div>

**Le deuxième changement apporte un poil d’esthétique, mais surtout un
éclaircissement de la structure des pages.** Sur ordinateur, j’ai en effet
ajouté un fond légèrement dégradé et un liseré autour du contenu. Cela ajoute
de la couleur à Flus et ça permet de mieux visualiser ce qui relève du contenu.
Les boutons de « retour » ont été remontés tandis que les boutons de
modification ont été rendus plus visibles (beaucoup ne les voyaient pas). Les
boutons d’ajout de lien et de création de collections ont été bougés dans les
cartes, améliorant leur intégration.

<div class="screenshot">
    <img class="illustration screenshot__image" src="images/flusio-structure.png" alt="Capture d’écran d’une collection nouvelle version.">
</div>

**Le troisième changement d’importance est la mise en lumière de la provenance
des liens du journal.** La raison pour laquelle un lien nous était proposé
n’était pas toujours claire. Une information « via […] » est maintenant
clairement affichée. Il est également possible d’accéder aux commentaires de la
personne ayant ajouté le lien. Je publierai dans les prochains jours un article
pour expliquer encore mieux le fonctionnement du journal.

<div class="screenshot">
    <img class="illustration screenshot__image" src="images/flusio-via.png" alt="Capture d’écran de deux liens affichant « via vos signets » et « via » une collection.">
</div>

Ensuite, la page de « découverte » des collections publiques n’avaient
bénéficié que de peu d’attention et cela se sentait. 25 collections étaient
auparavant choisies aléatoirement à chaque chargement de la page, rendant cette
liste imprévisible et donc perturbante. **J’ai changé ce comportement en
ordonnant les collections par ordre alphabétique et en ajoutant de la
pagination**, permettant ainsi de naviguer et voir toutes les collections.

**Enfin, j’ai ajouté la possibilité de supprimer les commentaires.** Cela pourrait
être utile si vous publiez un commentaire en double, ou si vous souhaitez
corriger une faute d’orthographe (le mécanisme de modification n’est pas encore
prévu).

Je pourrais aussi parler de l’ajout d’un « [webmanifest](https://developer.mozilla.org/fr/docs/Web/Manifest) »,
mais je garde ça pour un article à part afin de bien expliquer son intérêt. Si
vous utilisez Flus sur mobile, cela pourrait en tout cas vous intéresser.

Ces nombreuses améliorations (et bien d’autres !) ont été rendues possibles
grâce à vos retours. Je suis vraiment très heureux de ces changements positifs
qui rendent Flus encore plus mature. **N’hésitez donc pas à continuer [à m’en
faire](https://flus.fr/contact) et/ou à vous inscrire sur [Flus](https://flus.fr)
pour soutenir mon travail !**
