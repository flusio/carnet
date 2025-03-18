---
title: Quoi de neuf en mars ?
date: 2025-03-27 09:00
description: Ce mois-ci : la poursuite de la migration du serveur de mails et le début des travaux concernant l’amélioration de l’extension navigateur.
---

Je publie chaque mois un article pour résumer mon activité mensuelle.
Ce mois-ci : la poursuite de la migration du serveur de mails et le début des travaux concernant l’amélioration de l’extension navigateur.

Pour rappel, [Flus](https://flus.fr) est un outil de veille en ligne permettant de collecter, ranger, commenter et partager des liens.
Il vous accompagne dans l’éditorialisation de votre veille.

## Améliorations de l’extension navigateur

Comme annoncé en septembre dernier dans [ma feuille de route 2025](feuille-de-route-2025.html), **je souhaite améliorer grandement l’extension navigateur pour permettre de nouvelles possibilités de veille avec elle.**
Aujourd’hui, elle permet uniquement de marquer des liens pour les lire plus tard.
Ça a le mérite d’exister, mais que diriez-vous d’aussi pouvoir ranger les liens dans vos collections, ou ajouter des notes directement depuis l’extension ?

Le premier travail, assez urgent, a consisté à migrer l’extension vers le « Manifest v3 ».
Le Manifest, c’est un standard pour que les extensions fonctionnent de la même manière quel que soit le navigateur[^1].
Les extensions utilisant l’ancienne version du Manifest ne seront bientôt plus fonctionnelles sur Chrome ; il était donc grand temps que je m’occupe de cette mise à jour.
**La version 0.9 qui est sortie récemment assure donc que l’extension continuera de fonctionner sur Chrome durant les mois à venir.**

[^1]: En théorie, parce qu’en pratique il faut quand même jongler un peu pour adapter l’extension aux spécificités des navigateurs.
C’est aussi le Manifest V3 qui fait que vous ne pouvez plus bloquer les pubs correctement sur Chrome. L’occasion de changer de navigateur ?

Une fois cela fait, **je me suis attelé à réaliser des maquettes de la future version de l’extension.**
Il est encore un peu tôt pour vous les partager, mais si vous avez du temps pour me faire des retours, **on peut se prévoir un créneau pour échanger ensemble dessus !**
N’hésitez pas à [me contacter](https://flus.fr/contact).

Il faudra encore attendre quelques mois avant de voir cette nouvelle extension arriver, mais en attendant vous pouvez la retrouver :

- sur [le store de Firefox](https://addons.mozilla.org/fr/firefox/addon/flus/) ;
- et [le store de Chrome.](https://chromewebstore.google.com/detail/flus/gikjpohbbimicecbndkefebbpjobokjd?hl=fr)

## Poursuite des opérations de migration du serveur de mails

Entamée le mois dernier afin de ne plus avoir à gérer mon propre serveur de mails (et donc moins tomber dans les spams de mes destinataires), la migration de mes mails s’est poursuivie en mars.

**J’ai franchi une étape majeure ce mois-ci en migrant mon adresse personnelle vers Infomaniak.**
Cette étape était nécessaire avant de m’attaquer aux adresses professionnelles, car je souhaitais tester et éprouver le service avant.
Tout s’est fait de manière fluide, et cela m’a permis de mettre en place une procédure pour éviter quelques erreurs.

Il me reste encore à organiser pas mal de choses (notamment concernant l’adresse email de support — j’aurai l’occasion d’en reparler), mais j’espère avoir terminé fin avril / début mai.

**C’est en tout cas un vrai soulagement de voir le bout de ce tunnel et de pouvoir envisager de me consacrer à d’autres tâches qui apporteront plus de valeur aux utilisateurs et utilisatrices du service !**

## Si vous l’avez raté

J’ai publié ce mois-ci un article pour présenter **deux astuces concernant le moteur de recherche de Flus : la recherche par tag et la recherche par <abbr>URL</abbr>.**
En rédigeant l’article, je me suis d’ailleurs rendu compte qu’il était possible de rechercher par extension d’<abbr>URL</abbr>, ce qui peut permettre de retrouver des liens vers des fichiers <abbr>PDF</abbr> par exemple.
Comme quoi, j’en apprends moi-même sur l’outil que je développe !

Vous pouvez lire l’article ici : « [Retrouvez n’importe quel lien avec la recherche avancée de Flus](https://flus.fr/carnet/retrouvez-n-importe-quel-lien-avec-la-recherche-avancee.html) ».

## Le saviez-vous ?

_Chaque mois, je partage sur les réseaux sociaux ([Mastodon](https://piaille.fr/@flus) et [LinkedIn](https://www.linkedin.com/company/flus-fr)) une astuce pour utiliser Flus.
Je profite de ces articles mensuels pour les repartager sur le blog._

Le saviez-vous ?
Vous disposez d’un profil public dans Flus vous permettant de partager facilement autour de vous un point d’entrée vers votre veille.

Pour y accéder, ouvrez le menu utilisateur en cliquant sur votre avatar, puis « Profil ».
Vous n’avez plus qu’à copier l’URL de cette page.

Vous y retrouverez les derniers liens que vous avez partagés ainsi que l’ensemble de vos collections publiques.

Plus d’informations dans cet article de 2022 : [Votre profil Flus](https://flus.fr/carnet/votre-profil-flus.html).

## Conclusion

Le début de l’année 2025 est passé à toute vitesse et je cours un peu après le temps.
Heureusement, j’arrive à avancer sur les objectifs que je me suis fixés.
L’extension navigateur était le sujet qui m’inquiétait le plus car comportant beaucoup de paramètres inconnus.
Je suis toutefois bien rassuré d’avoir fait des maquettes ; j’ai hâte de vous les présenter (et encore plus qu’elles prennent vie !)

Si je cours après le temps, c’est aussi que je travaille sur Flus à mi-temps.
**La bonne nouvelle, c’est que les chiffres sont en hausse depuis septembre, ce qui montre un intérêt croissant pour le projet.**
Les personnes qui en parlent autour d’elles font clairement une différence, et je vous en remercie encore !

<p class="text--center">
    <a class="button button--primary" href="https://flus.fr">
        Accéder au site de Flus
    </a>
</p>
