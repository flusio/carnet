---
title: Luttez contre les pisteurs avec Flus
date: 2022-08-13 09:58
description: Flus vous permet désormais de retirer facilement les pisteurs de vos liens.
illustration: images/flusio-trackers-2.png
tags: featured
---

Lorsque vous naviguez sur Internet, il est fréquent que vous retrouviez dans vos <abbr>URL</abbr> des paramètres du type `utm_campaign=…`, ou encore `fbclid=…`. Ces paramètres servent à vous pister : ils sont par exemple utilisés par les services marketing pour savoir d’où vous venez (de Twitter ? de la newsletter ? etc.) S’il ne fait pas de doute que ces informations peuvent être utiles aux gérants des sites, **cela se fait en général au détriment de votre vie privée.**

Si vous n’y prêtez pas attention, ces paramètres-pisteurs peuvent se retrouver dans les liens que vous stockez dans Flus. Les personnes avec qui vous partagez peuvent alors se retrouver pistées par ricochet. **C’est pourquoi Flus vous prévient désormais lorsqu’il détecte des pisteurs dans un lien.**

<figure class="panel panel--rounded panel--grey text--center">
    <img class="illustration" src="images/flusio-trackers-1.png" alt="Une capture d’écran d’un lien dans Flus. Le titre du lien (et son URL) contient un paramètre utm_source. En haut à gauche, un badge prévient qu’un pisteur a été détecté dans l’URL.">

    <figcaption>
        Le nouveau badge dans le coin en haut à gauche vous prévient lorsque des pisteurs ont été détectés dans un lien.
    </figcaption>
</figure>

Cet avertissement s’accompagne d’une nouvelle fonctionnalité : la réparation des liens. Il s’agit d’une nouvelle option disponible afin de modifier l’<abbr>URL</abbr> d’un lien. Cela est particulièrement pratique pour réparer les liens cassés (dans le cas d’une page qui aurait été déplacée par exemple). **Ce nouveau formulaire vous prévient également s’il a détecté des pisteurs et vous suggère une version nettoyée.**

<figure class="panel panel--rounded panel--grey text--center">
    <img class="illustration" src="images/flusio-trackers-2.png" alt="Une capture d'écran d’un formulaire pour réparer un lien dans Flus. Le lien en question est un lien de redirection Facebook dont l’un des paramètres est u=https://flus.fr?fbclid=[…]. Flus indique qu’il a détecté des pisteurs dans l’URL et suggère de le remplacer directement par le lien https://flus.fr">

    <figcaption>
        Ici, Flus détecte qu’il s’agit d’un lien de redirection de Facebook vers le site flus.fr. Il propose alors de remplacer directement l’<abbr>URL</abbr> par le site de destination (vous n’avez certainement pas besoin de faire savoir à Facebook que vous venez ici !)
    </figcaption>
</figure>

Bien entendu, ne vous attendez pas à devenir subitement invisible sur Internet en nettoyant vos liens. Ce mécanisme est nécessairement imparfait et ne peut pas lutter contre les techniques toujours plus complexes de pistage en ligne. **Voyez plutôt cela comme une mesure d’hygiène et de pédagogie numérique.**

Pour les plus curieux et curieuses, j’ai utilisé le fichier de règles établies par l’extension navigateur [ClearURLs](https://clearurls.xyz/). Cette extension permet de retirer les pisteurs pendant que vous naviguez. En réutilisant ces règles, Flus bénéficie du travail d’une communauté déjà établie. En échange, je pourrai contribuer à mon tour pour corriger d’éventuels faux-négatifs par exemple.
