---
title: Les nouveautés de février 2021
date: 2021-03-08 11:06
description: Petit tour des améliorations apportées à Flus en février.
illustration: images/flusio-profile.png
---

Flus s’améliore de mois en mois, voici ce qui a changé au mois de février.

**La principale nouveauté est la possibilité d’importer vos liens depuis
Pocket.** Je ne reviens pas dessus ici, j’en ai déjà parlé en détail dans [cet
article](importer-depuis-pocket.html), sans compter les différentes weeknotes
rédigées durant le développement.

**Il est également désormais possible de choisir une photo de profil.** Dans
« [Profil](https://app.flus.fr/my/profile) », cliquez sur « Téléverser une
photo » (ce libellé a été approuvé par l’Académie française), puis choisissez
une image. Vous la verrez apparaître dans la barre de navigation ainsi qu’à
côté de vos commentaires.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-profile.png" alt="La page de profil de Flus, avec une photo de profil et un bouton pour en changer">
    </div>

    <figcaption>
        Il est désormais possible de choisir une photo de profil pour rendre
        l’interface un peu plus « personnelle ».
    </figcaption>
</figure>

Le concept de visibilité concernant les liens n’était pas très clair. En effet,
comme les collections, les liens peuvent être « publics » ou « privés ». Le
problème principal était de comprendre le comportement d’un lien public au sein
d’une collection privée. **On a choisi, avec Maiwann, de renommer l’option de
visibilité en « Masquer ce lien dans les collections publiques » pour clarifier
le comportement.** Comme ce paramètre influe également sur la visibilité des
commentaires, il est probable qu’on ait encore besoin de faire des ajustements.

Les liens Twitter n’étaient pas correctement pris en charge : il était
compliqué de récupérer un titre et une image d’illustration. En creusant la
question, j’ai trouvé un moyen de contourner le problème ([la solution](https://github.com/flusio/flusio/commit/037359b#diff-2bf2970324d632a14a9f57a38de3fcf1b4ff07ba2dc908cf37199ee1ad5d0c29)
pour les curieu‧ses). **Le contenu du tweet concerné est maintenant récupéré et
utilisé comme titre pour le lien.**

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-twitter.png" alt="Un lien dans Flus qui pointe vers Twitter, le titre contient le contenu du tweet.">
    </div>

    <figcaption>
        Flus récupère désormais les tweets correctement, ainsi qu’une
        illustration si elle existe.
    </figcaption>
</figure>

Lors de la mise à jour [de janvier](nouveautes-janvier-2021.html), nous avions
revu la présentation des liens. À cette occasion, nous avions enlevé le bouton
pour supprimer les liens des signets en un clic. À l’usage, cela s’est révélé
un peu ennuyant car il arrive que l’on veuille lire un article de ses signets,
sans passer par le journal, puis de vouloir le retirer. **J’ai donc introduit
une option « Marquer comme lu » dans le menu secondaire des liens, qui a pour
effet de retirer le lien des signets.**

Enfin, j’ai pris le temps de réorganiser légèrement [la documentation
technique](https://github.com/flusio/flusio#readme) du projet. Même si j’essaye
d’être aussi consciencieux que possible, certaines choses n’avaient pas été
mises à jour depuis un moment.

Ces nombreuses améliorations ont été rendues possibles grâce à vos retours et
demandes. **N’hésitez donc pas à continuer [à m’en faire](https://flus.fr/contact)
et/ou à vous inscrire sur [Flus](https://flus.fr) pour soutenir mon travail !**
