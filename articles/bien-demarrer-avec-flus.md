---
title: Bien démarrer avec Flus
date: 2019-12-05 18:15
description: Alors ça y est, vous venez de vous inscrire sur Flus suite à mon dernier article ? Vous voici donc devant un écran bien vide. Vous vous demandez peut-être par où commencer pour utiliser ce nouveau service au mieux ? Cet article est là pour vous mettre le pied à l’étrier.
---

Alors ça y est, vous venez de vous inscrire sur Flus suite [à mon dernier
article](ouverture.html) ? Je vous souhaite la bienvenue et vous adresse un
grand merci pour votre confiance ! Vous voici donc devant un écran bien vide,
ou tout au mieux avec quelques articles venant de ce « [carnet de flus](https://flus.io/carnet) ».
Vous vous demandez peut-être par où commencer pour utiliser ce nouveau service
au mieux ? **Cet article est là pour vous mettre le pied à l’étrier.**

<figure>
    <img alt="Capture d’écran de la page principale de Flus" src="images/flus-main-page.png" />
    <figcaption>Il n’y a pas grand-chose à lire par défaut…</figcaption>
</figure>

## Première étape : listez les sites que vous avez l’habitude de lire

Le principe de Flus est d’agréger l’actualité des sites sur lesquels vous vous
rendez en un seul et unique endroit. Les articles publiés par ces sites seront
tous visibles à la suite les uns des autres dans Flus.

Vous avez peut-être l’habitude de vous rendre sur un certain nombre de journaux
en ligne. Sans préjuger de la qualité ni du contenu de ces journaux, certains
des plus connus sont par exemple Le Figaro, Le Monde, L’Obs et L’Express. Bien
entendu, la liste ne s’arrête pas là et je vous invite fortement à varier vos
sources pour profiter de différents points de vue.

Vous allez peut-être également régulièrement sur des sites et blogs liés à une
ou plusieurs de vos passions : sport, cuisine, culture ou encore politique ; la
liste peut être longue. Listez tous ces sites, par exemple en les notant sur un
papier dans un premier temps. Les podcasts sont également de très bons
candidats pour votre liste !

## Deuxième étape : ajoutez les sites dans Flus

Une fois votre liste faite, rendez-vous sur [flus.io](https://flus.io),
connectez-vous et cliquez sur le bouton « Gestion des abonnements ». Ici, vous
verrez des catégories (une seule au début, mais vous pouvez en créer autant que
vous voulez). Tout en haut se trouve un champ permettant d’ajouter un flux
<abbr>RSS</abbr> ; c’est lui qui nous intéresse ici.

Contrairement à ce qu’il pourrait laisser penser, vous pouvez la plupart du
temps **ajouter directement l’<abbr>URL</abbr> des sites qui vous intéressent**
(celle dans la barre tout en haut de votre navigateur). Flus est en effet
capable de trouver le flux <abbr>RSS</abbr> associé à condition que le site
soit correctement configuré.

Vous n’avez plus qu’à aller sur chacun des sites que vous avez listés lors de
la précédente étape, copier-coller leur adresse dans le champ « Ajouter un flux
RSS » et valider en cliquant sur le bouton « + ». Si tout se passe bien, vous
devriez voir apparaître un panneau permettant de configurer la source. Vous
pouvez le fermer pour l’instant en cliquant à l’extérieur, et passer au site
suivant dans votre liste. En cas d’erreur, pas de panique, c’est l’objet des
parties suivantes.

<figure>
    <img alt="Capture d’écran de la page de configuration d’une source" src="images/flus-subscription.png" />
    <figcaption>
        Le panneau de configuration est très complet, mais vous aurez rarement
        besoin d’y toucher. Contentez-vous de cliquer dans la zone à gauche
        pour le fermer.
    </figcaption>
</figure>

## Troisième étape : trouvez les flux des sites mal configurés

Lors de vos tentatives d’ajouts, il y a de fortes chances que Flus vous ait
indiqué qu’il n’était pas capable d’ajouter certains sites. Cela signifie soit
qu’ils sont mal configurés (il va falloir trouver les adresses des flux), soit
qu’ils ne possèdent pas du tout de flux <abbr>RSS</abbr>.

La première chose à faire est de rechercher sur le site concerné : il est
possible qu’il y ait un lien quelque part indiquant où trouver le flux
<abbr>RSS</abbr>. Si vous ne trouvez pas de lien en un clin d’œil, vous pouvez
utiliser la fonction « Rechercher » de votre navigateur Internet
(le fameux raccourci <kbd>ctrl</kbd> + <kbd>f</kbd>). Si vraiment rien n’y
fait, recherchez dans votre moteur de recherche préféré le nom du site, suivi
du terme « RSS ». Si une telle page existe, elle devrait apparaître. Si tel
n’est pas le cas alors je suis désolé, mais je ne peux pas y faire
grand-chose ! 😞 Dans le doute, vous pouvez toujours essayer de contacter les
personnes gérant le site.

Dans certains cas, les sites peuvent proposer plusieurs flux <abbr>RSS</abbr>
différents, organisés par thème (c’est souvent le cas pour les journaux en
ligne). C’est à vous de choisir en fonction de vos goûts. Cela peut être
pratique pour ne pas être bombardé par de nombreux articles chaque jour.

Une fois l’<abbr>URL</abbr> du flux <abbr>RSS</abbr> en votre possession, vous
n’avez plus qu’à l’ajouter dans Flus, comme précédemment.

## Quatrième étape : corrigez ou remontez les dernières erreurs

Malgré vos tentatives, certains flux peuvent être récalcitrants et Flus
refusera de les prendre en compte. C’est le cas de quelques sites mal
configurés. Il est parfois possible de les ajouter en rajoutant à la fin de
l’<abbr>URL</abbr> la chaîne `#force_feed`. Ce qui donne par exemple :

```
https://flus.io/carnet/feeds/all.atom.xml#force_feed
```

Il faut néanmoins attendre un petit peu après une tentative échouée – de
l’ordre des 15 ou 30 minutes – afin que le cache se vide (ce sera sans doute
amélioré un de ces jours).

Si rien n’y fait, alors vous pouvez au choix :

- m’écrire [sur le support](mailto:support@flus.io) en m’indiquant les sites qui ne
  fonctionnent pas, j’essayerai d’investiguer de mon côté ;
- vérifier que le flux est valide en le testant sur [le site du <abbr>W3C</abbr>](https://validator.w3.org/feed/) ;
- si vous êtes un peu plus aventureux, ouvrir [un ticket sur le gestionnaire de
  bugs de FreshRSS](https://github.com/FreshRSS/FreshRSS/issues).

Sachez tout de même qu’il y a de très fortes chances que le problème vienne du
site en face.

## Dernière étape : profitez

Lorsque vous aurez terminé d’ajouter tous les sites qui vous intéressent, vous
n’aurez plus qu’une chose à faire : lire !

Dans un premier temps, la liste des articles non lus risque d’être très longue
et je vous recommande de tous les marquer comme lus dans un premier temps. Si
vous souhaitez en lire certains plus tard, n’hésitez pas à les ajouter à vos
favoris (la petite étoile à gauche) : ils s’ajouteront dans le menu « Favoris »
à gauche et vous pourrez ainsi les retrouver plus facilement.

Enfin, vous n’aurez plus qu’à revenir régulièrement sur [flus.io](https://flus.io)
pour lire les articles qui auront été publiés par les différents sites que vous
suivez. Vous n’avez désormais plus besoin de naviguer de site en site et vous
ne raterez plus aucun article important : **tout se passe dans Flus
maintenant !**

---

_Si vous trouvez tout cela fastidieux, je serai ravi d’avoir vos retours,
[écrivez-moi !](mailto:marien@flus.io)<br />
En prenant un abonnement à Flus, vous m’aidez à vivre de mon travail et m’encouragez à améliorer un logiciel libre et communautaire : [FreshRSS](https://freshrss.org)._
