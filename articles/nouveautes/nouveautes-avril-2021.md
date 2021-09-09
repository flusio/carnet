---
title: Les nouveautés d’avril 2021
date: 2021-05-04 12:12
description: Résumé des améliorations apportées à Flus en avril.
---

**Chaque mois, on prend le temps de faire le tour des nouveautés que j’ai
apportées à Flus.** Le mois d’avril, aussi dense fut-il pour moi, n’est pas
très visuel. Comme le mois précédent, beaucoup de choses se sont passées en
« coulisses » afin de préparer l’annonce prévue pour juin. Cet article est par
conséquent très textuel… _à moins que ?_

Les deux principales modifications concernent l’expérience utilisateurice :

- **la page d’ajout d’un lien a été repensée** et son accès par le menu est
  plus évident (j’en ai parlé [dans la weeknote #26](weeknotes-26.html)) ;
- lors de l’ajout d’un lien au sein d’une collection, **vous restez désormais
  sur la page de la collection au lieu d’être redirigé vers la page des
  commentaires**, permettant d’ajouter facilement plusieurs liens à la suite.

D’autres changements plus discrets ont également fait leur apparition.

D’un point de vue technique, les icônes ne sont plus affichées de la même
manière. Auparavant, elles étaient chargées après que l’interface soit
affichée. **Sur les connexions lentes, l’interface pouvait ainsi être
inutilisable pendant quelques secondes.** Elles sont désormais directement
intégrées dans le <abbr>HTML</abbr> et il n’y a donc plus de latence.

Flus essaye désormais de récupérer les liens en erreur. C’est-à-dire que
s’il n’a pas réussi à récupérer les informations concernant un lien la
première fois, il va continuer de contacter l’<abbr>URL</abbr> en question
pendant quelque temps. **Cela permet de mieux gérer les sites qui sont
temporairement en erreur.**

Un en-tête <abbr>HTTP</abbr> est maintenant envoyé **pour indiquer au
navigateur Chrome de ne pas vous pister.** Si vous voulez en savoir plus, je
vous invite à lire le Framablog : « [Développeurs, développeuses, nettoyez le
Web !](https://framablog.org/2021/04/20/developpeurs-developpeuses-nettoyez-le-web/) »

L’image par défaut qui apparaît au-dessus des liens qui ne possèdent pas
d’illustration a été modifiée par une image avec plus de couleurs. Le but était
de l’homogénéiser avec une autre image qui fera très bientôt son apparition 👀

Un bug a été corrigé : un même lien pouvait apparaître plusieurs fois au
sein d’une collection. Il survenait principalement pour les personnes ayant
importé leurs liens depuis Pocket avant les améliorations [de mars](nouveautes-mars-2021.html).

Enfin, pour conclure cet article, je voulais vous partager cette capture
d’écran. Elle devrait vous donner un indice sur ce qui arrivera en juin et ce
sur quoi je bosse depuis mars 😉

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-search-2.png" alt="Capture d’écran de la page « Nouveau lien » avec le champs URL rempli, une prévisualisation du lien et… un flux à suivre ?">
    </div>

    <figcaption>
        Peut-être aimeriez-vous « suivre » ce carnet depuis Flus ?
    </figcaption>
</figure>
