---
title: Flus 2.0 : une nouvelle extension navigateur pour une veille plus efficace
date: 2025-09-03 10:00
description: Flus sort aujourd’hui en version 2.0 avec une extension navigateur toute neuve, une interface rafraichie et une API destinée aux développeurs et développeuses.
tags: featured
---

Entre vos favoris, vos onglets et vos notes éparpillées, difficile de retrouver vos liens ou de leur donner une utilité ? Flus est une plateforme en ligne conçue pour collecter, organiser, annoter et partager vos liens favoris de manière simple et rapide. Flus s’intègre à votre écosystème d’outils existants pour compléter et éditorialiser votre veille.

**Flus sort aujourd’hui en version 2.0** avec, entre autres choses, une extension navigateur toute neuve, une interface rafraichie et une <abbr>API</abbr> destinée aux développeurs et développeuses.

C’est donc une nouvelle étape majeure franchie pour Flus, et une belle occasion pour celles et ceux qui n’étaient pas encore convaincus de redécouvrir la plateforme.

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Découvrir le site de Flus
    </a>
</p>

## 🔥 Facilitez-vous la veille : la nouvelle extension navigateur est là !

C’est la principale nouveauté qui vient répondre à de nombreuses demandes : l’extension navigateur a été remaniée, et pas qu’un peu.

L’objectif de cette refonte était de **rapprocher la phase d’[éditorialisation](editorialisation-de-contenus.html) de l’instant où vous consultez un contenu.**
C’est en effet à ce moment-là de votre veille que vous êtes le ou la plus sensible aux informations que vous souhaitez mémoriser.
Il paraissait logique — et utile ! — que l’extension navigateur vous facilite grandement cette phase de la veille.

Parmi les nouveautés, vous pourrez désormais :

- **ranger les liens dans vos collections** directement depuis l’extension ;
- **prendre des notes au fil de votre lecture** ;
- **marquer les liens comme lus ou à lire plus tard.**

Vous disposez donc désormais de toutes les fonctionnalités essentielles à portée de clic.

<ul class="list--nostyle flow text--center">
    <li><a class="button button--primary" href="https://addons.mozilla.org/fr/firefox/addon/flus/">
        Télécharger pour Firefox
    </a></li>

    <li><a class="button button--primary" href="https://chrome.google.com/webstore/detail/flus/gikjpohbbimicecbndkefebbpjobokjd">
        Télécharger pour Chrome
    </a></li>
</ul>

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus-browser.webp" alt="">

    <figcaption>
        L’extension navigateur permet bien plus de choses qu’auparavant.
        Ici, elle affiche les informations importantes d’une page du <a href="https://framablog.org/2023/12/19/emancipasso-lethique-jusquau-bout-du-numerique/">Framablog</a>, tout en permettant de ranger le lien, le marquer comme lu, ou ajouter des notes.
    </figcaption>
</figure>

Deux bonus se sont glissés dans cette version pour les utilisateurs et utilisatrices de Firefox :

- l’extension peut s’ouvrir dans le panneau latéral — très pratique pour prendre des notes en parallèle de votre lecture ;
- et celle-ci fonctionne également sur mobile[^1].

[^1]: Elle fonctionne en tout cas sur Android, j’ignore totalement si c’est le cas sur iOS. N’hésitez pas à me l’indiquer si vous êtes concerné·e.

Quelques mises à jour de l’extension sont encore prévues au fil de l’année à venir.
Par exemple, il devrait devenir possible de retrouver et suivre des flux Web directement depuis celle-ci.

## 🎨 Plus cohérente et plus soignée, l’interface se refait une beauté

