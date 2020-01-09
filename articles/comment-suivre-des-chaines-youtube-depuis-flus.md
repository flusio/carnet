---
title: Comment suivre des chaînes Youtube depuis Flus
date: 2020-01-09 14:58
description: Vous avez peut-être été tenté·e de vous créer un compte Google pour pouvoir vous abonner à vos chaînes favorites afin de ne rien rater. Aujourd’hui, je vous propose une alternative grâce à Flus.
---

Si comme moi vous appréciez les vidéos de vulgarisation, vous avez sans doute
constaté qu’il y en a à foison sur Youtube. Vous avez alors peut-être été
tenté·e de vous créer un compte Google pour pouvoir vous abonner à vos chaînes
favorites afin de ne rien rater.

**Aujourd’hui, je vous propose une alternative grâce à Flus.**

Il faut savoir que Youtube génère (pour le moment encore 🤞) des flux
<abbr>RSS</abbr> pour ses chaînes. Le problème est qu’ils sont cachés et donc
compliqués à trouver pour des utilisateur·ices lambda. Les <abbr>URL</abbr> de
ces flux sont de la forme :

```
https://www.youtube.com/feeds/videos.xml?channel_id=<identifiant de la chaîne>
```

ou bien :

```
https://www.youtube.com/feeds/videos.xml?user=<nom d’utilisateur>
```

L’identifiant ou le nom d’utilisateur peuvent être trouvés dans l’<abbr>URL</abbr>
de la page d’accueil de la chaîne. Par exemple, pour [la chaîne Scilabus](https://www.youtube.com/user/scilabus)
(que je recommande au passage), la page principale est la suivante :

```
https://www.youtube.com/user/scilabus
```

Il s’agit ici d’un nom d’utilisatrice, son flux <abbr>RSS</abbr> se trouve ici :

```
https://www.youtube.com/feeds/videos.xml?user=scilabus
```

Jusqu’à maintenant je me contentais de construire ces adresses à la main pour
les ajouter à Flus, mais c’était fastidieux. [Un ticket ouvert](https://github.com/FreshRSS/FreshRSS/issues/2172)
il y a un peu plus d’un an sur le _bugtracker_ de FreshRSS demandait à ce que
les <abbr>URL</abbr> des chaînes Youtube soient automatiquement transformées et
une extension était en bonne voie pour intégrer cela. Malheureusement le temps
libre des contributeurs étant ce qu’il est, le travail n’a jamais été terminé.

En retombant hier sur ce ticket, je me suis dit qu’il n’y avait pas grand-chose
à faire pour le terminer. J’ai donc retroussé mes manches et [**fini de
corriger les derniers détails**](https://github.com/kevinpapst/freshrss-youtube/pull/11).
Kevin – le mainteneur de ladite extension – a été très réactif et a intégré les
changements dans la foulée. J’ai donc pu installer son extension sur [flus.io](https://flus.io)
ce matin même.

Pour l’utiliser, rien de plus simple : si vous possédez déjà un compte, il vous
faut vous rendre sur [la page des extensions](https://flus.io/i/?c=extension)
et activer l’extension « YouTube/PeerTube Video Feed ». Elle est activée par
défaut pour les nouveaux utilisateurs et utilisatrices, vous n’aurez donc rien
à faire si vous vous [inscrivez à Flus](https://flus.io/i/?c=auth&a=register) à
partir d’aujourd’hui. La prochaine fois que vous voudrez ajouter une chaîne
Youtube, **Flus se chargera de trouver l’adresse de son flux <abbr>RSS</abbr>
tout seul.**

L’extension de Kevin permet également de regarder la plupart des vidéos
directement depuis Flus. Cependant, certaines ne peuvent être vues que depuis
Youtube, il vous faudra donc quand même vous rendre sur la plateforme.

---

_Si vous hébergez vous-même un FreshRSS, vous pouvez télécharger et installer
[l’extension « YouTube/PeerTube Video Feed »](https://github.com/kevinpapst/freshrss-youtube)._

**Edit :** on [me souffle dans l’oreille](https://github.com/FreshRSS/FreshRSS/issues/2172#issuecomment-572585498)
que le flux de certaines chaînes était détecté correctement. Ce n’est pas le
cas pour toutes les chaînes (j’ignore pourquoi), l’extension reste donc
intéressante.
