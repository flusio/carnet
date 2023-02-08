---
title: Pourquoi vous devriez publier un flux Web
date: 2023-02-08 09:45
description: Quelques arguments pour publier vos flux Web.
---

Vous tenez un blog, un site d’actualité, un podcast, ou un « quoi que ce soit qui publie du contenu de manière chronologique » ?
**Alors vous devriez publier un flux Web[^1].**
Voici quelques arguments basés sur 3 objections communes.

[^1]: Par flux Web, j’entends un flux [Atom](https://fr.wikipedia.org/wiki/Atom_Syndication_Format), [<abbr>RSS</abbr>](https://fr.wikipedia.org/wiki/RSS), [<span lang="en">Json Feed</span>](https://en.wikipedia.org/wiki/JSON_Feed), ou même [au micro-format <span lang="en">h-feed</span>](http://microformats.org/wiki/h-feed).

## « Le RSS, c’est mort : personne n’utilise plus ça aujourd’hui. »

Obtenir des chiffres sur le nombre d’utilisateurs de flux Web s’avère difficile tellement il existe d’outils et de plateformes d’agrégation différentes.
On peut citer les chiffres de [14 millions pour <span lang="en">Feedly</span>](https://www.wired.com/story/rss-readers-feedly-inoreader-old-reader/) en 2018, ou [500 000 pour <span lang="en">The Old Reader</span>](https://www.nextinpact.com/article/28384/106578-the-old-reader-agregateur-flux-rss-pour-veille-entre-amis).
Ce n’est déjà pas totalement « rien », mais, globalement, on ne sait pas… dans un sens comme dans l’autre !

Surtout, si vous raisonnez en nombre d’utilisateurs, vous passez à côté de ce que sont les flux Web.
**Un flux, c’est une <abbr>API</abbr> : une porte d’accès vers votre contenu.
Il est non seulement utile pour vos lecteurs et lectrices, mais également pour vous-même.**
Vous pourrez réutiliser votre contenu facilement ailleurs, comme pour publier automatiquement vers les réseaux sociaux.
C’est l’une des formes les plus simples d’[interopérabilité](https://fr.wikipedia.org/wiki/Interop%C3%A9rabilit%C3%A9) qui puisse exister.

## « Tout le monde utilise les réseaux sociaux »

Pourquoi opposer les deux ?
Les flux Web sont des objets techniques : **vous pouvez en adapter les usages et en faire ce que vous voulez.**
Je compte prochainement en faire la démonstration en prototypant un réseau social basé sur des flux Web.

Si par « réseau social » vous pensez Twitter ou Facebook : **que se passera-t-il le jour où ces plateformes verront partir leurs utilisateurs et utilisatrices en masse[^2] ?**
Ne cherchez pas la réponse trop loin : **vous perdrez votre audience.**
Lorsque vous publiez un flux, vous maîtrisez le canal de diffusion et vous vous adressez directement à votre audience.
Vous n’avez pas envie de _dépendre d’une plateforme tierce_ pour diffuser votre contenu.

[^2]: Toute ressemblance avec des évènements récents liés à la plateforme du pioupiou bleu n’est pas totalement fortuite.

## « C’est trop compliqué et j’ai pas envie de faire du <abbr>XML</abbr> ! »

C’est vrai que les formats <abbr>RSS</abbr> et Atom reposent sur le format <abbr>XML</abbr>.
Mais il existe également le format [<span lang="en">Json Feed</span>](https://www.jsonfeed.org/) si vous préférez le Json.
Certes le support de ce dernier dans les agrégateurs est moins répandu, mais encore une fois : le principal est d’ouvrir une porte d’accès (programmatique) sur votre contenu.

**Hormis cela, générer un flux Web se fait en quelques lignes de code.
Mieux encore : une fois (correctement) mis en place, vous n’avez globalement plus besoin de vous en soucier.**

Par exemple, [le flux de ce blog](https://flus.fr/carnet/abonnement.html) est généré avec [moins de 60 lignes de code Python](https://framagit.org/marienfressinaud/boop/-/blob/main/boop/atom.py).
Les flux générés par Flus, quant à eux, tiennent dans [un fichier <i lang="en">template</i> d’une soixantaine de lignes](https://github.com/flusio/flusio/blob/main/src/views/collections/feeds/show.atom.xml.php).

Vous avez dit compliqué ?

## Par où commencer

Le plus compliqué, c’est de faire le premier pas.

Si vous hésitez sur le format à adopter, je préconise le format Atom qui est mieux spécifié ([<abbr>RFC</abbr> 4287](https://www.ietf.org/rfc/rfc4287)) et plus puissant que les autres.
Si vous préférez le Json, alors vous pouvez préférer <span lang="en">Json Feed</span>.

Si la lecture de la <abbr>RFC</abbr> vous donne des boutons, rassurez-vous : vous n’êtes pas seul‧e.
Commencez alors par lire la page Wikipédia ([anglaise](https://en.wikipedia.org/wiki/Atom_(web_standard)) de préférence, mais la [française](https://fr.wikipedia.org/wiki/Atom_Syndication_Format) est ok aussi).
Ça devrait vous donner un aperçu suffisant du format pour publier un flux.
Vous pouvez également vous baser sur le code mentionné plus haut dans cet article.

Ensuite, n’oubliez pas de publier votre flux pour que les agrégateurs puissent le découvrir.
J’avais écrit [un article là-dessus](declarez-vos-flux.html) il y a quelque temps.

**Enfin, n’hésitez pas à me le faire savoir [sur Mastodon](https://pouet.chapril.org/@flus), ou via [le formulaire de contact](https://flus.fr/contact).**