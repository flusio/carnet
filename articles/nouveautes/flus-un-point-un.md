---
title: Sortie de Flus 1.1 : taguez vos contenus
date: 2024-11-14 12:00
description: Les tags vous permettent d’explorer rapidement des liens sur une thématique donnée, puis de naviguer de thématique en thématique.
---

Deux mois après la sortie de la version 1.0 et après 4 versions correctives additionnelles, **j’ai le plaisir de vous annoncer l’arrivée des tags dans la version 1.1 de Flus.**

Comme évoqué lors de l’annonce de [la feuille de route 2025](feuille-de-route-2025.html), les tags ont vocation à améliorer l’éditorialisation de votre veille.

## Tags et sérendipité

Dans Flus, il était déjà possible d’organiser vos liens en collections thématiques.
J’ai voulu les tags comme un système alternatif et plus flexible pour créer des ponts entre les liens traitant d’une même thématique.

**Si le mot d’ordre des collections était « organisation », celui des tags serait « sérendipité[^1] ».**
En effet, les tags vous permettent d’explorer rapidement des liens sur une thématique donnée, puis de naviguer de thématique en thématique.

[^1]: L’une des définitions du Wiktionnaire pour le mot « [sérendipité](https://fr.wiktionary.org/wiki/s%C3%A9rendipit%C3%A9) » est la suivante : « Fait de trouver sur Internet (web, blog, images, forum, vidéos, etc.) une information intéressante en interrogeant un moteur de recherche sur autre chose. » Ça colle plutôt très bien !

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-tags.webp" alt="Capture d’écran de Flus montrant trois liens avec différents tags.">

    <figcaption>
        On peut retrouver tous les liens tagués de la même manière en cliquant sur un tag (ou depuis le moteur de recherche).
        Ici, les liens sont tous tagués avec le tag « écologie ».
        Il est ensuite possible de naviguer vers un autre tag comme « Lyon » ou « hérisson ».
    </figcaption>
</figure>

Les tags peuvent être ajoutés à un lien **en préfixant des mots avec le caractère croisillon (`#`) au sein des commentaires.**
Les tags ainsi ajoutés dans les commentaires sont automatiquement associés aux liens concernés.

## Recherche améliorée

Le second changement majeur de ce Flus version 1.1 est **le moteur de recherche qui a été amélioré pour l’occasion.**
En effet, il était nécessaire de le modifier pour permettre de rechercher les liens par tags.

Concernant les tags, non seulement vous pouvez rechercher un unique tag comme vu plus haut, mais vous pouvez également rechercher les liens qui possèdent un ensemble de tags.
Par exemple, la recherche « `#écologie #hérisson` » ne retournera que les liens possédant les deux tags.

Il est aussi possible d’exclure des tags d’une recherche en préfixant le tag par le signe moins (`-`).
Par exemple, « `#écologie -#hérisson` » retournera les liens avec le tag « écologie » à condition qu’ils ne soient pas aussi associés au tag « hérisson ».

## Essayer Flus 1.1

Cette version 1.1 vient encore consolider les fonctionnalités d’éditorialisation de Flus.
Si vous êtes à la recherche d’un outil pour organiser, commenter et partager les liens que vous stockez au quotidien, alors Flus est pour vous.

De nombreuses autres fonctionnalités sont déjà disponibles : agrégateur de flux Web, collections collaboratives, profil public, etc.
Je vous invite à découvrir tout ça sur le site :

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Se rendre sur flus.fr
    </a>
</p>
