---
title: Quoi de neuf en septembre ?
date: 2022-10-03 16:21
description: Résumé du mois de septembre pour Flus : amélioration de l’interface des liens, nombre de liens dans les collections, pagination des signets et réorganisation du menu utilisateur.
---

Au mois de septembre, j’ai pu faire tout ce que j’avais prévu dans mon [quoi de neuf d’août](quoi-de-neuf-aout-2022.html), et bien plus encore !

Si vous n’avez pas encore essayé les changements que je vous présente ci-dessous, je vous invite fortement à les tester dès maintenant : l’expérience utilisateur est bien meilleure qu’avant !

## Amélioration de l’interface des liens

Les changements les plus notables concernent sans doute les liens. Si vous avez utilisé Flus récemment, vous avez dû être accueilli par une fenêtre d’information vous résumant les principales modifications.

### Les boutons d’actions

Tout d’abord, **les actions ont été réorganisées** pour être d’une part plus pratiques et, d’autre part, plus cohérentes d’un écran à un autre. Vous pouvez notamment marquer un lien comme lu, ou le placer dans vos signets en un seul clic. C’est particulièrement pratique dans le journal !

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-link-actions.webp" alt="Les 4 boutons d’actions d’un lien : le plus à gauche ouvre un menu secondaire, ensuite les boutons permettent de marquer comme lu, placer dans les signets, ou ranger dans les collections">
    </div>

    <figcaption>
        La nouvelle organisation des boutons permet de retrouver ses petits plus facilement. Le menu secondaire notamment ne change plus de comportement dans le journal.
    </figcaption>
</figure>

À noter que j’ai dû virer l’action « Lire » qui prenait trop de place. Mais pas de panique : vous pouvez toujours cliquer sur le titre ou l’image d’illustration pour ouvrir le lien !

### Le défilement

Ensuite, j’ai modifié le comportement du défilement de la page lorsque vous agissez sur les liens. Jusqu’à maintenant, lorsque vous marquiez un lien comme lu par exemple, le défilement de la page était remis tout en haut. **Désormais, la page reste au même endroit, ce qui vous permet d’agir rapidement sur des liens qui se suivent.** Ça change totalement la vie sur mobile.

### Sur mobile

**En parlant de mobile, j’ai optimisé la place prise par les liens.** Les images notamment sont placées sur la gauche des titres plutôt qu’au-dessus. Je trouve ce mode « compact » tellement agréable que je pense d’ailleurs le proposer également sur PC, en option.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-mobile-2.webp" alt="3 liens affichés sur mobile : une illustration carrée se trouve à gauche et le titre et les infos complémentaires à droite.">
    </div>

    <figcaption>
        Les illustrations prennent beaucoup moins de place, ce qui permet d’afficher plusieurs liens à la fois sur mobile.
    </figcaption>
</figure>

## Affichage du nombre de liens dans chaque collection

Dans la catégorie « les petits ajouts qui font du bien », **le nombre de liens des collections est affiché juste au-dessus de la liste des liens.** Cela permet de savoir rapidement que vous avez beaucoup trop de liens dans vos signets :)

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-number-links.webp" alt="Un petit libellé indique « 5 liens » dans une collection, juste au-dessus de la liste des liens.">
    </div>

    <figcaption>
        Plus besoin de compter le nombre de pages multiplié par 30 auquel j’ajoute 6 et duquel je soustrais l’âge du capitaine.
    </figcaption>
</figure>

## Pagination des signets

En parlant de signets, ceux-ci sont désormais paginés comme les autres collections. La logique initiale pour ne pas les paginer était d’encourager à les vider… mais ils étaient de fait inutilisables pour les personnes avec de très (trop) nombreux signets (importés depuis Pocket par exemple).

## Réorganisation du menu utilisateur

J’ai revu le menu utilisateur (celui qui s’ouvre quand vous cliquez sur votre avatar). Une entrée « extensions » a fait son apparition pour accéder à l’extension navigateur, un « _bookmarklet_ » (pour celles et ceux qui ne voudraient ou pourraient pas installer l’extension), et ajouter un mot sur l’utilisation de Flus sur mobile (inutile de demander une application !)

L’entrée « Support », quant à elle, a été renommée en « Aide & support » et permet également d’accéder à la page « À propos » et à l’introduction de Flus (i.e. les quelques écrans de présentation quand vous vous inscrivez).

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-user-menu.webp" alt="Le nouveau menu utilisateur : Profil, Compte & données, Identifiants & sécurité, Extensions, Aide & support, Se déconnecter">
    </div>

    <figcaption>
        Le menu a également été légèrement élargi pour l’aérer un peu plus. D’autres changements sont à prévoir rapidement 👀
    </figcaption>
</figure>

## Divers améliorations

Quelques améliorations en vrac supplémentaires :

- le visuel des éléments qui ont le focus a été homogénéisé à travers toute l’application ;
- la taille des pages a été réduite en réduisant la taille prise par les icônes <abbr>SVG</abbr> (qui ne sont plus intégrés directement dans le corps de la page mais déclarés dans un fichier à part) ;
- Flus gère un peu mieux les flux <abbr>RSS</abbr> invalides (ceux déclarant un mauvais encodage et ceux déclarant leur date de publication dans une balise `dc:date`).

Et tout un tas d’autres choses à trouver dans les notes complètes de versions [0.50](https://github.com/flusio/flusio/releases/tag/v0.50) et [0.51](https://github.com/flusio/flusio/releases/tag/v0.51) (en anglais).

## À venir

J’ai encore beaucoup de choses prévues pour le mois d’octobre, notamment :

- **revoir le sélecteur de collections pour le rendre plus pratique ;**
- proposer un mode « compact » sur <abbr>PC</abbr> pour les liens, basé sur l’affichage mobile ;
- convertir toutes les images au format WebP, plus efficace et léger que le <abbr>JPEG</abbr> ou le <abbr>PNG</abbr> ;
- et d’autres bidules.

À côté de ça, je vais bosser sur [les 10 ans de FreshRSS](https://github.com/FreshRSS/FreshRSS/discussions/4667), mais je vous en reparle très vite ! :)
