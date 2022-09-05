---
title: Quoi de neuf en août ?
date: 2022-09-05 17:24
description: Résumé du mois d’août pour Flus : lutte contre les pisteurs, réparation des liens et modifications (du temps de lecture & des commentaires).
---

J’ai pas mal amélioré Flus en août. Certaines améliorations traînaient depuis un moment et c’était le bon moment de s’en occuper.

Au final, j’ai quasiment pu tout faire en une semaine de boulot. À côté, j’ai également pris quelques jours de vacances, et j’ai bossé à mi-temps en tant que salarié chez [Probesys](https://www.probesys.com/).

J’espère quand même pouvoir accorder plus de temps à Flus en septembre.

## Lutter contre les pisteurs

J’en ai déjà fait un article : Flus est désormais capable [**de détecter les paramètres-pisteurs au sein des <abbr>URL</abbr>**](luttez-contre-les-pisteurs-avec-flus.html).

Je n’ai pas voulu que cette fonctionnalité donne une fausse sensation de protection absolue : elle est imparfaite et d’autres mécanismes existent pour vous pister en ligne. Voyez plutôt ça comme un moyen de sensibilisation qui vous encourage à nettoyer vos <abbr>URL</abbr> manuellement.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-trackers-2.png" alt="Une capture d'écran d’un formulaire pour réparer un lien dans Flus. Le lien en question est un lien de redirection Facebook dont l’un des paramètres est u=https://flus.fr?fbclid=[…]. Flus indique qu’il a détecté des pisteurs dans l’URL et suggère de le remplacer directement par le lien https://flus.fr">
    </div>

    <figcaption>
        Flus détecte qu’il s’agit d’un lien de redirection de Facebook vers le site flus.fr. Il propose alors de remplacer directement l’<abbr>URL</abbr> par le site de destination.
    </figcaption>
</figure>

## Réparer les liens

La seconde fonctionnalité — directement liée à la précédente — est **la possibilité de réparer vos liens.**

Il peut arriver qu’une page, vers laquelle vous aviez créé un lien, soit déplacée. Au lieu de supprimer le lien pour le ré-ajouter avec sa nouvelle adresse, vous pourrez désormais simplement en modifier l’adresse pour le réparer.

Flus vous affiche également un badge dans le cas où il aurait été incapable d’accéder au lien, ce qui peut vous aider à savoir quels liens sont à réparer.

<figure>
    <div class="screenshot">
        <img class="illustration screenshot__image" src="images/flusio-broken-link.png" alt="Une capture d’écran d’un lien dans Flus. En haut à gauche, un badge prévient que le lien est inaccessible pour Flus.">
    </div>

    <figcaption>
        Le badge dans le coin en haut à gauche vous prévient que Flus n’a pas été en mesure d’accéder au lien. Vous pouvez cliquer dessus pour le réparer (enfin là il s’agit d’une capture d’écran, alors ne cliquez pas. Ou cliquez si ça vous chante, mais ça ne fera rien. En tout cas ça ne réparera pas le lien, ça c’est sûr).
    </figcaption>
</figure>

## Modifier le temps de lecture des liens

Vous avez peut-être remarqué que le temps de lecture des liens était souvent peu satisfaisant. Pour le calculer, Flus tente d’extraire le contenu utile du lien en question, en compte le nombre de mots et divise ce nombre par 200[^1].

[^1]: Il s’agit d’une estimation très approximative du nombre de mots lus par une personne en une minute. On trouve généralement le nombre de 300 mots par minute pour un adulte, mais [tout le monde ne semble pas d’accord](https://actualitte.com/article/12721/insolite/vous-lisez-probablement-moins-vite-que-ce-que-vous-croyez). J’ai choisi 200 en partant du principe que l’on est potentiellement moins attentif en ligne (donc que la vitesse de lecture ralentit) et qu’il valait mieux sur-estimer le temps de lecture que l’inverse.

Bien entendu, ce calcul est très limité :

- il part du principe que le « contenu utile » a bien été extrait (ça marche notamment mal avec les articles payants) ;
- il ne fonctionne qu’avec du contenu texte (et pas du tout avec des vidéos ou des fichiers audio).

Pour obvier à ces problèmes, **il est désormais possible de modifier le temps de lecture d’un lien manuellement.** Il suffit d’ouvrir son menu secondaire, puis de cliquer sur « Modifier ».

## Modifier ses commentaires

Si vous commentez vos liens, il vous est peut-être déjà arrivé d’y faire une faute, de supprimer votre commentaire et de le réécrire pour la corriger.

C’est désormais plus pratique : ouvrez le menu secondaire de votre commentaire, puis « Modifier ». **Vous pourrez alors corriger directement votre erreur.**

## Encore plus de nettoyage

Dans le [quoi de neuf de juillet](quoi-de-neuf-juillet-2022.html), je vous expliquais que j’avais pris la décision de supprimer, au sein des flux, les liens datant de plus d’un an (cela afin de diminuer le nombre de liens en base de données).

Les flux qui n’avaient rien publié sur l’année passée s’étaient alors vidés de tout leur contenu. Pour les rendre plus engageant (et ne pas donner l’impression d’un bug), Flus conserve désormais au moins 15 liens par flux.

Je pensais alors être tranquille pour quelque temps, mais j’ai découvert quelques flux particulièrement actifs (dépassant pour certains les 500 000 liens 😱). J’ai rapidement rattrapé puis dépassé la barre fatidique des 10 millions de liens en base de données. Je n’ai donc pas traîné pour ajouter un nombre maximum de liens par flux. **Ainsi, les flux seront purgés de leurs liens les plus anciens chaque nuit dès qu’ils dépasseront les 5 000 liens.**

Avec ce dernier changement, le nombre de liens s’est (enfin) stabilisé aux alentours de 4 millions depuis deux semaines, ce qui — je vous l’avoue — me rassérène pas mal. Ne boudons pas l’effet de bord positif : les performances de l’ensemble sont sensiblement meilleures !

## À venir

Au mois de septembre, j’ai décidé de me caler encore plein de petites broutilles qui traînent depuis des mois, du genre :

- alléger le poids des icônes à l’affichage ;
- permettre de retrouver l’extension navigateur facilement ;
- proposer un <i lang="en">bookmarklet</i> pour celles et ceux qui ne voudraient (ou ne pourraient) pas utiliser l’extension ;
- permettre de retrouver le tutoriel de départ ;
- etc.

J’aimerais également écrire un article pour expliquer comment partager votre veille Flus sur Mastodon (mais il pourrait être repoussé à plus tard).

Je rappelle également que j’ai publié [une roadmap](roadmap.html) il y a deux semaines. Elle vous donne les grandes lignes de ce qui suivra ensuite.

Oh ! Et je vais sans doute passer du temps pour organiser [les 10 ans de FreshRSS](https://github.com/FreshRSS/FreshRSS/discussions/4294).
