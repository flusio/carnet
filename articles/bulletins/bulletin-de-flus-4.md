---
title: Bulletin de Flus n°4
date: 2026-04-30 09:30
description: Au programme de ce bulletin : une mise à jour de Flus, les fils de veille qui se dessinent doucement, la mise à jour des serveurs, la relecture de ses notes, l’histoire interne de Google Reader, et une nouvelle application pour Surf-er l’actualité.
---

Bienvenue dans ce — déjà — quatrième bulletin de Flus 👋
Ce mois d’avril aura été assez dense de mon côté ; beaucoup de choses sont en train d’avancer et se structurer, pour le meilleur !

**Au programme de ce bulletin :** une mise à jour de Flus, les fils de veille qui se dessinent doucement, la mise à jour des serveurs, la relecture de ses notes, l’histoire interne de Google Reader, et une nouvelle application pour _Surf_-er l’actualité.
Eh oui, c’est une belle édition bien complète !

<p class="panel panel--grey panel--rounded">
    Pour rappel, Flus est une plateforme de veille en ligne conçue pour collecter, organiser, annoter et partager vos liens favoris de manière simple et rapide. Elle s’intègre à votre écosystème d’outils existants pour compléter et éditorialiser votre veille.
</p>

## Les coulisses techniques

### Flus 2.4

J’ai sorti une nouvelle version de Flus le 22 avril.
Cette version apporte principalement des améliorations du côté des profils publics :

- les liens et les collections disposent d’espaces dédiés, permettant d’accéder à l’ensemble des liens partagés par une personne ;
- les liens peuvent être filtrés par tags, ce qui vous permet d’explorer la veille des autres utilisateurices autrement que par les collections ;
- les profils disposent d’une description, utile pour se présenter et présenter vos pratiques de veille ;
- des boutons pour copier le lien vers le profil et son flux Web ont été ajoutés.

Si vous avez activé les fonctionnalités bêta, vous pourrez également découvrir deux nouveautés dans les préférences : la possibilité de changer la taille du texte, et l’ajout d’un mode sombre.
Ces fonctionnalités devraient faire leur apparition officielle dans la prochaine mise à jour.

### Les fils de veille

En parallèle de cette version, j’ai enfin attaqué la prochaine fonctionnalité majeure de Flus : les fils de veille.
Il s’agira de pouvoir grouper et traiter les flux Web par catégories.
Ça sera assez proche des catégories des autres agrégateurs standards, mais avec quelques options en plus, notamment des filtres (temporels, par flux, lus/non lus/à lire).
Idéalement, j’aimerais que l’on puisse partager ces fils publiquement et sous forme de fichiers OPML.
Je n’en suis encore qu’à une phase de spécifications et de prototypage, mais mes premiers tests sont plutôt encourageants.

### Mise à jour des serveurs

J’ai mis à jour les deux serveurs faisant tourner Flus, son site et les services annexes vers la dernière version de Debian.
Je préparais ces mises à jour depuis quelque temps déjà, et tout s’est bien passé (hormis peut-être la base de données qui a pris plus de temps que prévu pour se mettre à jour).

