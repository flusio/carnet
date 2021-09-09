---
title: Les nouveautés de mars 2021
date: 2021-03-30 11:26
description: Résumé des améliorations apportées à Flus en mars.
illustration: images/flusio-collection-shared.png
---

Depuis son ouverture en décembre, je continue d’améliorer Flus. Durant le mois
de mars, j’ai travaillé principalement sur des éléments techniques « sous le
capot ». Il y a donc peu de choses visibles.

Les deux principaux ajouts **concernent l’ouverture de Flus vers l’extérieur :**

- les collections et la page de commentaires des liens génèrent maintenant un
  flux de syndication, j’en ai parlé [dans cet article](abonner-collections-depuis-exterieur.html) ;
- des tags OpenGraph permettent d’améliorer la présentation des collections que
  vous partagez sur les plateformes qui les supportent.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-collection-shared.png" alt="Capture d’écran d’un tweet proposant aux personnes découvrant Flus de faire un tour sur la collection « Premiers pas avec Flus »">
    </div>

    <figcaption>
        Les collections partagées sur Twitter disposent désormais d’un encart
        affichant leur titre.
    </figcaption>
</figure>

Sur un plan plus secondaire, **j’ai apporté des améliorations au système
[d’importation depuis Pocket](importer-depuis-pocket.html) :**

- l’ordre de vos liens est désormais conservé ([contactez-moi](https://flus.fr/contact)
  si vous souhaitez réimporter vos liens) ;
- il est explicitement déconseillé d’importer vos tags comme des collections si
  vous en avez beaucoup (ça risque de pourrir quelque peu l’affichage de vos
  collections) ;
- les collections « Liens Pocket » et « Favoris Pocket » ne sont plus créées si
  aucun lien n’est placé dedans.

**Un paragraphe a été ajouté lors de l’inscription pour indiquer que le service
est payant.** Cela devrait permettre d’éviter qu’une personne arrivant
directement sur cette page soit surprise de découvrir qu’il faut payer au bout
d’un mois.

Enfin, sur le plan « correctif de bugs », **des liens étaient mal récupérés
et certains caractères de leurs titres étaient mal affichés.** Il s’agissait
d’un problème bien connu d’encodage. Malheureusement l’encodage est une science
compliquée, il est possible que d’autres correctifs soient nécessaires.

Ces améliorations ont été rendues possibles grâce à vos retours et à mes
observations de vos usages. **N’hésitez donc pas à continuer [à m’en
faire](https://flus.fr/contact) et/ou à [vous inscrire sur
Flus](https://flus.fr/) pour soutenir mon travail.**