Cela fait un an que j’ai revu le site de Flus ([flus.fr](https://flus.fr)) pour le rendre plus compréhensible.
Une charte graphique avait alors été créée grâce au travail d’[Elina Bufferne](https://www.linkedin.com/in/elina-bufferne/).
Le résultat final fut une identité visuelle bien plus propre et différenciante que la précédente.

Faisant suite à ce travail, **l’application repose désormais elle-même sur la même charte graphique.**
Finis les dégradés vert-violet hasardeux, place à une belle palette de nuances de verts ! 😊

<p class="text--center">
    <a class="button button--primary" href="https://app.flus.fr/registration">
        S’inscrire sur Flus
    </a>
</p>

<figure class="panel panel--rounded panel--grey">
    <img class="illustration" src="images/flus.webp" alt="">

    <figcaption>
        L’interface de Flus a été revue en nuances de verts et blanc cassé (utilisé notamment en fond à la place du dégradé vert-violet précédent).
        On peut également voir que les arrondis sont utilisés de façon plus cohérente.
    </figcaption>
</figure>

Ce travail n’est qu’un premier pas : de nombreuses améliorations sont encore à venir.
Ce rafraichissement visuel ouvre toutefois la voie à des ajouts très attendus, comme un mode sombre et la présentation des liens sous forme de listes.
Encore un peu de patience !

## 🧩 L’<abbr>API</abbr> de Flus est officiellement accessible

Les développeurs et développeuses ne seront pas en reste avec cette nouvelle version, puisqu’**une <abbr>API</abbr>[^2] leur permet maintenant d’étendre les possibilités de Flus.**
Ils et elles peuvent ainsi concevoir leurs propres applications capables d’interagir avec la plateforme.

[^2]: Une <abbr>API</abbr> fournit un accès privilégié à des applications externes.
C’est par exemple ce qui permet à l’extension navigateur d’interagir avec la plateforme Web.

Il s’agit d’une première version qui sera amené à être complétée au fil du temps.
N’hésitez pas à me remonter tout manque éventuel, je tenterai d’y répondre du mieux possible.

Si vous êtes intéressé·e, la documentation de l’API est disponible directement dans le dépôt de code, dans le dossier [`docs/api`](https://github.com/flusio/Flus/blob/main/docs/api/README.md).
Un article technique sera également publié plus tard dans le mois pour en présenter son utilisation.

## Résumé d’un an de nouveautés

En complément des nouveautés présentées ci-dessus, je voulais également vous proposer un tour d’horizon des principales évolutions survenues cette année.

Dès novembre, [les tags](flus-un-point-un.html) devenaient disponibles pour tout le monde.
**Les tags (ex. `#veille`) permettent de créer des ponts thématiques** très simplement entre différents liens, ce qui favorise l’exploration des contenus enregistrés au fil de votre veille.

En février, l’affichage de [la fréquence de publication](frequence-de-publication.html) était ajoutée aux flux et collections.
Grâce à cet affichage, **vous pouvez écarter les flux qui publient excessivement et ainsi éviter d’être saturé·e de lectures.**

En installant [Flus sur Android](flus-mobile.html), celui-ci **s’intègre avec le système de partage natif de votre téléphone,** permettant d’enregistrer rapidement un lien.
Malheureusement aux dernières nouvelles, cela ne fonctionnait qu’en passant par Chrome.
Mais si vous préférez Firefox — et vous devriez —, l’extension navigateur est désormais un bon compromis.

Enfin, c’est l’une des nouveautés de cette version 2.0 : **les commentaires se transforment en bloc-notes.**
Pas d’inquiétude, vous ne perdrez aucune donnée au passage, mais la présentation change quelque peu.
J’aurai l’occasion d’en parler plus en détails dans un article prévu pour ce vendredi.
Restez donc dans le coin 👀

## Logiciel libre, prix libre

Flus est, en son cœur, un logiciel libre.
D’autres développeurs et développeuses peuvent ainsi lire, modifier ou réutiliser [son code source.](https://github.com/flusio/Flus)
Ainsi, c’est la fiabilité de la plateforme qui s’en trouve renforcée avec des améliorations qui bénéficient à toutes et tous.

C’est aussi un marqueur de mon engagement à un service de haute qualité.
Car si n’importe qui peut réutiliser le logiciel, **ma plus-value réside dans ce qui ne peut pas être copié :** mon expertise et ma relation avec mes utilisateurs et utilisatrices.

Cette volonté de créer un service digne de confiance m’a amené à **refuser la présence de publicités ou de financements externes au sein de Flus.**
Or, le projet doit rester viable pour que vous puissiez l’utiliser sans inquiétude quant à son futur.
C’est la base du système d’abonnements à prix libre de Flus : un modèle économique pérenne et un accès ouvert à n’importe quelle bourse.

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr/tarifs">
        En savoir plus sur le prix libre
    </a>
</p>

## Les publications à venir en septembre

Qui dit _nouveautés_, dit _articles_ pour les présenter en bonne et due forme.
J’ai prévu toute une série d’articles que je publierai sur ce blog ce mois-ci.

Dès demain, je vous présenterai un tutoriel pour **apprendre à bien utiliser l’extension** au-delà des quelques fonctionnalités déjà présentées ici.

Vendredi, je reviendrai plus en longueur sur **le pourquoi et le comment du nouveau bloc-notes.**
J’y expliquerai notamment pourquoi il était important de remplacer le mécanisme de commentaires.

La semaine prochaine, je présenterai **les perspectives futures pour Flus,** en me penchant sur les nouveautés qui pourraient arriver en 2026.
Vous le verrez, il y aura encore de quoi faire !

Enfin, un article technique destiné aux développeurs et développeuses **détaillera l’usage de l’<abbr>API</abbr>.**

## Pour conclure

**Mon ambition pour la plateforme reste simple : faire de Flus un compagnon de veille agréable, qui vous aide à organiser vos liens sans prise de tête.**

La sortie de Flus 2.0 est un grand pas dans cette direction.
En particulier, la refonte de l’extension était un projet qui trainait dans les tiroirs depuis de nombreuses années et je suis ravi de l’avoir mené au bout.
Pour l’utiliser depuis plusieurs semaines déjà, elle apporte énormément de confort au quotidien.

Comme toujours, vos retours sont les bienvenus et m’aident grandement dans la définition des priorités à venir.
**N’hésitez pas non plus à parler de Flus autour de vous.
Cela a fait une grande différence au cours de l’année passée avec de plus en plus de monde qui s’intéresse à la plateforme.**

<ul class="list--nostyle flow text--center">
    <li><a class="button button--primary" href="https://flus.fr">
        Se rendre sur le site de Flus
    </a></li>

    <li><a class="button button--primary" href="https://www.linkedin.com/company/flus-fr">
        Suivre sur LinkedIn
    </a></li>

    <li><a class="button button--primary" href="https://piaille.fr/@flus">
        Suivre sur Mastodon
    </a></li>
</ul>
