---
title: S’abonner aux collections depuis l’extérieur
date: 2021-03-26 10:47
description: Il est désormais possible de suivre les collections Flus via leur flux de syndication.
illustration: images/freshrss-collection-from-flusio.png
tags: featured
---

Flus est un média social qui permet, entre autres, de créer et partager des
collections thématiques de liens. Les collections publiques peuvent être
suivies par les autres utilisateur‧ices afin d’alimenter leur journal. **Il est
désormais également possible pour les personnes extérieures au service de
suivre ces collections.**

En effet, la dernière mise à jour du service a ajouté des flux de syndication
aux collections (on parle également de flux <abbr>RSS</abbr>). Ils peuvent être
ajoutés dans un agrégateur de flux (au hasard, [Flus 1](https://flus.io/i/) 👀).

Par exemple, si on vous a partagé la collection « [Tournures inclusives, péril
mortel de la langue](https://app.flus.fr/collections/1678881149731043972) »,
mais que vous ne souhaitez pas utiliser Flus :

1. copiez son <abbr>URL</abbr> : https://app.flus.fr/collections/1678881149731043972
2. ouvrez votre agrégateur de flux préféré et collez-y l’<abbr>URL</abbr>
   (généralement ça se passe derrière un « + » (plus) au niveau de la gestion
   des abonnements)

**L’agrégateur devrait alors trouver le flux automatiquement et l’ajouter à vos
abonnements.**

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/freshrss-collection-from-flusio.png" alt="La liste des liens de la collection « Tournures inclusives, péril mortel de la langue » dans Flus 1">
    </div>

    <figcaption>
        Ça devrait ressembler à cela dans Flus 1.
    </figcaption>
</figure>

_Note : certains agrégateurs (comme Thunderbird) ne sont pas capables de
trouver les flux seuls. Il vous faudra alors ajouter manuellement
`/feed.atom.xml` à l’<abbr>URL</abbr> (en l’occurrence
https://app.flus.fr/collections/1678881149731043972/feed.atom.xml)._

Le même système est également présent pour les liens afin de suivre les
commentaires (par exemple [ce lien](https://app.flus.fr/links/1690039653528587196)).

Avec l’ajout des flux de syndication, Flus s’ouvre sur l’extérieur et propose
un premier mécanisme pour décloisonner vos données. **C’est également
l’occasion de faire un pied de nez aux services propriétaires qui se sont
transformés en silos en décidant de retirer ou cacher leurs flux ces dernières
années.**