Pour rappel, les annonces de maintenance importantes sont faites sur le site [status.flus.fr](https://status.flus.fr).
Vous êtes abonnés au flux de ce site par défaut si vous utilisez Flus.

## Sur le radar

### [Relire mes carnets : une tentative de ritualisation](https://lalunemauve.fr/revisiter-carnets-rythme/)

Un article très pertinent sur _La Lune Mauve_ concernant la relecture de ses propres notes afin de construire de nouvelles idées à partir de celles-ci.
L’article n’est pas directement orienté « veille », mais bon nombre de réflexions feront écho aux pratiques des personnes qui font de la veille active.
De plus, l’article contient beaucoup de liens tout aussi intéressants pour prolonger la réflexion.

> « À mes yeux, un livre, ou même un simple article de presse, n’est pas terminé une fois publié : il attend qu’on le cite ou qu’on l’exhume à propos, et surtout qu’on le mette en relation avec d’autres, afin de faire jaillir de nouvelles étincelles de sens […] »  
> — _La tyrannie de la réalité_ de Mona Chollet

### [Who killed Google Reader?](https://www.theverge.com/23778253/google-reader-death-2013-rss-social)

Un article (en anglais) passionnant qui retrace la vie en interne de Google Reader, agrégateur de flux Web qui a marqué son époque, et reste encore aujourd’hui la référence.

Il est surprenant de découvrir que Google Reader n’a jamais véritablement été apprécié en interne.
Le produit a été rapidement limité à un « agrégateur de flux <abbr>RSS</abbr> », alors que l’équipe qui bossait dessus rêvait de quelque chose de bien plus large et générique.
Même le nom « Reader » était le moins apprécié de la liste d’idées qu’ils avaient.

Traduction personnelle d’un extrait :

> Cela fait une décennie que Reader a été mis hors-ligne, et nombre de celles et ceux qui ont contribué à sa création se questionnent encore. Que se serait-il passé s’ils s’étaient concentrés sur la croissance ou les revenues et avaient vraiment tenté de le faire passer à l’échelle de Google ? Que se serait-il passé s’ils avaient redoublé d’efforts pour prendre en charge davantage de types de médias, devenant plus rapidement le lecteur / la visionneuse de photos / le portail YouTube / l’application de podcasts qu’ils avaient imaginé ? Que se serait-il passé s’ils avaient convaincu Mayer et les autres dirigeants que Reader n’était pas une menace pour les projets de réseaux sociaux de Google, mais qu’il pouvait au contraire être ce projet ? Que se serait-il passé s’il ne s’était pas appelé Reader et n’avait pas été présenté comme un agrégateur de flux RSS destiné aux utilisateurs expérimentés ?

### [Surf](https://surf.social/)

Surf est une application mobile (et maintenant Web) qui permet de regrouper les posts issus de flux RSS, ATProto (ex. Bluesky), Activity Pub (ex. Mastodon), etc. en un seul fil d’actualité.

J’avais essayé sur téléphone il y a quelques mois, sans trouver l’utilisation simple ni même adapté à mon usage, mais :

1. il y a de bonnes idées (comme créer un flux alimenté par plusieurs sources, ou encore la partie découverte) ;
2. il y a eu plusieurs mises à jour depuis et ça semble un peu mieux.

Je suis content qu’il existe encore ce genre d’initiatives qui donnent l’occasion de touiller les idées et de remettre en question ce que l’on prend comme acquis dans les agrégateurs de flux.

## Les évènements

Comme annoncé précédemment, Flus sera présent lors des [JdLL](https://jdll.org), **les 30 et 31 mai prochains à Lyon.** Je suis en train de finaliser le matériel de stand, qui devrait donc être prêt d’ici là. Ce sera mon premier stand avec ma casquette Flus, n’hésitez donc pas à passer pour discuter et découvrir en avant-première les prochaines évolutions de Flus !

J’étais aussi personnellement présent lors de [MiXiT](https://mixitconf.org/) à Lyon les 16 et 17 avril derniers.
Je n’y allais pas spécialement au nom de Flus, mais j’ai eu l’occasion malgré tout d’en parler à droite à gauche.
Je suis très content des échanges que j’ai eus et des conférences auxquelles j’ai assisté lors de cet évènement.

## Le récap’ des publications

### Sur le blog

J’ai publié une nouvelle « technique de veille » pour apprendre à trouver le flux <abbr>RSS</abbr> d’un site.
Ce n’est pas toujours évident, mais vous trouverez les flux quasiment à coup sûr avec ces méthodes… à condition qu’ils existent !

**Lire « [Technique de veille : trouver des flux RSS](technique-de-veille-trouver-des-flux-rss.html) ».**

La sortie de la mise à jour de Flus évoquée plus haut s’est accompagné de son article, à retrouver sur le blog.

**Lire « [Amélioration des tags et des profils : explorez la veille des autres utilisateurices de Flus](amelioration-des-tags-et-des-profils.html) ».**

### Sur les réseaux

En plus de ce blog, je publie également sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr), n’hésitez pas à m’y suivre).
Je repartage ici de manière plus pérenne les publications notables du mois que vous auriez pu manquer.

### L’info geek du jour 🤓

Flus doit synchroniser près de 10 000 flux par jour, la plupart toutes les heures ! Ça fait beaucoup là, non?

Au total, ce sont 100 000 requêtes HTTP qui sont faites chaque jour pour synchroniser les flux. Donc oui, ça fait beaucoup !

Plusieurs techniques sont mises en œuvre pour optimiser tout ça :

- 5 tâches tournent en tâche de fond et se répartissent les flux à synchroniser.  
- Flus prend en compte du mieux qu’il peut les instructions de mise en cache. Si le serveur distant indique que le flux ne changera pas pendant les 6 prochaines heures, Flus ne le synchronisera pas avant.  
- La fréquence de synchronisation des flux se fait en fonction de la fréquence de publication : moins un flux publie, moins souvent il sera synchronisé (mais toujours au moins une fois toutes les 24h).  
- Du ménage est fait tous les jours pour supprimer les flux qui ne sont suivis par personne.
